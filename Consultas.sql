
-- Nuevo Customers
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date, last_update) 
VALUES (1, 'Juan', 'Perez', 'juan@example.com', 5, 1, NOW(), NOW());

-- Actualizar Customers
UPDATE customer 
SET store_id=0, first_name='', last_name='', email='', address_id=0, last_update=now(), active=0
WHERE customer_id = 600;

-- Eliminar Customer
DELETE FROM customer 
WHERE customer_id = 600;



-- Insertar Staff
INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture) 
VALUES ('Juan', 'Perez', 100, 'juan@example.com', 1, 1, 'juanperez', '1234', NOW(), 'img.png');

-- Actualizar Staff
UPDATE staff
SET first_name='', last_name='', address_id=0, email='', store_id=0, active=true, username='', "password"='', last_update=now(), picture=?
WHERE staff_id=100;

-- Eliminar Staff
DELETE FROM staff 
WHERE staff_id = 100;



-- Añadir actor
INSERT INTO actor (first_name, last_name, last_update) 
VALUES ('Robert', 'Downey', NOW());

-- Actualizar actor
UPDATE actor 
SET last_name = 'Downey Jr.', last_update = NOW()
WHERE actor_id = 1;

-- Eliminar actor
DELETE FROM actor 
WHERE actor_id = 1;



-- Lista de Rental
SELECT 
    rental.rental_id,
    rental.rental_date,
    rental.return_date,
    customer.first_name,
    customer.last_name,
    customer.email
FROM 
    rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE 
    EXTRACT(YEAR FROM rental.rental_date) = 2005 
    AND EXTRACT(MONTH FROM rental.rental_date) = 05;



-- Lista de Payment
SELECT 
    payment_id AS Numero,
    payment_date AS Fecha,
    amount AS Total
FROM 
    payment;



-- Lista de Films
SELECT 
    film_id,
    title,
    release_year,
    rental_rate
FROM 
    film
WHERE 
    release_year = 2006 AND rental_rate > 4.0;
