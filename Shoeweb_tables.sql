

DROP DATABASE IF EXISTS SHOEUSE;
CREATE DATABASE SHOEUSE;
USE SHOEUSE;


DROP TABLE IF EXISTS CLIENT;


CREATE TABLE CLIENT
(
  ClientID CHAR(5) NOT NULL,
  FName VARCHAR(15) NOT NULL,
  MName CHAR(1),
  LName VARCHAR(15) NOT NULL,
  BDate DATE NOT NULL,
  Email VARCHAR(25) NOT NULL,
  Address VARCHAR(30) NOT NULL,
  PhoneNumber VARCHAR(13),
PRIMARY KEY(ClientID)
);

/* Insert values into the CLIENT Table */
insert into CLIENT values('RC159', 'Rose', 'M', 'Cabrera', STR_TO_DATE('2000-05-09','%Y-%m-%d'), 'rosecabrera1@gmail.com',
  '4517 bluesky cir Fort Worth, Tx 75112', '817-456-7891');

SELECT * FROM CLIENT;

DROP TABLE IF EXISTS LOGIN;


CREATE TABLE LOGIN
(
  LoginID CHAR(4) NOT NULL,
  Username VARCHAR(20) NOT NULL,
  Password VARCHAR(20) NOT NULL,
  ClientID CHAR(5) NOT NULL,
PRIMARY KEY(LoginID),
FOREIGN KEY(ClientID) REFERENCES CLIENT(ClientID)
);

/* Insert values into the LOGIN Table */
insert into LOGIN values('r1c7','rose123','Whatever#456', 'RC159');

SELECT * FROM LOGIN;


DROP TABLE IF EXISTS EMPLOYEE;


CREATE TABLE EMPLOYEE
(
  EmpID CHAR(5) NOT NULL,
  FName VARCHAR(15) NOT NULL,
  MName CHAR(1),
  LName VARCHAR(15) NOT NULL,
  BDate DATE NOT NULL,
  Email VARCHAR(25) NOT NULL,
  PhoneNumber VARCHAR(13),
  SALARY DECIMAL(5,2) NOT NULL,
PRIMARY KEY(EmpID)
);

/* Insert values into the EMPLOYEE Table */
insert into EMPLOYEE values('JB411', 'Jose', 'M', 'Berrios', STR_TO_DATE('1985-08-27','%Y-%m-%d'), 'jberrios@shouse.com',
  '492-456-7510', 58700.00);
insert into EMPLOYEE values('EF476', 'Elias', 'Z', 'Feliz', STR_TO_DATE('1993-04-12','%Y-%m-%d'), 'efeliz@shouse.com',
  '817-863-4456', 26550.50);

SELECT * FROM EMPLOYEE;



DROP TABLE IF EXISTS ROLE;


CREATE TABLE ROLE
(
  RoleID CHAR(5) NOT NULL,
  Position VARCHAR(30) NOT NULL,
  EmpID CHAR(5) NOT NULL,
PRIMARY KEY(RoleID),
FOREIGN KEY(EmpID) REFERENCES EMPLOYEE(EmpID)
);

/* Insert values into the ROLE Table */
insert into ROLE values('ROL01','Junior Software Developer','JB411');
insert into ROLE values('ROL02', 'Deliver', 'EF476');

SELECT * FROM ROLE;


DROP TABLE IF EXISTS PERMISSION;


CREATE TABLE PERMISSION
(
  PermiID CHAR(5) NOT NULL,
  RoleID CHAR(5) NOT NULL,
  Classification VARCHAR(10) NOT NULL,
PRIMARY KEY(PermiID),
FOREIGN KEY(RoleID) REFERENCES ROLE(RoleID)
);

/* Insert values into the PERMISSION Table */
insert into PERMISSION values('PER01', 'ROL01', 'Full-Time');
insert into PERMISSION values('PER02', 'ROL02', 'Full-Time');

SELECT * FROM PERMISSION;


DROP TABLE IF EXISTS PRODUCT;


CREATE TABLE PRODUCT
(
  ProdID CHAR(5) NOT NULL,
  ProdDescrip VARCHAR(20) NOT NULL,
  Type VARCHAR(10),
  Quantity DECIMAL(3,0) NOT NULL,
  EmpID CHAR(5) NOT NULL,
  ClientID char(5) NOT NULL,
PRIMARY KEY(ProdID),
FOREIGN KEY(EmpID) REFERENCES EMPLOYEE(EmpID),
FOREIGN KEY(ClientID) REFERENCES CLIENT(ClientID)
);

/* Insert values into the PRODUCT Table */
insert into PRODUCT values('PRO01', 'Blue SKy Converse','Sneakers', 15, 'EF4760', 'RC159');

SELECT * FROM PRODUCT;


DROP TABLE IF EXISTS PLACE_ORDER;


CREATE TABLE PLACE_ORDER
(
  OrderID CHAR(5) NOT NULL,
  Descrip VARCHAR(30) NOT NULL,
  Quantity DECIMAL(3,0) NOT NULL,
  ClientID CHAR(5) NOT NULL,
  ProdID CHAR(5) NOT NULL,
PRIMARY KEY(OrderID),
FOREIGN KEY(ClientID) REFERENCES CLIENT(ClientID),
FOREIGN KEY(ProdID) REFERENCES PRODUCT(ProdID)
);

/* Insert values into the ORDER Table */
insert into PLACE_ORDER values('ORD01', 'Blue Sky Converse', 1, 'RC159', 'PRO01');

SELECT * FROM PLACE_ORDER;



DROP TABLE IF EXISTS SHOE;


CREATE TABLE SHOE
(
  ShoeID CHAR(6) NOT NULL,
  Name VARCHAR(25) NOT NULL,
  Color VARCHAR(10) NOT NULL,
  Brand VARCHAR(12) NOT NULL,
  Type VARCHAR(10),
  ProdID CHAR(6) NOT NULL,
PRIMARY KEY(ShoeID),
FOREIGN KEY(ProdID) REFERENCES PRODUCT(ProdID)
);

/* Insert values into the SHOEUSE Table */
insert into SHOE values('SH001', 'Chuck Taylor All Star', 'Blue Sky', 'Converse', 'Sneakers', 'PRO01');

SELECT * FROM SHOE;



DROP TABLE IF EXISTS PAYMENT;


CREATE TABLE PAYMENT
(
  PayID CHAR(6) NOT NULL,
  Amount DECIMAL (5,2) NOT NULL,
  Method VARCHAR(13) NOT NULL,
  Discount DECIMAL (2,2),
  OrderID CHAR(6) NOT NULL,
PRIMARY KEY(PayID),
FOREIGN KEY(OrderID) REFERENCES PLACE_ORDER(OrderID)
);

/* Insert values into the PAYMENT Table */
insert into PAYMENT values('PAY01', 35.45, 'Credit Card', 0.00, 'ORD01'); /* no Discount was applied */

SELECT * FROM PAYMENT;



DROP TABLE IF EXISTS SHIPMENT;


CREATE TABLE SHIPMENT
(
  ShipID CHAR(5) NOT NULL,
  ShipDate DATE NOT NULL,
  Method VARCHAR(15) NOT NULL,
  PayID CHAR(5) NOT NULL,
  ClientID CHAR(5) NOT NULL,
PRIMARY KEY(ShipID),
FOREIGN KEY(PayID) REFERENCES PAYMENT(PayID),
FOREIGN KEY(ClientID) REFERENCES CLIENT(ClientID)
);

/* Insert values into the SHIPMENT Table */
insert into SHIPMENT values('SHI01', STR_TO_DATE('2020-05-10','%Y-%m-%d'), 'Deliver Home', 'PAY01', 'RC159');

SELECT * FROM SHIPMENT;
