use sakila;

select distinct last_name from actor GROUP BY last_name HAVING COUNT(*) = 1;

select last_name from actor GROUP BY last_name  HAVING COUNT(*) > 1;

select staff_id, COUNT(rental_id) as rental_count FROM rental GROUP BY staff_id;

SELECT release_year, COUNT(*) as release_count FROM film GROUP BY release_year;

SELECT rating, COUNT(*) AS film_count FROM film GROUP BY rating;

SELECT rating, ROUND(AVG(length), 2) AS average_length FROM film GROUP BY rating;

SELECT rating, AVG(length) AS average_duration FROM film GROUP BY rating HAVING average_duration > 120;  
