create database customers;

use customers;

create table customers (
  customer_id integer primary key,
  customer_name varchar(50),
  customer_address varchar(200),
  customer_telephone_number varchar(20)
);

create table products (
  product_id varchar(10) primary key,
  product_name varchar(200),
  unit_cost decimal
);