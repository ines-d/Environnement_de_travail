use sakila;

#les acteurs qui ont joués dans 19 film
select * from actor;
select * from film_actor;
select first_name, last_name, count(*) as nbre_film from actor
inner join film_actor on actor.actor_id=film_actor.actor_id
group by first_name,last_name
having count(*)=19;


#l'acteur que l'on trouve dans le plus de film
with act_count as 
(
	select first_name, last_name from actor
	inner join film_actor on actor.actor_id=film_actor.actor_id
	group by first_name,last_name
)
select * from act_count;
where not exists
(

)
;
WITH ACT_COUNT AS
(
    SELECT
    A.FIRST_NAME
    ,A.LAST_NAME 
    ,COUNT(*) NB_FILM
    FROM ACTOR A
    INNER JOIN FILM_ACTOR FA ON FA.ACTOR_ID = A.ACTOR_ID
    GROUP BY
    A.FIRST_NAME
    ,A.LAST_NAME
)
SELECT * 
FROM ACT_COUNT A
;
# la même querstion mais sans utiliser le with
# la liste des films qui n'ont jamais été loués
select * from rental;
select * from inventory;
select * from film;
select title from film
left join inventory on film.film_id=inventory.film_id
left join rental on inventory.inventory_id=rental.inventory_id
where rental_id is null;

# 2ème methode
select title from film
where not exists
(
 select 1 # comme pour 1 c'est true
 from inventory 
 left join rental on inventory.inventory_id=rental.inventory_id
 where film.film_id=inventory.film_id
);
# 3ème methode
select title from film
where film.film_id not in 
(
 select film.film_id
 from film
 left join inventory on film.film_id=inventory.film_id
 left join rental on inventory.inventory_id=rental.inventory_id
);

# 4 ème methode
select title from film 
minus   # la première requete moins la deuxième requete, on peu le remplacer par not exists
select title
from film
inner join inventory on film.film_id=inventory.film_id
inner join rental on inventory.inventory_id=rental.inventory_id
where film.film_id=inventory.film_id
;

# le temps moyen de restitution d'un film
select * from rental;
select * from film;
select avg(datediff(return_date, rental_date)) as temps_moyen from rental;

# temps moyen de restitution d'un film par client classement du plus long au plus court

select first_name, last_name, avg(datediff(return_date, rental_date)) as temps_moyen from rental
inner join customer on rental.customer_id=customer.customer_id
group by first_name, last_name
order by temps_moyen desc; # on peut mettre le chiffre 3 la place de temps_moyen 'c'est à dire la 3ème colonne

# la même question avec une condition > que 5 en temps moyen on note bien sinon pas bien
select first_name, last_name, avg(datediff(return_date, rental_date)) as temps_moyen,
case 
	when (avg(datediff(return_date, rental_date)))> 5 then 'bien'
	else 'pas bien'
end as observation
from rental
inner join customer on rental.customer_id=customer.customer_id
group by first_name, last_name
order by temps_moyen desc;

# la meme question condition > avg(datdiff())
select first_name, last_name, avg(datediff(return_date, rental_date)) as temps_moyen,
case 
	when (avg(datediff(return_date, rental_date)))> (select avg(datediff(return_date, rental_date)) as temps_moyen from rental) then 'bien'
	else 'pas bien'
end as observation
from rental
inner join customer on rental.customer_id=customer.customer_id
group by first_name, last_name
order by temps_moyen desc

# l'acteur preferé de chaque client.
select customer_id, actor.first_name, actor.last_name, customer.first_name, customer.last_name,count(*) as nbre_film
from  customer
inner join from rental on customer.customer_id=rental.customer_id
inner join from inventory on rental.inventory_id=inventory.inventory_id
inner join from film on inventory.film_id=film.film_id
inner join from film_actor on film.film_id=film_actor.film_id
inner join from actor on film_actor.actor_id=actor.actor_id
group by first_name, last_name
order by nbre_film; 

# 2ème methode
select customer_id
,first_name
,last_name
#, customer.first_name
#, customer.last_name 
,count(*) as nbre_film
from  customer
inner join from rental on customer.customer_id=rental.customer_id
inner join from inventory on rental.inventory_id=inventory.inventory_id
inner join from film on inventory.film_id=film.film_id
inner join from film_actor on film.film_id=film_actor.film_id
inner join from actor on film_actor.actor_id=actor.actor_id
group by first_name, last_name
order by nbre_film;









