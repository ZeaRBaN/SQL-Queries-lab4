CREATE DATABASE lab4;

CREATE TABLE lab4.customer
(
    customer_id INT(255) NOT NULL PRIMARY KEY ,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE lab4.order
(
    order_id INT(255) NOT NULL  PRIMARY KEY ,
    order_date DATETIME NOT NULL,
    customer_id INT(255) NOT NULL
);

CREATE TABLE lab4.item
(
    item_id INT(255) NOT NULL PRIMARY KEY ,
    unit_price INT(255) NOT NULL
);

CREATE TABLE lab4.order_item
(
    order_id INT(255) NOT NULL,
    item_id INT(255) NOT NULL,
    quantity INT(255) NOT NULL,
    PRIMARY KEY (order_id,item_id)
);



CREATE TABLE lab4.warehouse
(
    warehouse_id INT(255) NOT NULL PRIMARY KEY ,
    warehouse_city VARCHAR(50) NOT NULL
);

CREATE TABLE lab4.shipment
(
    order_id INT(255) NOT NULL,
    warehouse_id INT(255) NOT NULL,
    ship_date DATETIME NOT NULL,
    PRIMARY KEY (order_id,warehouse_id)
);

