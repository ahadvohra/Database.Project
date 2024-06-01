CREATE DATABASE MY_INFOS;
CREATE TABLE Doctors
(phyID int PRIMARY KEY,First_name varchar(255),Last_name varchar(255),Address varchar(255),
Contact varchar(255)
)

select*from Doctors
INSERT INTO Doctors
VALUES
      (1,'Robert',' Hong','30055 Northwestern Hwy','(248)865-4444'),
	  (2,'Sarsam',' Muther','6840 Greenfield Rd','(313)846-1700'),
	  (3,'Thikra ','Hussein','6840 Greenfield Rd','(789)234-0768'),
	  (4,'Raad',' Alsaraf','6840 Greenfield Rd','(313)846-1700'),
	  (5,'Sundas ','Jabr','6840 Greenfield Rd','(313)678-5434'),
	  (6,'Jonathan ','State','19401 Hubbard Dr','(313)982-4400'),
	  (7,'Gupta ','Madhu','2021 Monroe St','(313)565-8700'),
	  (8,'Zakaria',' Fayda','1711 Monroe St','(313)562-9100'),
	  (9,'Shirley',' Tom','17000 Hubbard Dr','(313)982-4351')

CREATE TABLE insurance
(
insurance_ID int PRIMARY KEY ,insurance_Name varchar(255),insurance_contact varchar(255),
start_date date ,end_date date)

select*from insurance
insert into insurance
values
     (1,'mona','345-789-654','1990-7-6','1995-7-6'),
     (2,'Robert','768-098-098','1987-9-8','1992-7-8')
     ,(3,'hong','(248)865-4444','1670-8-9','1675-9-8')
    ,(4,'hassan','(313)846-1700','1990-8-6','2000-8-4')
   ,(5,'hussein','(789)234-0768','1990-7-6','1995-7-6')
,(6,'ali','(313)678-5434','1230-6-8','1270-9-1')
,(7,'ahmad','(313)678-5434','1990-8-6','2000-8-4')
,(8,'shirley','(313)982-4400','2000-4-5','2010-6-7')
,(9,'fayda','(313)562-9100','1670-8-9','1675-9-8')


CREATE TABLE patients

(
patientID int PRIMARY KEY ,First_Name varchar(255),Last_Name varchar(255),DOB date ,Address varchar(255),
Contact varchar(255),Gender varchar(255),insurance_ID int FOREIGN KEY REFERENCES insurance(insurance_ID)
)
select*from patients

INSERT INTO patients 
VALUES(1001,'James','Smith','1987-01-01','652 Jill Dr.','(868)456-9876','M',1),
	  (1002,'Huda','Saleh','1999-09-22','347 Moss Rd.','(313)459-9226','F',2),
	  (1003,'Rachel','Wilson','1990-10-22','210 Fork St.','(313)654-0989','F',3),
	  (1004,'Ali','Hamade','2001-12-31','410 John R. St.','(564)879-7623','M',4),
	  (1005,'Mona','Berry','2009-04-23',	'354 Colson Ave.','(313)768-6543','F',5),
	  (1006,'Jordan','Parker','1994-09-05','457 Lilly Ln.','(678)876-4512','M',6),
	  (1007,'Milly','Roger','1950-12-11','567 Holli St.','(678)987-1234','F',7),
	  (1008,'Mohammad','Musa','2010-10-10','100 Cherry Ln.','(878)546-0980','M',8),
	  (1009,'Linda','Malek','1997-07-08','345 Rubard Dr.','(878)456-0989','F',9)
	  

CREATE TABLE prescription 
(presriptionalID int PRIMARY KEY,patientID int FOREIGN KEY REFERENCES patients(patientID),
phyID  int FOREIGN KEY REFERENCES Doctors(phyID) , prescribed_date date)
select*from prescription
insert into prescription
values
      (51,1001,1,'2023-12-2'),
	  (52,1002,2,'2023-4-5'),
	  (53,1003,3,'2023-7-5'),
	  (54,1004,4,'2023-7-6'),
	  (55,1005,5,'2022-4-3'),
	  (56,1006,6,'2023-5-1'),
	  (57,1007,7,'2023-5-6'),
	  (58,1008,8,'2023-5-4'),
	  (59,1009,9,'2023-5-4')

CREATE TABLE ORDER_MEDICINE
(orderID int PRIMARY KEY,prescriptionalID int FOREIGN KEY REFERENCES prescription(presriptionalID) ,order_date date,status varchar(255))
select *from ORDER_MEDICINE
INSERT INTO ORDER_MEDICINE
VALUES
     (01,51,'2023-8-7','RECEIVED'),
	 (02,52,'2023-7-5','RECEIVED'),
	 (03,53,'2023-6-4','NOT RECEIVED'),
	 (04,54,'2023-5-4','RECEIVED'),
	 (05,55,'2023-7-4','NOT RECEIVED'),
	 (06,56,'2023-8-9','RECEIVED'),
	 (07,57,'2023-6-3','NOT RECEIVED'),
	 (08,58,'2023-6-8','NOT RECEIVED'),
	 (09,59,'2023-7-1','RECEIVED')

CREATE TABLE payment
(paymentID int PRIMARY KEY,payment_method varchar(255))
select*from payment
INSERT INTO payment
VALUES
      (001,'cash'),
	  (002,'online'),
	  (003,'cash'),
	  (004,'cash'),
	  (005,'cash'),
	  (006,'online'),
	  (007,'online'),
	  (008,'online'),
	  (009,'online')

CREATE TABLE Invoice
(patientID int FOREIGN KEY REFERENCES patients(patientID),OrderID int FOREIGN KEY REFERENCES ORDER_MEDICINE(OrderID),paymentID int FOREIGN KEY REFERENCES payment(paymentID),
Totalamount int)
select*from Invoice
INSERT INTO Invoice
VALUES
      (1001,01,1,1000),
	  (1002,02,2,2000),
	  (1003,03,3,1345),
	  (1004,04,4,1456),
	  (1005,05,5,7654),
	  (1006,06,6,2400),
	  (1007,07,7,4000),
	  (1008,08,8,5000),
	  (1009,09,9,7000)

CREATE TABLE manufacturer
(manufactureID int PRIMARY KEY,manufact_company varchar(255))
select*from manufacturer
INSERT INTO manufacturer
VALUES 
      (100,'PIMS'),
	  (200,'IVEN PHARMA'),
	  (300,'MERCK'),
	  (400,'PFIZER'),
	  (500,'BAYER'),
	  (600,'CIPLA'),
	  (700,'SANOFI'),
	  (800,'ABBVIE'),
	  (900,'NOVARTIS')

CREATE TABLE Supplier
(SupplierID int PRIMARY KEY, Name varchar (255),Address varchar(255),
Contact varchar(255))
select*from Supplier
INSERT INTO Supplier
VALUES 
      (101,'Robert Hong','redford street.','567-987-098'),
      (102,'Sarsam Muther','oxford st.','546-908-987'),
      (103,'Thikra Hussein','hilton rd.','435-098-567'),
	  (104,'smith black','rutherford st.','098-765-345'),
	  (105,'Sundus Jabro','bohor st.','768-445-336'),
      (106,'Jonathon State','sveston st.','566-998-009'),
     (107,'Gupta Madhu','hillroad st.','987-098-657'),
     (108,'Zakaria Fayda','magnum st.','567-098-345'),
     (109,'Shirley Tom','hogwords st.','870-876-908')

CREATE TABLE DRUGS
(Drug_name varchar(255) PRIMARY KEY,DrugID int,Drug_type varchar (255),SupplierID int FOREIGN KEY REFERENCES Supplier(SupplierID),
manufactureID int FOREIGN KEY REFERENCES manufacturer (manufactureID),stock_quantity int,expiry_date date,price int)
select*from DRUGS
INSERT INTO DRUGS
VALUES 
('Glucotrol',110,'antibiotic',101,100,50,'2023-7-6',1000),
('Motrin',111,'anti-inflammatory',102,200,80,'2023-10-5',78000),
('Neurontin',112,'painkiller',103,300,70,'2023-9-7',78000),
('Zocor',113,'anti-inflammatory',104,400,65,'2023-6-9',89000),
('Lipitor',114,'anti-inflammatory',105,500,50,'2023-7-6',78000),
('Lasix',115,'antibiotic',106,600,70,'2023-7-8',3000),
('Imdur',116,'anti-inflammatory',107,700,76,'2023-6-5',1200),
('Mobic',117,'painkiller',108,800,90,'2023-6-5',5600),
('Naprosyn',118,'painkiller',109,900,40,'2023-5-6',56000)


CREATE TABLE Disposed
(Drug_name varchar (255) FOREIGN KEY REFERENCES DRUGS(Drug_name),Expiry_date date,quantity int)
select*from Disposed
INSERT INTO Disposed
VALUES 
('Glucotrol','2023-6-7',100),
('Motrin','2023-8-6',500),
('Neurontin','2023-5-4',600),
('Zocor','2023-5-9',700),
('Lipitor','2023-6-5',500),
('Lasix','2023-6-7',100),
('Imdur','2023-6-5',200),
('Mobic','2023-4-3',600),
('Naprosyn','2023-6-1',800)

CREATE TABLE Prescribed_Drugs
(prescriptionalID int FOREIGN KEY REFERENCES Prescription(presriptionalID),Drug_name varchar(255) FOREIGN KEY REFERENCES DRUGS(Drug_name),prescribed_quantity int,
refill_limit varchar(255))
select*from Prescribed_Drugs
INSERT INTO Prescribed_Drugs
VALUES 
     (51,'Glucotrol',2,2),
(52,'Motrin',3,2),
(53,'Neurontin',1,2),
(54,'Zocor',2,2),
(55,'Lipitor',3,2),
(56,'Lasix',2,2),
(57,'Imdur',1,2),
(58,'Mobic',1,2),
(59,'Naprosyn',2,2)
CREATE TABLE Ordered_Drugs
(OrderID int FOREIGN KEY REFERENCES ORDER_MEDICINE(OrderID),Drug_name varchar(255) FOREIGN KEY REFERENCES DRUGS(Drug_name),DrugID int,Ordered_quantity int,price int)
select*from Ordered_Drugs
INSERT INTO Ordered_Drugs
VALUES
      (01,'Glucotrol',1,20,10000),
	  (02,'Motrin',2,30,50000),
	  (03,'Neurontin',3,40,70000),
	  (04,'Zocor',4,50,60000),
	  (05,'Lipitor',5,60,90000),
	  (06,'Lasix',6,90,50000),
	  (07,'Imdur',7,70,45000),
	  (08,'Mobic',8,60,70000),
	  (09,'Naprosyn',9,70,25000)