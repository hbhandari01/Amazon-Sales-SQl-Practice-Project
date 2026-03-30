# SECTION - 1 (INSERT COMMAND)

## Insert Categories

insert into categories (category_name)
values ('Electronics'),
('Fashion'),
('Home Appliances');

## Insert Customers

insert into customers (customer_name, email, phone, city, country, created_at)
values 
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Delhi', 'India', '2024-01-10'),
('Priya Verma', 'priya@gmail.com', '9876543211', 'Mumbai', 'India', '2024-02-15'),
('Amit Singh', 'amit@gmail.com', '9876543212', 'Bangalore', 'India', '2024-03-01'),
('Neha Kapoor', 'neha@gmail.com', '9876543213', 'Chennai', 'India', '2024-04-05'),
('John Miller', 'john@gmail.com', '9876543214', 'New York', 'USA', '2024-05-12');

## Insert Products

insert into products (product_name, category_id, price, stock_quantity, rating, created_at)
values
('iPhone 15', 1, 80000, 50, 4.5, '2024-01-01'),
('Samsung TV', 1, 60000, 30, 4.3, '2024-01-05'),
('T-Shirt', 2, 1200, 200, 4.1, '2024-02-01'),
('Jeans', 2, 2500, 150, 4.2, '2024-02-05'),
('Microwave Oven', 3, 15000, 40, 4.4, '2024-03-01');

## Insert Orders

insert into orders (customer_id, order_date, order_status, total_amount)
values
(1, '2024-06-01', 'Shipped', 81200),
(2, '2024-06-05', 'Delivered', 60000),
(3, '2024-06-07', 'Processing', 2500),
(1, '2024-06-10', 'Delivered', 15000),
(4, '2024-06-12', 'Cancelled', 1200);

## Insert Order Items

insert into order_items (order_id, product_id, quantity, item_price)
values
(1, 1, 1, 80000),
(1, 3, 1, 1200),
(2, 2, 1, 60000),
(3, 4, 1, 2500),
(4, 5, 1, 15000);

# SECTION - 2 (ALTER TABLE)

## Add Column

alter table customers add gender varchar(10);

## Modify Column

alter table customers modify phone varchar(20);

## Rename Column

alter table order_items rename column item_price to unit_price ;

# SECTION - 3 (UPDATE)

## Increase Electronics Price by 10%

update products
set price = price * 1.10
where category_id = 1;

## Update Discount for High Rating Products

alter table products add discount_percentage int;

select * from products;
set sql_safe_updates = 0;

update products 
set discount_percentage = 5
where rating > 4;

# SECTION - 4 (DELETE/TRUNCATE)

## Delete Cancelled Orders

delete from orders 
where order_status = "cancelled";

## Delete Products with 0 Stock

delete from products 
where stock_quantity = 0;


## Truncate Payments Table

truncate table payments;

# SECTION - 5 (BASIC SELECT)

## All Customers

select * from customers;

## Products Above Average Price

select * from products
where price > (select avg(price) from products);

## Count Customers

select count(*) as total_customers
from customers;

## Total Revenue

select sum(total_amount) as total_revenue
from orders;

## Top 3 Expensive Products

select * from products
order by price desc
limit 3;

# SECTION - 6 (JOINS)

## Customer Name with Orders

select c.customer_name, o.order_id, o.total_amount
from customers c
join orders o
on c.customer_id = o.customer_id;

## Product with Category Name

select p.product_name, c.category_name
from products p
join categories c
on p.category_id = c.category_id;

## Products Sold in Each Order

select o.order_id, p.product_name, oi.quantity
from orders o
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id;

## Total Quantity Sold Per Product

select p.product_name, sum(oi.quantity) as total_quantity_sold
from order_items oi
join products p on oi.product_id = p.product_id
group by p.product_name;

## Customers Who Never Ordered

select c.customer_name
from customers c
join orders o 
on c.customer_id = o.customer_id
where o.order_id is null;

