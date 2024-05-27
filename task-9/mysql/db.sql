mysql -uroot
Log in to MySQL with an admin user. mysql -u [username]

exit;
Log out to MySQL 

show DATABASES ;
To show all DATABASES 

use DATABASE name ;
To use a DATABASE 


SELECT * FROM DATABASE name ;
To show all the data from a DATABASE

CREATE DATABASE  DATABASE name ;
To create a DATABASES

drop DATABASE  DATABASE name ;
To DELETE a DATABASES



CREATE DATABASE demo ;

use demo ;

CREATE TABLE students ( id int NOT NULL AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL ,
second_name VARCHAR(255) ,
date_of_birth date NOT NULL ,
mobile  VARCHAR(20) null ,
gender enum('male','female', 'other') DEFAULT 'male' ,
PRIMARY KEY(id)
);

DESCRIBE TABLE_NAME;
to show the structure of the table;

-- , # 
To  comment code

DROP TABLE TABLE_NAME;
To delete a table 

INSERT INTO  table_name (  ) VALUES(
     your_values
);
To insert values to a table 

INSERT INTO  students (first_name ,second_name,date_of_birth,mobile,gender  ) VALUES(
    'akash', 'saji','2001-08-04' ,'9061990237', 'male'
);
To insert values to a table 

ALTER table students add email VARCHAR(255);
 
ALTER table students add city VARCHAR(255) after mobile;

ALTER table students RENAME COLUMN city to home_city ;

ALTER table students MODIFY COLUMN city text;

ALTER table students drop COLUMN email ;

ALTER table students RENAME app_students ;

TRUNCATE table  app_students ;

drop table  app_students ;

mysql -uroot < employees.sql;

INSERT IGNORE INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

ALTER table app_students MODIFY COLUMN first_name VARCHAR(255) UNIQUE;
To make the column UNIQUE;

INSERT INTO table (column_names)
VALUES (values)
ON DUPLICATE KEY UPDATE
  col1 = val1,  
  col2 = val2 
INSERT statement, the existing rows are updated with the new values instead

REPLACE INTO table_name (column1, column2, column3,...columnN)
VALUES (value1, value2, value3,...valueN);
inserting a record using the insert statement 
if a existing column has a UNIQUE or PRIMARY KEY constraint, 
if the new record has same value for this column an error will be generated

alter table add_students add column time VARCHAR(15);

insert into  app_students (time) values (now());

 SHOW TABLES; 
To show tables in a database

set @fist_name = "aka";

insert into  app_students (first_name) values (@fist_name);

START TRANSACTION ;

sql QUERY here 

COMMIT ;

ROLLBACK ; 
if you want to go back 

UPDATE app_students
 set first_name="akas" 
 WHERE first_name="aka" ;

UPDATE app_students
 set first_name="akas" ;
will update all the values;

UPDATE app_students
 set first_name='aka' , second_name= 'sa' 
 WHERE first_name="akas" ;


 CREATE TABLE students1 ( id int NOT NULL AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL ,
second_name VARCHAR(255) ,
date_of_birth date NOT NULL ,
mobile  VARCHAR(20) null ,
gender enum('male','female', 'other') DEFAULT 'male' ,
PRIMARY KEY(id)
);

INSERT INTO  students1 (first_name ,second_name,date_of_birth,mobile,gender  ) VALUES(
    'akash', 'saji','2001-08-04' ,'9061990237', 'male'
);

ALTER TABLE app_students DROP COLUMN id;

CREATE TABLE departments (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(50)
);

CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


CREATE TABLE a (
    id int AUTO_INCREMENT PRIMARY KEY,
    a1 VARCHAR(255)
   
   
);

CREATE TABLE b (
    id int AUTO_INCREMENT PRIMARY KEY,
    b1 int,FOREIGN KEY (b1) REFERENCES a(id)
   
);

CREATE TABLE orders (id int AUTO_INCREMENT PRIMARY KEY,
order_status VARCHAR(50)
);

insert into orders (order_status) values ('pending'),('done');


CREATE TABLE customer (customer_id int, customer_name VARCHAR(255)
,FOREIGN KEY (customer_id) REFERENCES orders(id)
);
insert into customer (customer_name) values ('aka'),('akash');

insert into customer (customer_id) values ('1'),('2');

update customer as c
join orders as o on o.id = c.customer_id 
set c.customer_id  = o.id 
where order_status ='pending';

CREATE TABLE products (id int AUTO_INCREMENT PRIMARY KEY , product_name VARCHAR(255) , stock_quantity int);

insert into products (product_name , stock_quantity ) 
values (
  'mobile' , '1'
),
 (
  'laptop' , '2'
),
 (
  'tab' , '0'
),
 (
  'tablet' , '0'
);

alter table products add column (product_status VARCHAR(100) );

update products set product_status = case
when stock_quantity > 0 then 'in stock' 
else 'out of stock'
end;

update products set stock_quantity = 100 
where product_status = 'in stock' 
LIMIT 1;


SELECT * from products;


SELECT concat(product_status, ' ' ,product_name)   from products;


SELECT concat(product_status, ' ' ,product_name) as product   from products;


SELECT DISTINCT product_name from products;

CREATE TABLE products (id int AUTO_INCREMENT PRIMARY KEY , product_name VARCHAR(255) , stock_quantity int);

CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department_id INT,
 salary int 
);

insert into employees (first_name , salary )  values
 ('a' , 100),
  ('b' , 200),
    ('c' , 200);

    SELECT sum(salary)  from employees;
    
    SELECT avg(salary)  from employees;

    SELECT count(salary)  from employees;

        SELECT max(salary)  from employees;

           SELECT min(salary)  from employees;

            SELECT std(salary)  from employees;

  alter table  products add column (product_id int);        

update products  set   product_id  = 2 
  where product_name ='mobile' limit 1 ;


SELECT product_id , count(*) as product_count
from  products 
GROUP BY product_id;

SELECT product_id , count(*) as product_count
from  products 
GROUP BY product_id
having count(*) >1;

SELECT * from products ORDER BY product_id desc ;
SELECT * from products ORDER BY product_id asc ;

SELECT * from products ORDER BY product_id asc limit 3,6 ;

SELECT * from products ORDER BY product_id asc limit 3 OFFSET 6;

SELECT * from products where product_id in (1,2,3);

delete from products;

delete from products where product_id = 1 ;

delete products from  product_name JOIN employees on   employees.id = products.id 
where products.product_name = 'mobile' ;


  DELETE FROM products
WHERE product_name = 'mobile'
AND EXISTS (
    SELECT 1
    FROM products AS p
    INNER JOIN employees AS e ON p.id = e.employee_id
    WHERE e.first_name = 'a'
);


