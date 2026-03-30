create database if not exists amazon_sales_db;

use amazon_sales_db;

create table customers (customer_id int primary key auto_increment,
customer_name varchar(100) not null,
email varchar(100) unique,
phone varchar(15),
city varchar(50),
country varchar(50),
created_at date 
);

create table categories (category_id int primary key auto_increment,
category_name varchar(50) not null);

create table products (product_id int primary key auto_increment,
product_name varchar(150) not null,
category_id int,
price decimal(10,2),
stock_quantity int,
rating decimal(10,2),
created_at date,
foreign key (category_id) references categories(category_id)
);

create table orders (order_id int primary key auto_increment,
customer_id int,
order_date date,
order_status varchar(30),
total_amount decimal(10,2),
foreign key (customer_id) references customers(customer_id)
);

create table order_items (order_item_id int primary key auto_increment,
order_id int,
product_id int,
quantity int,
item_price decimal(10,2),
foreign key (order_item_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);

create table payments (payment_id int primary key auto_increment,
order_id int,
payment_date date,
payment_method varchar(30),
payment_status varchar(30),
amount_paid decimal(10,2),
foreign key (order_id) references orders(order_id)
);

create table shipping (shipping_id int primary key auto_increment,
order_id int,
shipping_date date, 
delivery_date date,
shipping_status varchar(30),
foreign key (order_id) references orders(order_id)
);

create index idx_customer_city on customers(city);
create index idx_product_price on products(price);
create index idx_order_date on orders(order_date);









