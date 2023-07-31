-- Active: 1666274076413@@127.0.0.1@3306@sales

-- PUBLIC DATAVIZ COMMUNITY WEBINAR--

/*------------------------------------
Introduction to SQL and databases

SQL adalah bahasa pemrograman untuk mengelola dan memanipulasi database. 
Dengan SQL, kita bisa mengambil data, menyisipkan data baru, mengubah data yang ada, 
dan menghapus data. SQL juga digunakan untuk mendefinisikan struktur database, tabel, 
dan hubungan antar tabel. Bahasa ini penting bagi pengembang, analis data, 
dan administrator database.
--------------------------------------*/

/*-------------------------------------------------------------------
Create database & use database
---------------------------------------------------------------------*/
CREATE DATABASE sales;
USE sales;


/*-------------------------------------------------------------------
Creating tables and inserting data
---------------------------------------------------------------------

1. customer table
customer_id | customer_name |phone_number | email

2. orders table
order_id INT | customer_id |order_date | product_name | qty | price

---------------------------------------------------------------------*/
CREATE TABLE customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    phone_number VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_name VARCHAR(50),
    qty INT,
    price DECIMAL(10,2)
);

DESC customer;
INSERT INTO customer(customer_id,customer_name, phone_number,email)
VALUES 
(2, 'Jane Smith', '+9876543210', 'jane.smith@example.com'),
(3, 'Michael Johnson', '+1112223333', 'michael.johnson@example.com'),
(4, 'Emily Brown', '+4445556666', 'emily.brown@example.com'),
(5, 'Robert Lee', '+7778889999', 'robert.lee@example.com'),
(6, 'Sophia Kim', '+1231231231', 'sophia.kim@example.com'),
(7, 'William Lee', '+5556667777', 'william.lee@example.com'),
(8, 'Olivia Wang', '+9090909090', 'olivia.wang@example.com'),
(9, 'James Chen', '+1010101010', 'james.chen@example.com'),
(10, 'Ava Gupta', '+2223334444', 'ava.gupta@example.com');

INSERT INTO orders(order_id, customer_id,order_date,product_name,qty,price)
VALUES
(1, 3, '2023-07-01', 'Product A', 2, 100.00),
(2, 5, '2023-07-02', 'Product B', 3, 150.00),
(3, 3, '2023-07-03', 'Product C', 1, 50.00),
(4, 5, '2023-07-04', 'Product A', 4, 200.00),
(5, 8, '2023-07-05', 'Product B', 3, 150.00),
(6, 2, '2023-07-06', 'Product C', 2, 100.00),
(7, 4, '2023-07-07', 'Product A', 5, 250.00),
(8, 7, '2023-07-08', 'Product B', 1, 50.00),
(9, 9, '2023-07-09', 'Product C', 3, 150.00),
(10, 10, '2023-07-10', 'Product A', 2, 100.00),
(11, 3, '2023-07-11', 'Product B', 4, 200.00),
(12, 3, '2023-07-12', 'Product C', 3, 150.00),
(13, 3, '2023-07-13', 'Product A', 2, 100.00),
(14, 5, '2023-07-14', 'Product B', 1, 50.00),
(15, 8, '2023-07-15', 'Product C', 4, 200.00),
(16, 2, '2023-07-16', 'Product A', 3, 150.00),
(17, 4, '2023-07-17', 'Product B', 2, 100.00),
(18, 7, '2023-07-18', 'Product C', 5, 250.00),
(19, 9, '2023-07-19', 'Product A', 1, 50.00),
(20, 10, '2023-07-20', 'Product B', 3, 150.00);

SELECT * FROM orders;

/*-------------------------------------------------------------------
Querying data using SELECT statements
---------------------------------------------------------------------*/
SELECT * FROM customer LIMIT 5;
SELECT customer_name, phone_number FROM customer;



/*-----------------------------------------------
Filtering and sorting data

Filter product_name : 
1. Tampilkan hanya product A
2. Tampilkan product A yang harganya diatas 100
--------------------------------------------------*/

SELECT * FROM orders;
SELECT * FROM orders
WHERE product_name = 'Product A';

SELECT * FROM orders
WHERE product_name = 'Product A' AND price > 100;

/*--------------------------------------------------
Using aggregate functions to summarize 
data
1. Tampilkan total penjualan product
2. Tampilkan total penjualan per product_name
3. Tampilkan total penjualan tertinggi & terendah
4. Tampilkan rata-rata penjualan all product
----------------------------------------------------*/

/*------------------------------------
Joining tables to retrieve related data
1. Tampilkan total sales berdasarkan customer name (urutkan dari yang terbesar sampai terkecil)
2. Tampilkan TOP 1 customer name berdasarkan total sales
3. Siapa customernya yang total_salesnya 0?
4. Tampilkan semua customer name & total sales
--------------------------------------*/