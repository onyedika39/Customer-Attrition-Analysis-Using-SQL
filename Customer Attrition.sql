-- write a query to return all information from the customer table
select * from customers;
/* return Firstname,lastname,gender,annualincome
from customer table */
select firstname,lastname,gender,annualincome from customers;
-- SQL Data Types
-- String | Numeric | Date & Time
-- Each column in a table has a specific data type:
describe customers;

-- Writing Simple Queries (SELECT Statement)
-- Two Ways to Use SELECT in SQL
-- The SELECT statement is used to retrieve data from a database.

-- 1. Select * from Table_name : it returns all record
-- Example : Retrieve All Customers
select * from customers;

-- 2. Selecting Specific Columns
-- Example: retrieves only FirstName, LastName, and EmailAddress from the Customers table.
select firstname,lastname,emailaddress from customers;

-- Example : Select customers where the gender column is Male(M)
select * from customers where Gender="M";

-- Retrieve Customers with More Than 2 Children
select * from customers where TotalChildren > 2;

-- Retrieve Customers with No Children
select * from customers where TotalChildren = 0;

-- Retrieve Customers Who Have Between 1 and 3 Children
select * from customers where TotalChildren between 1 and 3;

--  AND, OR and NOT Operators
-- The AND operator displays a record if all the conditions separated by AND are TRUE.
-- The OR operator displays a record if any of the conditions separated by OR is TRUE.
-- The NOT operator displays a record if the condition(s) is NOT TRUE.

-- AND OPERATOR
/* 
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;*/

-- Example 1: Retrieve Married Female Customers.
-- Return Firstname,lastname,gender,maritalstatus
select firstname,lastname,gender,maritalstatus from customers where gender="F" and
MaritalStatus="M";

-- Example 2:  Retrieve Customers Who Are Married AND Have More Than 2 Children
select * from customers where MaritalStatus="M" and TotalChildren > 2;

-- Example 3:  Retrieve Customers Who Have at Least 1 Child AND Are Homeowners
select * from customers  where TotalChildren >= 1 and HomeOwner = "Y";

-- OR Operator
/* The OR operator is used when at least one of the conditions must be
 true for a row to be included.*/
 
-- Retrieve Customers Who Are Either Married OR Have More Than 2 Children
select * from customers where MaritalStatus="M" OR TotalChildren >2;

-- Retrieve Customers Who Have at Least 1 Child OR Are Homeowners
 select * from customers where TotalChildren >= 1 Or HomeOwner = "yes";
 
 -- NOT Operator
 -- The NOT operator negates a condition, meaning it selects records where the condition is false.
 -- select * from table where NOT condition;
 
 -- Retrieve Customers Who Are NOT Married
 select * from customers where not MaritalStatus = "M";
 
 -- Combining AND, OR, and NOT
 -- Retrieve Female Customers Who Are NOT Married and Have More Than 1 Child
 select * from customers where Gender ="F" and not MaritalStatus ="M" and TotalChildren >1;

 -- Distinct Function
 /* The DISTINCT keyword in SQL is used to remove duplicate values 
 from the result set. It ensures that only unique values are retrieved.
 
 SELECT DISTINCT column_name FROM table_name; */
 
 --  Getting Unique Genders
 select distinct gender from customers;
 
 -- select unique education level
 select distinct educationlevel from  customers;
 
  /* Limit, Order by
 The LIMIT clause is used in SQL to restrict the number of rows returned in 
 a query result. It is especially useful when working with large datasets 
 and when you need only a specific number of records.
 
 SELECT column_name FROM table_name LIMIT number_of_rows;*/

# Get the First 5 Customers
 
select * from customers limit 5;

# Get the last 5 customers
select * from customers order by CustomerKey desc limit 5;

-- Using LIMIT with OFFSET
/* You can use OFFSET with LIMIT to skip a certain number of rows 
before retrieving results.

LIMIT 5 OFFSET 10
 Skip 10 rows, then return 5 rows.*/
 select * from customers limit 5 offset 10;

-- Aggregate Function (Sum,Min,Max,Avg,Count)
select sum(totalchildren) from customers;
select min(totalchildren) from customers;
select max(totalchildren) from customers;
select count(*) from customers;
select avg(totalchildren) from customers;
 






 











