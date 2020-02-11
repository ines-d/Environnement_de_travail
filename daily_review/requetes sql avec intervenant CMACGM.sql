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




