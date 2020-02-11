use sakila;

show tables;
select * from customer;
select * from address;
select * from city;
select * from rental;
select * from inventory;
select * from store;
select * from film;
select * from film_category;
select * from category; 
select * from language;
select * from actor;
select * from film_actor;
# 1 afficher tous les emprunt ayant été réalisé en 2006, le mois doit etre affiché en lettre et le resultat doit etre affiché dans une seul colonne.
select case month(rental_date)
	when 1 then 'Janvier'
    when 2 then 'Février'
	when 3 then 'Mars'
    when 4 then 'Avril'
    when 5 then 'Mai'
    when 6 then 'Juin'
    when 7 then 'Juillet'
    when 8 then 'Aout'
    when 9 then 'Septembre'
    when 10 then 'Octobre'
    when 11 then 'Novembre'
    else 'Décembre'
end from rental where year(rental_date) = 2006;

# 2 afficher la colonne qui donne la durée de location des films en jours.
select datediff(return_date, rental_date) from rental;

# 3 afficher les emprunts réalisés avant 1 h du matin en 2005, afficher la date dans un format lisible.
select rental_date from rental where year(rental_date)=2005 and hour(rental_date)<01;

# 4 afficher les emprunts réalisés entre le mois d'Avril et Mai, la liste doit etre triée du plus ancien au plus récent.
select rental_date from rental where month(rental_date) between 04 and 05 order by rental_date;

# 5 lister les films dont le nom ne commence pas par le "Le".
select * from film where title not like 'Le%';

# 6 lister les film ayant la mention "PG-13" ou "NC-17", ajouter une colonne qui affichera "oui" si "NC-17" et "non" si "PG-13"
select rating, case(rating)
	when 'PG-13' then 'non'
    when 'NC-17' then 'oui'
end from film where rating='PG-13' or rating='NC-17'; 

# 7 fournir la liste des categories qui commence par A ou C (utiliser left).
select name from category where left(name,1)='A' or left(name,1)='C';

# 8 lister les 3 premiers caractères des noms de catégories
select left(name,3) from category;

# 9 lister les premiers acteurs en remplaçant dans leurs prénoms les E par des A.
select first_name,replace(first_name, 'E','A') from actor;


#~~~JOINTURES~~~

# 1 lister les 10 premiers film et leur langue.
select title, name from film inner join language on film.language_id=language.language_id limit 10;

# 2 afficher les films dont les quel a joué "JENNIFER DAVIS" sortie en 2006.
select title, release_year,first_name,last_name from
	film inner join film_actor on film.film_id=film_actor.film_id
    inner join actor on film_actor.actor_id=actor.actor_id
    where release_year = 2006 and first_name='JENNIFER' AND last_name='DAVIS';
    
# 3 afficher les noms des client ayant empruntés "ALABAMA DEVIL"
select first_name, last_name, title from 
	film left join inventory on film.film_id=inventory.film_id
    left join rental on inventory.inventory_id=rental.inventory_id
    left join customer on rental.customer_id=customer.customer_id
    where title = 'ALABAMA DEVIL';
    
# 4 afficher les films loués par des personnes habitant à "Woodridge", vérifier s'il y a des films qui n'ont jamais été empruntés.
select title, city from 
	city inner join address on city.city_id=address.city_id
    inner join customer on address.address_id=customer.address_id
    inner join rental on customer.customer_id=rental.customer_id
    inner join inventory on rental.inventory_id=inventory.inventory_id
    inner join film on inventory.film_id=film.film_id
    where city like 'Woodridge';
select * from city where city = 'Woodridge';
select title from film where rental_duration=0;

# 5 quels sont les 10 films dont la durée d'emprunt a été la plus courte
select distinct title, datediff(return_date, rental_date) as durée_location from
	film left join inventory on film.film_id=inventory.film_id
    left join rental on inventory.inventory_id= rental.inventory_id
order by durée_location  limit 10;

# 6 lister les films de la catégorie "Action"  ordonné par ordre alphabétique
select title, name from
	film inner join film_category on film.film_id=film_category.film_id
    inner join category on film_category.category_id=category.category_id
    where name ='Action' order by title;
    
# 7 quels sont les films dont la durée d'emprunt a été inferieur à 2 jours
select title, datediff(return_date,rental_date) as duree_location from 
	film inner join inventory on film.film_id=inventory.film_id
    left join rental on inventory.inventory_id= rental.inventory_id
    where duree_location <=2;
	
	

select datediff(return_date,rental_date) as duree_location from rental where datediff(return_date, rental_date) between 0 and 3 order by datediff(return_date,rental_date);






