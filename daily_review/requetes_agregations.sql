use sakila;
# afficher le nombre de films dans les quels à joué l'acteurs"JOHNNY LOLLOBRIGIDA", regroupé par catégorie.

select * from rental;

select title, name ,first_name, last_name, count(title) as nbre_film from actor 
inner join film_actor on actor.actor_id=film_actor.actor_id
inner join film on film_actor.film_id=film.film_id
inner join film_category on film.film_id=film_category.film_id
inner join category on film_category.category_id=category.category_id
where first_name='JOHNNY' AND last_name='LOLLOBRIGIDA'
group by name, title;

# Ecrire la requête qui affiche les catégories dans les quels « JOHNNY LOLLOBRIGIDA » totalise plus de 3 films.

select name , count(name) as nbre_category from actor 
inner join film_actor on actor.actor_id=film_actor.actor_id
inner join film on film_actor.film_id=film.film_id
inner join film_category on film.film_id=film_category.film_id
inner join category on film_category.category_id=category.category_id
where first_name='JOHNNY' AND last_name='LOLLOBRIGIDA'
group by name
having count(name)>3;

# Afficher la durée moyenne d'emprunt des films par acteurs.


select avg(datediff(return_date, rental_date)) as moyenne, first_name, last_name from rental
inner join inventory on rental.inventory_id=inventory.inventory_id
inner join film_actor on inventory.film_id=film_actor.film_id
inner join actor on film_actor.actor_id=actor.actor_id
group by first_name, last_name;


# L'argent total dépensé au vidéos club par chaque clients, classé par ordre décroissant.

select * from customer;
select * from payment;
select * from sales_by_store;
select * from customer;
select * from rental;
select * from store;
select * from film;

select first_name, last_name, sum(amount)as total from payment
inner join customer on  payment.customer_id=customer.customer_id
group by first_name, last_name 
order by sum(amount) desc;






