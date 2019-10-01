CREATE DATABASE task2_new;

use task2_new;


CREATE TABLE Students(
   Student_ID varchar(15) PRIMARY KEY,
   Fname varchar(45) NOT NULL,
   Lname varchar(45) NOT NULL,
   Street varchar(45),
   City varchar(45) NOT NULL,
   Zip_Code varchar(45) NOT NULL,
   DOB datetime NOT NULL,
   Sex varchar(1) NOT NULL,
   Category_ID int,
   Nationality varchar(45),
   Special_needs varchar(45),
   Current_status varchar(45),
   Course_ID varchar(45),
   Comments varchar(50),
   Created_on datetime NOT NULL,
   Modified_on datetime NOT NULL
);


CREATE TABLE Courses_Students(
   Student_ID varchar(15),
   Course_ID varchar(15)
);

CREATE TABLE Courses(
  Course_ID varchar(15) PRIMARY KEY,
  Course_Name varchar(255) UNIQUE,
  Year varchar(4),
  Instructor_ID varchar(10),
  Room_no varchar(6),
  Dept_id varchar(10)
);


CREATE TABLE Instructor(
   Instructor_ID varchar(10), /* Related as foreign key with StaffID */
   Dept_ID varchar(10)
);


CREATE TABLE Staff(
  Staff_id varchar(10) PRIMARY KEY,
  Fname varchar(45) NOT NULL,
  Lname varchar(45) NOT NULL,
  Resi_Add varchar(255),
  City varchar(45),
  Zip_code varchar(7),
  DOB datetime,
  Sex varchar(1),
  Position varchar(25),
  Phone varchar(20),
  Created_on datetime NOT NULL,
  Modified_on datetime NOT NULL
);


CREATE TABLE Advisor(
  Advisor_ID varchar(10), /* Related as foreign key with Staff_ID */
  Dept_ID    varchar(10),
  Office_Location_ID varchar(45)
);

CREATE TABLE Categories(
  Category_ID INT  PRIMARY KEY,
  Category_name varchar(45) NOT NULL UNIQUE
);

CREATE TABLE Payments(
  Payment_ID varchar(15) PRIMARY KEY,
  Inv_ID varchar(15),
  Date_of_payment datetime,
  Method_of_payment varchar(10),
  Amount decimal(3),
  Create_on datetime,
  Modified_on datetime
);


CREATE TABLE Invoices(
  Inv_ID varchar(15) PRIMARY KEY,
  Inv_date datetime NOT NULL,
  Lease_ID  varchar(45),
  Quarter INT,
  Student_ID varchar(15) NOT NULL,
  Accomodation_type INT,
  First_reminder datetime,
  second_reminder datetime,
  payment_status varchar(1)
);


CREATE TABLE Leases(
  Lease_ID varchar(25) PRIMARY KEY,
  student_ID varchar(15),
  StartDate datetime,
  EndDate datetime,
  Actual_start datetime,
  Actual_end datetime,
  Duration int,
  Created_On datetime,
  Modified_on datetime
);


CREATE TABLE Contacts(
  contact_ID varchar(10) PRIMARY KEY,
  student_ID varchar(15) NOT NULL,
  SSN        varchar(15),
  Fname      varchar(45),
  Lname      varchar(45),
  Relation   varchar(45),
  Street_add varchar(45),
  City       varchar(25),
  Zip_Code   varchar(10),
  Phone      varchar(20),
  Created_on datetime NOT NULL,
  Modified_on datetime NOT NULL
);


CREATE TABLE Accomodation(
  Accomodation_ID varchar(10) PRIMARY KEY,
  Student_ID  varchar(15) NOT NULL,
  Manager_ID  varchar(10) NOT NULL,
  Accomodation_type_ID varchar(1) NOT NULL,
  Accomodation_num varchar(5) NOT NULL,
  Room_num varchar(5) NOT NULL
);

CREATE TABLE Accomodation_Type(
  Accomodation_type_ID varchar(1) PRIMARY KEY,
  Accomodation_type_name varchar(20) UNIQUE
);


CREATE TABLE Hall_of_Resi(
  Hall_ID varchar(5) PRIMARY KEY,
  Hall_Name varchar(45) UNIQUE,
  Hall_Address varchar(75),
  Hall_phone varchar(20),
  Halls_available int(5),
  Advisor_ID varchar(45),
  Accomodation_ID varchar(10)
);


CREATE TABLE Hall_room(
    Hall_Room_ID int auto_increment PRIMARY KEY,
    Hall_ID varchar(5) NOT NULL,
    Monthly_rent varchar(45) NOT NULL
);


CREATE TABLE Flat(
  Flat_Num varchar(5) PRIMARY KEY,
  Address varchar(45),
  Flats_available int(5),
  Accomodation_ID varchar(10)
);


CREATE TABLE Flat_room(
  Flat_Room_ID int auto_increment PRIMARY KEY,
  Flat_ID varchar(5) NOT NULL,
  Max_Persons varchar(45),
  Monthly_rent varchar(45) NOT NULL
);


CREATE TABLE Inspection(
  Inspection_ID varchar(10) PRIMARY KEY,
  Inspector_ID  varchar(45) NOT NULL,
  Date_of_inspection datetime NOT NULL,
  Conditional_satisfaction binary,
  Additional_comments varchar(45),
  Inspection_flat_num varchar(45),
  Created_on  datetime NOT NULL,
  Modified_on datetime NOT NULL
);


CREATE TABLE Office_Location(
    ID  varchar(5) PRIMARY KEY,
    Location varchar(45) NOT NULL UNIQUE
);

/* Inserting 10 data for Students table */
Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
  Values('TRIOS1001','Salman','Khan','123 Wellman Cres','Caledon','L7C9C9','1990-11-14 00:00:00','M',0,'American','Wants corner room',1,2001,'','2009-12-07 00:00:00','2009-12-07 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
  Values('TRIOS1002','Hrithik','Roshan','22 McPherson Rd','Caledon','L7C9A9','1990-05-19','M',0,'Russian','Wants quiet room',1,2070,'','2009-12-13 00:00:00','2009-12-13 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
    Values('TRIOS1003','Sam','Pitroad','74 Templar St','Brampton','L6Y9B9','1989-08-18','M',0,'Indian','No special needs',1,2004,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
    Values('TRIOS1004','Priyanka','Sharma','76 Worthington Ave','Brampton','L7C9A9','1990-05-03','F',0,'Canadian','Wants quiet room',1,2070,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
    Values('TRIOS1005','Hiral','Patel','52 Rattlesnake Rd','Georgetown','L4C9A9','1990-05-19','M',0,'Indian','Wants quiet room',1,2001,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
    Values('TRIOS1006','Niku','Kalariya','56 Banting Cres','Cambridge','L7C9A9','1990-06-19','M',0,'Canadian','Wants 2 windows',1,2070,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
    Values('TRIOS1007','Utkarsh','Thakkar','64 Dougal Ave','Kitchener','M6C9A9','1990-07-08','M',0,'Pakistani','Wants large windows',1,2004,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
      Values('TRIOS1008','Peter','Shaw','72 Creekridge St','Caledon','M8B9A9','1989-07-03','M',0,'Russian','Wants 2 partners only',1,3001,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
        Values('TRIOS1009','Patrick','Moore','22 Owl St','Brampton','N2C9A9','1988-08-07','M',0,'Indian','Wants close to the elevator',1,2001,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

Insert into Students(Student_ID,Fname,Lname,Street,City,Zip_code,DOB,Sex,Category_ID,Nationality,Special_needs,Current_status,Course_ID,Comments,Created_on,Modified_on)
      Values('TRIOS1010','Roda','Dyke','36 Inder Heights','Toronto','M2B4A9','1990-03-09','M',0,'Latino','Wants corner room',1,3001,'','2009-12-17 00:00:00','2009-12-17 00:00:00');

/* Finished entering data into students table */

/* Insert data into instructor table */
INSERT INTO Instructor(Instructor_ID, Dept_ID)
    Values('INS1001','TECH001');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
    Values('INS1002','TECH002');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
    Values('INS1003','TECH003');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
      Values('INS1004','HLC001');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
      Values('INS1005','BUS001');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
      Values('INS1006','HLC002');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
      Values('INS1007','BUS002');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
      Values('INS1008','TECH004');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
      Values('INS1009','TECH005');

INSERT INTO Instructor(Instructor_ID, Dept_ID)
    Values('INS1010','HLC003');

/* Finished entering data into instructor */

/* Insert data into staff table */
INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
   VALUES ('TRIACC1001','Rakesh','Sharma','633 Rosedale Dr','Brampton','L6Y0W7','1990-11-14 00:00:00','M','Clerk','416-230-5678','2009-09-23 00:00:00','2009-09-23 00:00:00');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
  VALUES ('TRIACC1002','Suresh','Singh','393 BonnieBraes Dr','Brampton','L6Y2W8','1990-09-18','M','Manager','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
    VALUES ('TRIACC1003','Girish','Shah','768 Ireen Dr','Brampton','L6Y2W8','1990-09-18','M','Associate','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
      VALUES ('INS1010','Mitesh','Thakkar','89 Bushmill Cir','Brampton','L6Y2W8','1990-07-17','M','Instructor','647-788-5678','2009-0-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
        VALUES ('TRIACC1005','Anaya','Trivedi','96 Bonnieglen Farm blvd','Brampton','L6Y2W8','1990-08-13','M','Associate','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
        VALUES ('TRIACC1006','Aarna','Agrawal','87 McPherson Rd','Brampton','L6Y2W8','1990-08-18','M','Receptionist','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
        VALUES ('INS1006','Bharat','Singh','54 Banting Cres','Brampton','L6Y2W8','1988-05-04','M','Instructor','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
        VALUES ('TRIACC1008','Jayshree','Singh','79 Learmont Ave','Brampton','L6Y2W8','1988-08-08','M','Administrator','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
          VALUES ('TRIACC1009','Piyush','Rawat','36 Avonwick Dr','Brampton','L6Y2W8','1990-03-05','M','Associate','647-788-5678','2009-09-24','2009-09-24');

INSERT INTO Staff( Staff_id, Fname, Lname , Resi_Add , City , Zip_code, DOB , Sex , Position , Phone , Created_on, Modified_on)
        VALUES ('INS1002','Nisarg','Chaturvedi','99 Robert Parkway Dr','Brampton','L6Y2W8','1990-08-07','M','Instructor','647-788-5678','2009-09-24','2009-09-24');

/* Finish 10 records of Staff Table */

/* INSERT DATA INTO CONTACTS TABLE */

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
   VALUES('CON1001', 'TRIOS1001', '567089018','Abhi','Vyas','Brother','122 BonnieBraes Dr', 'Brampton','L6Y8T8','2896541222','2009-06-04','2009-06-04');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
      VALUES('CON1002', 'TRIOS1001', '339087681','Niktia','Trivedi','Sister','121 Learmont Ave', 'Caledon','L7Y8T8','6478989087','2009-06-04','2009-06-04');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
     VALUES('CON1003', 'TRIOS1002', '985679054','Darshak','Patel','Uncle','22 Creekridge St', 'Kitchener','L2Y7C8','6473345674','2009-06-04','2009-06-04');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
    VALUES('CON1004', 'TRIOS1002', '897456782','Dhruv','Sharma','Uncle','82 Peterrobertson Dr', 'Cambridge','L3Z8Z2','4165431222','2009-06-04','2009-06-04');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
     VALUES('CON1005', 'TRIOS1003', '987554543','Ketan','Agrawal','Brother','57 Pergola Way', 'Brampton','L7C4B9','6472252530','2009-06-04','2009-06-04');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
        VALUES('CON1006', 'TRIOS1003', '775443859','Manali','Patadia','Sister','56 Simson Dr', 'Ajax','L2Y0W7','4165671345','2009-06-07','2009-06-07');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
        VALUES('CON1007', 'TRIOS1004', '723414289','Stavan','Shah','Friend','43 Twisleton Dr', 'Caledon','L7C4T8','4167723451','2009-06-04','2009-06-04');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
       VALUES('CON1008', 'TRIOS1004', '6478951235','Kushal','Smith','Neighbor','76 Stevenson blvd', 'Brampton','L6Y2B9','2894561234','2009-06-09','2009-06-09');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
      VALUES('CON1009', 'TRIOS1005', '8964321269','Priyank','Soni','Friend','09 Ultraver Dr', 'Ajax','L2YY0T7','6478890765','2009-06-19','2009-06-19');

INSERT INTO Contacts(contact_ID , student_ID, SSN, Fname, Lname, Relation, Street_add, City, Zip_Code, Phone, Created_on , Modified_on)
      VALUES('CON1010', 'TRIOS1005', '987254778','Sapan','Shah','Brother','67 Pushpak Blvd', 'Brampton','L6Y8T2','2897423478','2009-06-25','2009-06-25');

/* Finish 10 records of Contacts Table */

/* Start data into courses */

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
   Values('BUSI_58','Business Administation','2009','INS1001','7','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
      Values('TECH_58','Applications Developer-With Internship','2009','INS1003','8','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
         Values('TECH_90','Enterprise Applications Developer-With Internship','2009','INS1003','8','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
            Values('TECH_50','Applications Developer-Without Internship','2009','INS1003','8','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
            Values('SOCI_20','Digital Marketing','2009','INS1007','9','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
               Values('HEAL_58','Medical Administation','2009','INS1005','6','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
                  Values('HEAL_50','Medical Administation-Without Internship','2009','INS1005','6','BUS1001');

INSERT INTO Courses(Course_ID, Course_Name, Year, Instructor_ID, Room_no, Dept_ID)
                     Values('HEAL_90','Pharmacy Assistant','2009','INS1005','6','BUS1001');

/* finish data enter into courses */

/* Starting to enter data in Courses_Students Table */

INSERT INTO Courses_Students(Student_ID, Course_ID)
   Values('BUSI_58','TRIOS1003');

INSERT INTO Courses_Students(Student_ID, Course_ID)
      Values('HEAL_90','TRIOS1007');

INSERT INTO Courses_Students(Student_ID, Course_ID)
         Values('SOCI_20','TRIOS1006');

INSERT INTO Courses_Students(Student_ID, Course_ID)
      Values('TECH_50','TRIOS1005');

INSERT INTO Courses_Students(Student_ID, Course_ID)
      Values('TECH_58','TRIOS1004');

 INSERT INTO Courses_Students(Student_ID, Course_ID)
          Values('TECH_50','TRIOS1003');

INSERT INTO Courses_Students(Student_ID, Course_ID)
          Values('TECH_58','TRIOS1009');

INSERT INTO Courses_Students(Student_ID, Course_ID)
            Values('BUSI_58','TRIOS1010');

INSERT INTO Courses_Students(Student_ID, Course_ID)
            Values('SOCI_20','TRIOS1003');

INSERT INTO Courses_Students(Student_ID, Course_ID)
            Values('BUSI_90','TRIOS1003');

/* Finished entering data in Courses_Students table */

/* Starting to enter data in table */

INSERT INTO Categories(Category_ID,Category_name)
    VALUES (1,'Junior');

INSERT INTO Categories(Category_ID,Category_name)
        VALUES (2,'Sophomore');

INSERT INTO Categories(Category_ID,Category_name)
      VALUES (3,'Graduate');

/* Finish 10 records of categories table */

/* START ENTER DATA INTO ADVISOR TABLE */
INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
   Values('TRIACC1008','BUS002','121');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
      Values('TRIACC1014','BUS001','122');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
      Values('TRIACC1021','BUS003','122');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
      Values('TRIACC1023','BUS002','123');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
      Values('TRIACC1012','BUS002','122');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
      Values('TRIACC1018','BUS002','121');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
      Values('TRIACC1019','BUS002','122');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
    Values('TRIACC1020','BUS002','123');

INSERT INTO Advisor(Advisor_ID , Dept_ID, Office_Location_ID)
    Values('TRIACC1025','BUS002','123');
/* FINISHED ENTER DATA INTO ADVISOR TABLE */

/* START ENTER DATA INTO OFFICE LOCATION */
INSERT INTO Office_Location(ID, Location)
   Values('121','BRAMPTON');

INSERT INTO Office_Location(ID, Location)
      Values('122','MISSISSAUGA');

INSERT INTO Office_Location(ID, Location)
      Values('123','WINDSOR');

INSERT INTO Office_Location(ID, Location)
      Values('124','KITCHENER');

INSERT INTO Office_Location(ID, Location)
      Values('125','LONDON');

/* FINISHED ENTERING DATA INTO OFFICE_LOCATION */

/* START ENTERING DATA INTO ACCOMODATION */

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
   Values('ACC001','TRIOS1006','TRIACC1025',1,'111','101');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
      Values('ACC002','TRIOS1003','TRIACC1002',2,'211','201');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
         Values('ACC003','TRIOS1002','TRIACC1002',1,'111','101');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
            Values('ACC004','TRIOS1001','TRIACC1025',1,'111','102');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
			Values('ACC005','TRIOS1005','TRIACC1025',2,'212','102');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
			Values('ACC006','TRIOS1004','TRIACC1002',1,'112','101');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
		Values('ACC007','TRIOS1008','TRIACC1025',2,'213','202');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
		Values('ACC008','TRIOS1009','TRIACC1002',1,'112','102');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
		Values('ACC009','TRIOS1010','TRIACC1009',2,'212','203');

INSERT INTO Accomodation(Accomodation_ID,Student_ID,Manager_ID,Accomodation_type_ID,Accomodation_num, Room_num  )
		Values('ACC010','TRIOS1007','TRIACC1010',2,'212','203');

/* FINISHED ENTERING DATA INTO ACCOMODATIONS TABLE */

/* START ENTERING DATA INTO ACCOMODATION_TYPE */

INSERT INTO Accomodation_Type(Accomodation_type_ID,Accomodation_type_name)
  VALUES('1','HALL');

INSERT INTO Accomodation_Type(Accomodation_type_ID,Accomodation_type_name)
    VALUES('2','FLAT');

/* FINISH ENTERING DATA INTO ACCOMODATION_TYPE */

/* START ENTERING DATA INTO HALL_OF_RESI */

INSERT INTO Hall_of_Resi(Hall_ID, Hall_Name, Hall_Address, Hall_phone, Halls_available, Advisor_ID, Accomodation_ID)
    VALUES('111','ROSE HALL','NEXT TO LIBRARY','905-456-7890','10','TRIACC1009','ACC010');

INSERT INTO Hall_of_Resi(Hall_ID, Hall_Name, Hall_Address, Hall_phone, Halls_available, Advisor_ID, Accomodation_ID)
    VALUES('112','JASMINE HALL','NEXT TO BUILDING H1','905-456-7870','9','TRIACC1008','ACC008');

INSERT INTO Hall_of_Resi(Hall_ID, Hall_Name, Hall_Address, Hall_phone, Halls_available, Advisor_ID, Accomodation_ID)
    VALUES('113','TULIP HALL','NEXT TO BUILDING H2','905-456-7880','8','TRIACC1007','ACC003');

INSERT INTO Hall_of_Resi(Hall_ID, Hall_Name, Hall_Address, Hall_phone, Halls_available, Advisor_ID, Accomodation_ID)
    VALUES('114','SUNFLOWER HALL','NEXT TO BUILDING H3','905-456-7860','7','TRIACC1006','ACC004');

INSERT INTO Hall_of_Resi(Hall_ID, Hall_Name, Hall_Address, Hall_phone, Halls_available, Advisor_ID, Accomodation_ID)
    VALUES('115','MARIGOLD HALL','NEXT TO BUILDING H4','905-456-7850','6','TRIACC1005','ACC005');

/* FINISH ENTERING DATA INTO HALL_OF_RESI */

/* START INSERT DATA INTO HALL_ROOM */

  INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
       Values(101,'111','2500');

  INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
      Values(102,'111','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
      Values(201,'112','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
      Values(202,'112','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
        Values(103,'113','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
        Values(104,'113','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
        Values(203,'114','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
        Values(204,'114','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
        Values(206,'115','2500');

INSERT INTO Hall_Room(Hall_Room_ID, Hall_ID, Monthly_rent)
      Values(205,'115','2500');

/* FINISH ENTERING DATA INTO HALL_ROOM
/* START ENTERING DATA INTO FLAT */

INSERT INTO Flat(Flat_Num, Address, Flats_available, Accomodation_ID)
  Values('211','Next to Central Lib','10','ACC010');

INSERT INTO Flat(Flat_Num, Address, Flats_available, Accomodation_ID)
    Values('212','Next to Western Lib','9','ACC010');

INSERT INTO Flat(Flat_Num, Address, Flats_available, Accomodation_ID)
    Values('213','Next to Building B101','8','ACC009');

INSERT INTO Flat(Flat_Num, Address, Flats_available, Accomodation_ID)
    Values('214','Next to Building B102','10','ACC010');

INSERT INTO Flat(Flat_Num, Address, Flats_available, Accomodation_ID)
      Values('215','Next to Building B103','9','ACC007');

/* FINISH ENTERING DATA INTO FLAT */

/* START INSERT DATA INTO FLAT_ROOM */

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
  Values(201,'211','3','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
    Values(202,'211','2','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
      Values(203,'211','1','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
        Values(204,'211','3','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
      Values(205,'212','4','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
      Values(206,'212','3','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
    Values(207,'213','4','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
      Values(208,'213','2','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
      Values(209,'213','1','3000');

INSERT INTO Flat_room(Flat_Room_ID, Flat_ID, Max_Persons,Monthly_rent)
      Values(210,'214','4','3000');

/* FINISH ENTERING DATA INTO FLAT_ROOM */

/* START ENTERING DATA INTO INSPECTION */

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
   Values('INS101','TRIACC1003','2009-05-14',1,'Needs a fresh coat of paint' ,'211203','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
      Values('INS102','TRIACC1007','2009-05-14',1,'Wall socket damaged' ,'211204','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
         Values('INS103','TRIACC1006','2009-05-14',1,'Water leakage in bathroom' ,'213208','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
        Values('INS104','TRIACC1003','2009-05-14',1,'Needs a fresh coat of paint' ,'213209','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
      Values('INS105','TRIACC1007','2009--05-08',1,'Needs a fresh coat of paint' ,'214210','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
         Values('INS106','TRIACC1006','2009-05-14',1,'Broken study table' ,'211203','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
       Values('INS107','TRIACC1003','2009-05-16',1,'Needs a fresh coat of paint' ,'212206','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
        Values('INS108','TRIACC1007','2009-05-17',1,'','214210','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
          Values('INS109','TRIACC1006','2009-05-18',1,'Wall socket damaged' ,'211204','2009-09-30','2009-09-30');

INSERT INTO Inspection(Inspection_ID, Inspector_ID, Date_of_inspection, Conditional_satisfaction, Additional_comments, Inspection_flat_num, Created_on, Modified_on)
          Values('INS1010','TRIACC1003','2009-05-24',1,'Water leakage in bathroom' ,'213208','2009-09-30','2009-09-30');

/* FINISH ENTERING DATA INTO  INSPECTION */

/* START ENTERING DATA INTO PAYMENTS */

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
  Values('P100101','INV1001','2009-08-09','VISA','200.20','2009-08-09','2009-08-09');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
    Values('P100102','INV1001','2009-09-29','VISA','800.80','2009-09-29','2009-09-29');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
      Values('P100201','INV1002','2009-08-28','VISA','200.20','2009-08-28','2009-08-28');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
        Values('P100301','INV1003','2009-08-28','VISA','333.33','2009-08-28','2009-08-28');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
          Values('P100302','INV1003','2009-08-30','DEBIT','333.33','2009-08-30','2009-08-30');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
            Values('P100303','INV1003','2009-08-30','VISA','333.34','2009-08-30','2009-08-30');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
              Values('P100401','INV1004','2009-10-02','MC','200.20','2009-10-02','2009-10-02');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
                Values('P100402','INV1004','2009-10-05','MC','800.20','2009-10-05','2009-10-05');

INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
                  Values('P100501','INV1005','2009-10-11','VISA','100.00','2009-10-11','2009-10-11');

  INSERT INTO Payments(Payment_ID,Inv_ID,Date_of_payment,Method_of_payment,Amount,Create_on,Modified_on)
                    Values('P100601','INV1006','2009-10-15','AMEX','100.00','2009-10-15','2009-10-15');

/* FINISH DATA INTO PAYMENTS */

/*Start entering data into invoices */
INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
  VALUES('INV1001','2009-09-29','LSE1001',1,'TRIOS1002','1','2009-09-29','2009-10-05','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
    VALUES('INV1002','2009-01-30','LSE1001',2,'TRIOS1002','1','2009-01-30','2009-02-05','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
      VALUES('INV1003','2010-05-30','LSE1001',3,'TRIOS1002','1','2010-05-30','2010-06-05','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
        VALUES('INV1004','2010-05-30','LSE1001',4,'TRIOS1002','1','2010-05-30','2010-06-05','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
          VALUES('INV1005','2009-09-30','LSE1002',1,'TRIOS1003','1','2009-09-30','2009-10-06','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
      VALUES('INV1006','2010-09-07','LSE1002',2,'TRIOS1003','1','2010-09-07','2010-09-14','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
      VALUES('INV1007','2010-05-30','LSE1002',3,'TRIOS1003','1','2010-05-30','2010-06-06','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
        VALUES('INV1008','2010-09-30','LSE1002',4,'TRIOS1003','1','2010-09-30','2010-10-06','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
          VALUES('INV1009','2009-09-30','LSE1003',1,'TRIOS1004','1','2009-09-30','2009-10-06','N');

INSERT INTO Invoices(Inv_ID,Inv_date,Lease_ID,Quarter,Student_ID,Accomodation_Type,First_reminder,second_reminder,payment_status)
          VALUES('INV1010','2010-01-30','LSE1003',2,'TRIOS1004','1','2010-01-30','2010-02-06','N');

/* START ENTERING INTO LEASES */

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
  Values('LSE1001','TRIOS1001','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
    Values('LSE1002','TRIOS1002','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
      Values('LSE1003','TRIOS1003','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
        Values('LSE1004','TRIOS1004','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
          Values('LSE1005','TRIOS1005','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
      Values('LSE1006','TRIOS1006','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
        Values('LSE1007','TRIOS1007','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');


INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
       Values('LSE1008','TRIOS1008','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
        Values('LSE1009','TRIOS1009','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

INSERT INTO Leases(Lease_ID, student_ID, StartDate,EndDate,Actual_start,Actual_end,Duration,Created_on, Modified_On)
          Values('LSE1010','TRIOS1010','2009-10-01','2010-10-01','2009-10-01','2010-10-01',4,'2009-09-30','2009-09-30');

/* FINISHED ENTERING INTO LEASES */