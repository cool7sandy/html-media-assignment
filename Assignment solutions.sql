use mavenmovies;
describe actor; -- actor_id is the primary key and last_name is foreign key
describe actor_award; -- actor_award_id - primary key and last_name is foreign key
describe address;-- address_id - Primary key and city_id - foreign key
describe advisor; -- advisor_id - Primary key , no foreign key
describe category; -- category_id - Primary key , no foreign key
describe city; -- city_id is primary key , country_id foreign key
describe country; -- country_id is primary key , no foreign key
describe customer; -- cutomer_id - Primary key and store_id, last_name,address_id are foreign key
describe film; -- film_id is primary key and title,language_id, original_language_id are foreign key
describe film_actor; -- actor_id and film_id are primary keys(one can be consider and other will become candidate key)
describe film_category; -- category_id and film_id are primary keys(one can be consider and other will become candidate key)
describe film_text; -- film_id is primary key and title is foreign key
describe inventory; -- inventory_id is primary key and film_id, store_id are foreign key
describe investor; -- inventory_id is primary key, no foreign key
describe language; -- language_id is primary key, no foreign key
describe payment; -- payment_id is primary key and customer_id,staff_id,rental_id are foreign key
describe rental; -- rental_id is primary key and rental_date , inventory_id , customer_id , staff_id are foreign key
describe staff; -- staff id is primary key and address_id , store_id are the foreign key
describe store; -- store-id is primary key and address_id is foreign key

-- diffrence b/w primary and foreign key = 
-- primary key is a unique value in the whole table from which we can extract the whole data related to that value where as foreign key is the primary key to anothe table which is linked or used as reference in current working table.
   
-- Q. List all the details of actor;
   select * from actor;

-- Q. List all the customer information from DB
select* from customer;

-- Q. List different countries;
select * from country;

-- Q. Display all active customer;
select * from customer;
select * from customer where active = 1;

-- Q. List of all rental iDs for customer ID 1
select * from rental;
select rental_id, customer_id from rental where customer_id = 1;

-- Display all the films whose rental duration is greater than 5 .
select*from film;
select*from film where rental_duration>5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film;
select * from film where replacement_cost between 15 and 20;
-- or
select * from film where replacement_cost>15 and replacement_cost<20;

-- Find the number of films whose rental rate is less than $1.
select film_id, rental_rate from film where rental_rate<1;

 -- Display the count of unique first names of actors.
 select*from actor;
 select count(distinct(first_name)) from actor;
   
-- Display the first 10 records from the customer table .
Select*from customer;
select*from customer where customer_id limit 10;

-- Display the first 3 records from the customer table whose first name starts with ‘b’.
select*from customer;
select* from customer where first_name like 'b%' limit 3;

 -- Display the names of the first 5 movies which are rated as ‘G’.
 select*from film;
 select title ,rating from film where rating='G' limit 5;
 
 -- Find all customers whose first name starts with "a".
 select*from customer;
 select * from customer where first_name like 'a%';
 
 -- Find all customers whose first name ends with "a".
  select*from customer;
 select * from customer where first_name like '%a';
 
 -- Display the list of first 4 cities which start and end with ‘a’ .
 select * from city;
 select*from city where city like 'a%a' limit 4;
 
 -- Find all customers whose first name have "NI" in any position.
   select*from customer;
 select * from customer where first_name like '%NI%';
 
 -- Find all customers whose first name have "r" in the second position . 
 select*from customer;
 select * from customer where first_name like '_r%';
 
 
 -- Find all customers whose first name starts with "a" and are at least 5 characters in length.
select*from customer;
 select * from customer where first_name like 'a%' and length(first_name)>=5;
 
-- Find all customers whose first name starts with "a" and ends with "o". 
select*from customer;
 select * from customer where first_name like 'a%e';
 
 -- Get the films with pg and pg-13 rating using IN operator.

 select*from film;
 select title ,rating from film where rating in('PG' , 'PG-13');
 
 -- Get the films with length between 50 to 100 using between operator.
 select* from film;
 select * from film where length between 50 and 100;
 
 -- Get the top 50 actors using limit operator.
 select *from actor;
 select *from actor limit 50;
 
 -- Get the distinct film ids from inventory table.
 select*from inventory;
 select distinct(film_id) from inventory;
  select count(distinct(film_id)) from inventory;