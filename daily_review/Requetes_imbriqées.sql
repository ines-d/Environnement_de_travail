use sakila;
# Avec une requête imbriquée sélectionner tout les acteurs ayant joués dans les films ou a joué « MCCONAUGHEY CARY ».


select last_name, first_name from actor 
inner join film_actor on actor.actor_id = film_actor.actor_id
where film_id in ( select film_id from film_actor WHERE actor_id =77)
group by last_name, first_name
order by last_name, first_name;


#Afficher tout les acteurs n’ayant pas joués dans les films ou a joué « MCCONAUGHEY CARY ».

select last_name, first_name from actor 
inner join film_actor on actor.actor_id = film_actor.actor_id
where film_id not in ( select film_id from film_actor WHERE actor_id =77) # id =77 c'est celui de "MCCONAUGHEY CARY"
group by last_name, first_name
order by last_name, first_name;

# Afficher Uniquement le nom du film qui contient le plus d'acteur et le nombre d'acteurs associé sans utiliser LIMIT (2 niveaux de sous requêtes).




# Afficher les acteurs ayant joué uniquement dans des films d’actions (Utiliser EXISTS).

select last_name, first_name, category.name from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film_category on film_actor.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
and category.name = 'Action'
where not exists 
	(select last_name, first_name, category.name from actor
	inner join film_actor on actor.actor_id = film_actor.actor_id
	inner join film_category on film_actor.film_id = film_category.film_id
	inner join category on film_category.category_id = category.category_id);
