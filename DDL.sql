-- DDL commands used - CREATE,ALTER,DROP,RENAME


-- Create the HMS database if it doesn't exist
CREATE DATABASE IF NOT EXISTS HMS;

USE HMS;

CREATE TABLE admin (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(300) NOT NULL,
  reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updation_date DATE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE courses (
  id INT NOT NULL AUTO_INCREMENT,
  course_code VARCHAR(255) DEFAULT NULL,
  course_sn VARCHAR(255) DEFAULT NULL,
  course_fn VARCHAR(255) DEFAULT NULL,
  posting_date TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE registration (
  id INT NOT NULL AUTO_INCREMENT,
  roomno INT DEFAULT NULL,
  seater INT DEFAULT NULL,
  feespm INT DEFAULT NULL,
  foodstatus INT DEFAULT NULL,
  stayfrom DATE DEFAULT NULL,
  duration INT DEFAULT NULL,
  course VARCHAR(500) DEFAULT NULL,
  regno INT DEFAULT NULL,
  firstName VARCHAR(500) DEFAULT NULL,
  middleName VARCHAR(500) DEFAULT NULL,
  lastName VARCHAR(500) DEFAULT NULL,
  gender VARCHAR(250) DEFAULT NULL,
  contactno BIGINT(11) DEFAULT NULL,
  emailid VARCHAR(500) DEFAULT NULL,
  egycontactno BIGINT(11) DEFAULT NULL,
  guardianName VARCHAR(500) DEFAULT NULL,
  guardianRelation VARCHAR(500) DEFAULT NULL,
  guardianContactno BIGINT(11) DEFAULT NULL,
  corresAddress VARCHAR(500) DEFAULT NULL,
  corresCIty VARCHAR(500) DEFAULT NULL,
  corresState VARCHAR(500) DEFAULT NULL,
  corresPincode INT DEFAULT NULL,
  pmntAddress VARCHAR(500) DEFAULT NULL,
  pmntCity VARCHAR(500) DEFAULT NULL,
  pmnatetState VARCHAR(500) DEFAULT NULL,
  pmntPincode INT DEFAULT NULL,
  postingDate TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  updationDate VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  id INT NOT NULL AUTO_INCREMENT,
  seater INT DEFAULT NULL,
  room_no INT DEFAULT NULL,
  fees INT DEFAULT NULL,
  posting_date TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY room_no (room_no)
);

CREATE TABLE states (
  id INT NOT NULL AUTO_INCREMENT,
  State VARCHAR(150) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE userlog (
  id INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  userEmail VARCHAR(255) NOT NULL,
  userIp VARBINARY(16) NOT NULL,
  city VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  loginTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE userregistration (
  id INT NOT NULL AUTO_INCREMENT,
  regNo VARCHAR(255) DEFAULT NULL,
  firstName VARCHAR(255) DEFAULT NULL,
  middleName VARCHAR(255) DEFAULT NULL,
  lastName VARCHAR(255) DEFAULT NULL,
  gender VARCHAR(255) DEFAULT NULL,
  contactNo BIGINT(20) DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  password VARCHAR(255) DEFAULT NULL,
  regDate TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  updationDate VARCHAR(45) DEFAULT NULL,
  passUdateDate VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY email (email)
);


-- ALTER TABLE userlog
-- ADD test VARCHAR(15) NOT NULL;


-- RENAME TABLE userregistration TO user;

-- DROP TABLE IF EXISTS userlog;
-- DROP DATABASE IF EXISTS HMS;



-- DML Commands - INSERT, UPDATE, DELETE, SELECT -------------------->
INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2023-10-11 22:45:43'),
(2, 2, 201, 6000, '2023-10-12 01:30:47'),
(3, 2, 200, 6000, '2023-10-12 01:30:58'),
(4, 3, 112, 4000, '2023-10-12 01:31:07'),
(5, 5, 132, 2000, '2023-10-12 01:31:15'),
(6, 6, 232, 1000, '2023-10-12 01:31:15')


INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2023-10-12 14:56:45');


INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');



UPDATE rooms
SET seater = 1
WHERE id = 1;

UPDATE rooms
SET fees = 5000
WHERE id = 3;

DELETE FROM rooms
ORDER BY id DESC
LIMIT 1;

SELECT * FROM rooms
WHERE fees <= 5000;
