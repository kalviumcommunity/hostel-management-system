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

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


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


RENAME TABLE userregistration TO user;

-- DROP TABLE IF EXISTS userlog;
-- DROP DATABASE IF EXISTS HMS;



-- DML Commands - INSERT, UPDATE, DELETE, SELECT -------------------->
-- UPDATE rooms
-- SET seater = 1
-- WHERE id = 1;

-- UPDATE rooms
-- SET fees = 5000
-- WHERE id = 3;

-- DELETE FROM rooms
-- ORDER BY id DESC
-- LIMIT 1;

-- SELECT * FROM rooms
-- WHERE fees <= 5000;


INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2023-10-11 22:45:43'),
(2, 2, 201, 6000, '2023-10-12 01:30:47'),
(3, 2, 200, 6000, '2023-10-12 01:30:58'),
(4, 3, 112, 4000, '2023-10-12 01:31:07'),
(5, 5, 132, 2000, '2023-10-12 01:31:15'),
(6, 6, 232, 1000, '2023-10-12 01:31:15')


INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2023-10-12 14:56:45');

INSERT INTO `adminlog` (`id`, `adminid`, `ip`, `logintime`)
VALUES
(1, 1, 0x3a3a31, '2023-10-10 20:45:00'),
(2, 1, 0x3a3a31, '2023-10-12 20:45:00'),
(3, 1, 0x3a3a31, '2023-10-15 20:45:00'); 




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

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'akash.lpu1@gmail.com', 'Test@1234', '2023-10-10 20:31:45', '2023-10-10');


INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2023-10-14 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2023-10-14 19:31:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2023-10-14 19:31:42'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2023-10-14 19:31:42'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2023-10-14 19:31:42'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2023-10-14 19:31:42'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2023-10-14 19:31:42');

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) 
VALUES
(1, 101, 5, 60000, 1, '2023-10-21', 6, 'B10992', 12345, 'Akash', 'd', 'Singh', 'male', 1234567890, 'pr@gmail.com', 1236547890, 'ABC', 'XYZ', 98756328808, 'ABC 12345 XYZ Street', 'Old Delhi', 'Delhi (NCT)', 110001, 'ABC 12345 XYZ Street', 'Old Delhi', 'Delhi (NCT)', 110002, '2023-10-21 14:58:26', NULL),
(2, 101, 5, 90000, 1, '2023-10-21', 6, 'MBA75', 12346, 'Prakash', 'd', 'Sing', 'male', 1234567890, 'pr@gmail.com', 1236547890, 'ABC', 'XYZ', 98756328808, 'ABC 12345 XYZ Street', 'Old Delhi', 'Delhi (NCT)', 110001, 'ABC 12345 XYZ Street', 'Old Delhi', 'Delhi (NCT)', 110002, '2023-10-21 14:58:26', NULL),
(3, 100, 5, 50000, 1, '2023-10-21', 6, 'B10992', 12347, 'Dhomi', 'd', 'Ketu', 'female', 1234567890, 'dk@gmail.com', 1236547890, 'ABC', 'XYZ', 98756320000, 'ABC 12345 XYZ Street', 'New Delhi', 'Delhi (NCT)', 110001, 'ABC 12345 XYZ Street', 'New Delhi', 'Delhi (NCT)', 110001, '2023-10-21 14:58:26', NULL)


INSERT INTO `user` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, '12345', 'Akash', 'd', 'Singh', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2023-10-23 14:56:18', NULL, NULL),
(2, '12346', 'Prakash', 'd', 'Singh', 'male', 1234567890, 'test2@gmail.com', 'Test@1234', '2023-10-23 14:56:18', NULL, NULL),
(3, '12347', 'Dhoomi', 'd', 'Ketu', 'female', 1234567890, 'test3@gmail.com', 'Test@1234', '2023-10-23 14:56:18', NULL, NULL)




--  Role-Based Access Control  ------------------------------->

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE privileges (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE role_privilege (
  id INT NOT NULL AUTO_INCREMENT,
  role_id INT NOT NULL,
  privilege_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles(id),
  FOREIGN KEY (privilege_id) REFERENCES privileges(id)
);


ALTER TABLE admin
ADD role_id INT;

ALTER TABLE user
ADD role_id INT;

INSERT INTO roles (name) VALUES ('admin'), ('user');

-- Create Privileges
INSERT INTO privileges (name) VALUES ('edit_content'), ('view_content');

-- Role-Privilege Associations
INSERT INTO role_privilege (role_id, privilege_id)
VALUES
  ((SELECT id FROM roles WHERE name = 'admin'), (SELECT id FROM privileges WHERE name = 'edit_content')),
  ((SELECT id FROM roles WHERE name = 'admin'), (SELECT id FROM privileges WHERE name = 'view_content')),
  ((SELECT id FROM roles WHERE name = 'user'), (SELECT id FROM privileges WHERE name = 'view_content'));

-- Update Admin Role
UPDATE admin SET role_id = (SELECT id FROM roles WHERE name = 'admin');

-- Update Role for All Users
UPDATE user SET role_id = (SELECT id FROM roles WHERE name = 'user');



-- Advanced SQL Queries - Joins, subqueries -------------------------------------------->

-- SELECT registration.*, courses.course_code, courses.course_sn
-- FROM registration
-- INNER JOIN courses ON registration.course = courses.course_fn;

-- SELECT registration.*
-- FROM registration
-- LEFT JOIN rooms ON registration.roomno = rooms.room_no
-- WHERE rooms.room_no IS NULL;

-- SELECT
--     (SELECT COUNT(*) FROM admin) AS total_admins,
--     (SELECT COUNT(*) FROM admin WHERE role_id = 2) AS total_admins_2;

-- SELECT *
-- FROM registration
-- WHERE regno IN (SELECT regno FROM user WHERE role_id = 1);


-- Select the course code, count of registrations, and total fees
SELECT
    courses.course_code,
    COUNT(registration.id) AS total_registrations
    SUM(registration.feespm) AS total_fees 
FROM courses
LEFT JOIN registration ON courses.course_code = registration.course 
GROUP BY courses.course_code; 


SELECT id, username, email
FROM admin
WHERE EXISTS (
    SELECT 1
    FROM adminlog
    WHERE adminlog.adminid = admin.id
);

SELECT r1.room_no AS room1, r2.room_no AS room2
FROM rooms r1
JOIN rooms r2 ON r1.seater = r2.seater AND r1.room_no < r2.room_no;


-- Indexing and query optimization -------------------------------------------------------->

CREATE INDEX idx_regno ON registration (regno);
CREATE INDEX idx_course_code ON courses (course_code);

-- Query plan
EXPLAIN SELECT * FROM registration WHERE regno = 12345;

-- Select specific columns
SELECT regno, firstName, lastName FROM registration WHERE regno = 12345;

-- Select all columns (useful when you need all columns)
SELECT * FROM registration WHERE regno = 12345;

-- Less efficient query
SELECT * FROM registration WHERE YEAR(stayfrom) = 2023;

-- More efficient query (date range)
SELECT * FROM registration WHERE stayfrom >= '2023-01-01' AND stayfrom < '2024-01-01';




