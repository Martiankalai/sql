-- 1. Basic SQL Syntax (10 points): (5 marks)

-- Write a SQL SELECT statement to retrieve all columns from a table named "customers". 
-- How can you filter rows in a SELECT statement using a WHERE clause? Provide an example. 
-- Write a SQL statement to sort the results of a SELECT query by a specific column in descending order. 
-- What operator can be used to combine multiple conditions in a WHERE clause? 
-- Give an example of an alias used for a table name in a SELECT statement.

select * from customer_table;
select * from customer_table 
where customer_zip=22801;
select * from customer_table 
order by customer_id;
select * from customer_table 
where customer_zip=22801 and customer_id=1;
select * from customer_table;


-- 2-This scenario involves creating a database for a library management system, populating it with data, and performing various operations using SQL queries.(10 marks)

-- 1. Database and Table Creation:

-- Write SQL statements to achieve the following:

-- Create a database named library.
-- Inside the library database, create a table named books with the following columns:
-- book_id (INTEGER, PRIMARY KEY)
-- title (VARCHAR(255))
-- author (VARCHAR(255))
-- genre (VARCHAR(50))
-- year_published (INTEGER)

create database library;
use library;
create table books(
 book_id INT PRIMARY KEY,
 title VARCHAR(255),
 author VARCHAR(255),
 genre VARCHAR(50),
 year_published INT
 );
 
--  2. Data Insertion:

-- Prepare and execute SQL statements to insert sample book data into the books table. You can include at least 5 different books with varying titles, authors, genres, and publication years.


insert into books values(01,"richdad","kiyoski","money",2000),(02,"winfriends","arthur","mindset",2005),
(03,"it_starts_from_us","robert","love",2011),(04,"growrich","JohnKapler","money",1996),
(05,"it_ends_with_us","robert","love",2011);

select * from books;


-- 3. Data Retrieval and Manipulation:

-- Write SQL queries to perform the following operations:

-- Retrieve all book titles and publication years from the books table.
-- Find all books published after a specific year (e.g., 2010).
-- Find books written by a particular author (e.g., "J.R.R. Tolkien").
-- Filter and display books belonging to a specific genre (e.g., "Science Fiction").
-- Update the genre of a book (e.g., change "Mystery" to "Thriller" for a specific book_id).
-- Delete a book from the table based on its book_id.

select title,year_published 
from books;

select * from books 
where year_published>2000;

select * from books 
where author="robert";

select * from books 
where genre="money";

update books 
set genre="mindset" 
where title="richdad";

select * from books;

delete from books where book_id=3;







