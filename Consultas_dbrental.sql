--Selecciona las columnas film_id y title de la tabla film.

select film_id, title 
from film

---Selecciona filas de la tabla film donde film_id sea menor que 4.

select *
from film
where film_id < 4 ;

--Selecciona filas de la tabla film donde el rating sea PG o G.
select *
from film
where rating = 'PG' 

--Selecciona filas de la tabla actor donde el nombre sea Angela, Angelina o Audrey usando IN.
select *
from actor
WHERE first_name in ('Angela','Angelina','Audrey')

--Obtén una lista de actores con el nombre Julia

select *
from actor
WHERE first_name = 'Julia'

--Obtén una lista de actores con los nombres Chris, Cameron o Cuba.


select *
from actor
WHERE first_name in ('Chris','Cameron','Cuba')


--Selecciona la fila de la tabla customer para el cliente con el nombre Jamie Rice.


select *
from customer
WHERE first_name = 'Jamie' and  last_name = 'Rice'

--Selecciona el monto y la fecha de pago de la tabla payment donde el monto pagado sea menor a $1.

select amount, payment_date
from payment
WHERE amount < 1

--¿Cuáles son las diferentes duraciones de alquiler permitidas por la tienda?

select * from rental;


--Ordena las filas en la tabla city por country_id y luego por city.

select * from city
order by city asc;

select * from city
order by country_id asc;

---¿Cuáles son los ID de los últimos 3 clientes que devolvieron un alquiler?


select * from city
order by city asc;

--¿Cuántas películas tienen clasificación NC-17? ¿Cuántas tienen clasificación PG o PG-13?


select count(rating),  rating
from film
where  rating in ('NC-17','PG','PG-13')
group by rating;




---¿Cuántos clientes diferentes tienen registros en la tabla rental?

SELECT COUNT(DISTINCT customer_id) 
FROM rental;

--¿Hay algún cliente con el mismo apellido?
select last_name, COUNT(*)  as Apellidos_Repetidos
from customer
group by last_name
HAVING COUNT(*) > 1;


--¿Qué película (id) tiene la mayor cantidad de actores?
select  film_id, COUNT (actor_id) as cantidad_actores
FROM FILM_ACTOR
group by film_id
order by cantidad_actores DESC
LIMIT 1;


--¿Qué actor (id) aparece en la mayor cantidad de películas?
select  actor_id, COUNT (film_id) as cantidad_peliculas
FROM FILM_ACTOR
group by actor_id
order by cantidad_peliculas DESC
LIMIT 1;



--Cuenta el número de ciudades para cada country_id en la tabla city. Ordena los resultados por count(*).
select country_id, count (city_id) as numero_ciudades
from city 
group by country_id 
order by numero_ciudades asc


--¿Cuál es la tarifa de alquiler promedio de las películas? ¿Puedes redondear el resultado a 2 decimales?

SELECT  ROUND(AVG(rental_rate), 2) AS promedio
from film


--Selecciona los 10 actores que tienen los nombres más largos (nombre y apellido combinados).

SELECT actor_id, CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM actor
ORDER BY LENGTH(CONCAT(first_name, ' ', last_name)) DESC
LIMIT 10;



















