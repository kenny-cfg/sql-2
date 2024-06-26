drop database if exists customers;

create database customers;

use customers;

create table customers (
  customer_id integer primary key,
  customer_name varchar(50) not null,
  customer_address varchar(200) not null,
  customer_telephone_number varchar(20) not null
);

insert customers (customer_id, customer_name, customer_address, customer_telephone_number)
values
  (25, 'Alex Wilson', '1318 Scenic Avenue, Bothel', '888-555-0142'),
  (45, 'Poo bum', '999 Letsbe Avenue', '123-456-7890');


create table products (
  product_id varchar(10) primary key,
  product_name varchar(200) not null,
  unit_cost decimal not null
);

create table orders (
  order_id varchar(10) primary key,
  customer_id integer not null,
  foreign key (customer_id) references customers(customer_id)
);

create table order_details (
  order_id varchar(10) not null,
  product_id varchar(10) not null,
  quantity integer not null,
  foreign key (order_id) references orders(order_id),
  foreign key (product_id) references products(product_id)
)