

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
insert into CLIENT values('RC159', 'Rose', 'O', 'Cabrera', STR_TO_DATE('2000-05-09','%Y-%m-%d'), 'rosecabrera1@gmail.com',
  '4517 bluesky cir Fort Worth, Tx 75112', '817-456-7891');
insert into CLIENT values('JH150', 'Jorge','H', 'Hernandez', STR_TO_DATE('1997-08-6','%Y-%m-%d'), 'JorgeHernandez@gmail.com',
  '2036 Granbury rd Fort Worth, Tx 75112', '817-854-1981');
insert into CLIENT values('MY100', 'Micheala', 'T', 'Young', STR_TO_DATE('1990-09-04','%Y-%m-%d'), 'MichealaYoung@gmail.com',
  '8641 copper canyon Mansfield, Tx 76063', '817-892-1990');
insert into CLIENT values('LI123', 'Lea', 'P', 'Ilse', STR_TO_DATE('2000-05-12','%Y-%m-%d'), 'LeaIlse@gmail.com',
  '3601 murphy Dr Bedford, Tx 76021', '469-666-7891');
insert into CLIENT values('SD154', 'Sun', 'O', 'Down', STR_TO_DATE('1987-11-25','%Y-%m-%d'), 'Sundown145@gmail.com',
  '1987 Tau Dr Arlington, Tx 76010', '817-636-1987');
insert into CLIENT values('RS187', 'Ruben', 'R', 'Secor', STR_TO_DATE('1997-03-10','%Y-%m-%d'), 'RubenSecor@gmail.com',
  '1997 Knights Rd Lubbock, Tx 79452', '817-876-1210');
  insert into CLIENT values('MH121', 'Miguel', 'E', 'Hernandez', STR_TO_DATE('1988-09-04','%Y-%m-%d'), 'MiguelHernandez@gmail.com',
    '5013 heritage ave colleyville tx 76034', '817-682-1989');
  insert into CLIENT values('DM169', 'Danny', 'O', 'Miller', STR_TO_DATE('2000-05-12','%Y-%m-%d'), 'DannyMiller@gmail.com',
    '1201 Elm St, Dallas, TX 75270', '214-569-7783');
  insert into CLIENT values('RL147', 'Ruth', 'P', 'Lopez', STR_TO_DATE('2005-01-25','%Y-%m-%d'), 'RuthLopez@gmail.com',
    '300 Alamo Plaza, San Antonio, TX 78205', '817-198-1836');
  insert into CLIENT values('JO564', 'Jackie', 'Y', 'Ortega', STR_TO_DATE('2003-04-4','%Y-%m-%d'), 'JackieOrtega@gmail.com',
    '2014 sky Rd Fort Worth, Tx 75112', '214-876-5530');
insert into CLIENT values('BL666', 'Ben', 'T', 'Lathem', STR_TO_DATE('2003-5-24','%Y-%m-%d'), 'BenLathem@gmail.com',
    '701 S Nedderman Dr, Arlington, TX 76019', '817-666-1855');
insert into CLIENT values('TP999', 'Tommy', 'D', 'Pedro', STR_TO_DATE('2001-08-11','%Y-%m-%d'), 'TommyPedro@gmail.com',
    '1 AT&T Way, Arlington, TX 76011', '817-200-1874');
insert into CLIENT values('SD888', 'Sam', 'U', 'Dikes', STR_TO_DATE('1995-03-10','%Y-%m-%d'), 'SamDikes@gmail.com',
    '844 Secretary Dr, Arlington, TX 76015', '817-642-5153');

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
insert into LOGIN values('j1h5','Jorge.H','Password1!','JH150');
insert into LOGIN values('M1Y0','Bella.trix','Alexander#2','MY100');
insert into LOGIN values('Lea123','lea123','LeA123','LI123');
insert into LOGIN values('SD145','Sundown','Kninghts145!','SD154');
insert into LOGIN values('R8S1','RubenSecor','Spring2020','RS187');
insert into LOGIN values('MH121','Miguel.H1997','UTAMAVS','MH121');
insert into LOGIN values('Danny199','DM6969','NoPassword!','DM169');
insert into LOGIN values('JackieOrtega564','JO564','DOG37','JO564');
insert into LOGIN values('RL147','Ruthlopez147','PassClass100','RL147');
insert into LOGIN values('BenLathem','BL666','MONEY69$','BL666');
insert into LOGIN values('TommyPedro','TP999','DINERO$','TP999');
insert into LOGIN values('Sambam','Sam888','Roxy88','SD888');


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
  SALARY DECIMAL(9,2) NOT NULL,
PRIMARY KEY(EmpID)
);

/* Insert values into the EMPLOYEE Table */
insert into EMPLOYEE values('JB411', 'Jose', 'M', 'Berrios', STR_TO_DATE('1985-08-27','%Y-%m-%d'), 'jberrios@shouse.com',
  '492-456-7510', 58700.00);
insert into EMPLOYEE values('EF476', 'Elias', 'Z', 'Feliz', STR_TO_DATE('1993-04-12','%Y-%m-%d'), 'efeliz@shouse.com',
  '817-863-4456', 26550.50);
insert into EMPLOYEE values('FG432', 'Cisco', 'E','Castillo', STR_TO_DATE('2010-04-12','%Y-%m-%d'), 'Ccastillo@shouse.com',
    '817-685-1187', 30000.87);
insert into EMPLOYEE values('MS123', 'Meron', 'L','Solomon', STR_TO_DATE('2000-06-29','%Y-%m-%d'), 'MSolomon@shouse.com',
    '817-685-6666', 32500.88);
insert into EMPLOYEE values('KH159', 'Kashif', 'P','Hussaian', STR_TO_DATE('1998-04-30','%Y-%m-%d'), 'KHussaian@shouse.com',
    '817-888-8888', 29800.99);
insert into EMPLOYEE values('DT999', 'Duc', 'T','Than', STR_TO_DATE('1995-09-12','%Y-%m-%d'), 'DThan@shouse.com',
    '469-666-6666', 6666666.99);
insert into EMPLOYEE values('RC165', 'Ruth', 'V','Arias', STR_TO_DATE('1999-04-12','%Y-%m-%d'), 'RArias@shouse.com',
   '817-186-1776', 1778888.87);
insert into EMPLOYEE values('BJ169', 'Brady', 'V','Jordan', STR_TO_DATE('1998-10-12','%Y-%m-%d'), 'BJordan@shouse.com',
   '817-186-1990', 67830.59);
insert into EMPLOYEE values('RS897', 'Ryan', 'H','Smith', STR_TO_DATE('2005-8-20','%Y-%m-%d'), 'RSmith@shouse.com',
   '817-457-1886', 4500.69);
insert into EMPLOYEE values('CM875', 'Cole', 'A','Miller', STR_TO_DATE('2010-07-01','%Y-%m-%d'), 'CMiller@shouse.com',
    '817-887-0001', 15000.23);


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
insert into ROLE values('ROL02', 'Deliver','EF476');
insert into ROLE values('ROL03', 'Deliver','FG432');
insert into ROLE values('ROL04', 'Stocker','MS123');
insert into ROLE values('ROL05', 'Stocker','KH159');
insert into ROLE values('ROL06', 'Secretary','DT999');
insert into ROLE values('ROL07', 'Webdevloper','BJ169');
insert into ROLE values('ROL08','Webdevloper','RC165');
insert into ROLE values('ROL09','Software Engineer','CM875');
insert into ROLE values('ROL10','Software Engineer','RS897');


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
insert into PERMISSION values('PER03', 'ROL03', 'Part-Time');
insert into PERMISSION values('PER04', 'ROL04', 'Full-Time');
insert into PERMISSION values('PER05', 'ROL05', 'Full-Time');
insert into PERMISSION values('PER06', 'ROL06', 'Full-Time');
insert into PERMISSION values('PER07', 'ROL07', 'Part-Time');
insert into PERMISSION values('PER08', 'ROL08', 'Full-Time');
insert into PERMISSION values('PER09', 'ROL09', 'Part-Time');
insert into PERMISSION values('PER10', 'ROL10', 'Full-Time');


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
insert into PRODUCT values('PRO02', 'Red','Running', 20, 'FG432', 'JH150');
insert into PRODUCT values('PRO03', 'Black','Training ', 5, 'MS123', 'SD888');
insert into PRODUCT values('PRO04', 'White','Sneakers', 2, 'KH159', 'TP999');
insert into PRODUCT values('PRO05', 'Brown','Training', 35, 'BJ169', 'JO564');





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
insert into PLACE_ORDER values('ORD02', 'Red', 1, 'JH150', 'PRO02');
insert into PLACE_ORDER values('ORD03', 'Black', 1, 'MY100', 'PRO03');
insert into PLACE_ORDER values('ORD04', 'Brown', 3, 'LI123', 'PRO05');
insert into PLACE_ORDER values('ORD05', 'Red', 3, 'SD154', 'PRO02');
insert into PLACE_ORDER values('ORD06', 'White', 2, 'RS187', 'PRO04');
insert into PLACE_ORDER values('ORD07', 'Blue Sky Converse', 1, 'MH121', 'PRO01');
insert into PLACE_ORDER values('ORD08', 'Red', 6, 'DM169', 'PRO02');
insert into PLACE_ORDER values('ORD09', 'White', 1, 'RL147', 'PRO04');
insert into PLACE_ORDER values('ORD10', 'Black', 1, 'JO564', 'PRO03');



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
insert into SHOE values('SH002', 'Flex Furry', 'Red', 'NIKE', 'Running', 'PRO02');
insert into SHOE values('SH003', 'REEBOK NANO', 'Black', 'REEBOK', 'Training', 'PRO03');
insert into SHOE values('SH004', 'SuperStar Shoe', 'White', 'ADIDAS', 'Sneakers', 'PRO04');
insert into SHOE values('SH005', 'Savannah', 'Brown', 'Puma', 'Training', 'PRO05');
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
insert into PAYMENT values('PAY02', 20.00, 'Credit Card', 0.00, 'ORD02');
insert into PAYMENT values('PAY03', 30.00, 'Credit Card', 0.00, 'ORD03');
insert into PAYMENT values('PAY04', 45.00, 'Credit Card', 0.00, 'ORD04');
insert into PAYMENT values('PAY05', 60.00, 'Credit Card', 0.00, 'ORD05');
insert into PAYMENT values('PAY06', 50.00, 'Credit Card', 0.00, 'ORD06');
insert into PAYMENT values('PAY07', 34.45, 'Credit Card', 1.00, 'ORD07');
insert into PAYMENT values('PAY08', 110.00, 'Credit Card',10.00,'ORD08');
insert into PAYMENT values('PAY09', 25.00, 'Credit Card', 0.00, 'ORD09');
insert into PAYMENT values('PAY10', 30.00, 'Credit Card', 0.00, 'ORD10');


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
insert into SHIPMENT values('SHI02', STR_TO_DATE('2020-05-12','%Y-%m-%d'), 'Deliver Home', 'PAY02', 'JH150');
insert into SHIPMENT values('SHI03', STR_TO_DATE('2020-05-16','%Y-%m-%d'), 'Deliver Home', 'PAY03', 'MY100');
insert into SHIPMENT values('SHI04', STR_TO_DATE('2020-05-16','%Y-%m-%d'), 'Deliver Home', 'PAY04', 'LI123');
insert into SHIPMENT values('SHI05', STR_TO_DATE('2020-05-16','%Y-%m-%d'), 'Deliver Home', 'PAY05', 'SD154');
insert into SHIPMENT values('SHI06', STR_TO_DATE('2020-05-20','%Y-%m-%d'), 'Deliver Home', 'PAY06', 'RS187');
insert into SHIPMENT values('SHI07', STR_TO_DATE('2020-05-21','%Y-%m-%d'), 'Deliver Home', 'PAY07', 'MH121');
insert into SHIPMENT values('SHI08', STR_TO_DATE('2020-05-22','%Y-%m-%d'), 'Deliver Home', 'PAY08', 'DM169');
insert into SHIPMENT values('SHI09', STR_TO_DATE('2020-05-22','%Y-%m-%d'), 'Deliver Home', 'PAY09', 'RL147');
insert into SHIPMENT values('SHI10', STR_TO_DATE('2020-05-22','%Y-%m-%d'), 'Deliver Home', 'PAY10', 'JO564');

SELECT * FROM SHIPMENT;
