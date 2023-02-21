
### Lab | SQL Queries 2
### 1. Select all the actors with the first name ‘Scarlett’.

SELECT * from actor
WHERE first_name = "SCARLETT";

### 2. Select all the actors with the last name ‘Johansson’.

SELECT * from actor
WHERE last_name = "Johansson";

### 3. How many films (movies) are available for rent?
 SELECT COUNT(DISTINCT inventory_id)
 FROM inventory;
 
 ### 4. How many films have been rented?
 
 SELECT COUNT(distinct inventory_id)
 FROM rental;
 
 ### 5. What is the shortest and longest rental period?
 
 SELECT MIN(rental_duration), MAX(rental_duration)
 FROM film;
 
### 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT MIN(length) as min_duration, MAX(length) as max_duration
FROM film;

### 7. What's the average movie duration?

SELECT AVG(length) as average_movie_duration
FROM film;

### 8. What's the average movie duration expressed in format (hours, minutes)?

SELECT CONCAT(FLOOR(AVG(length)/60), 'hours', MOD(ROUND(AVG(length)), 60), 'minutes') AS average_duration
FROM Film;

SELECT SEC_TO_TIME(AVG(length*60)) AS HOURS_MINS_SECONDS
FROM film;


### 9. How many movies longer than 3 hours?

SELECT (COUNT(length)) FROM film
WHERE length > 180;

### 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT email 
FROM customer
LIMIT 10;

SELECT first_name, last_name
FROM customer
LIMIT 10;

SELECT LOWER(email)
FROM customer;

SELECT 	LOWER(first_name), UPPER(last_name)
FROM customer;
 
 
### 11. What's the length of the longest film title?

SELECT (MAX(LENGTH)) FROM film;









 



 
 
 
 

