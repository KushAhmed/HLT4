CREATE DATABASE htl4_db;
USE htl4_db;

CREATE TABLE manager(
	Name varchar(100) NOT NULL,
    Shift varchar(100),
    Salary double,
    Mid int NOT NULL,
    PRIMARY KEY(Mid)
);

CREATE TABLE item(
	itemid varchar(100) NOT NULL,
	dish varchar(100),
    price double,
    category varchar(100),
    PRIMARY KEY(itemid)
);

CREATE TABLE corder(
	orderid int NOT NULL AUTO_INCREMENT,
	cname varchar(100) NOT NULL,
    phone varchar(100),
    address varchar(100),
    itemid varchar(100),
    qty int,
    total DOUBLE,
    date varchar(100),
    PRIMARY KEY(orderid),
    FOREIGN KEY(itemid) REFERENCES item(itemid)
);