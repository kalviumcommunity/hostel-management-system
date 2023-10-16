-- Create the HMS database if it doesn't exist
CREATE DATABASE IF NOT EXISTS HMS;
USE HMS;

-- Create the Patient table
CREATE TABLE IF NOT EXISTS Patient (
    email varchar(50) PRIMARY KEY,
    password varchar(30) NOT NULL,
    name varchar(50) NOT NULL,
    address varchar(60) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

-- Create the MedicalHistory table
CREATE TABLE IF NOT EXISTS MedicalHistory (
    id int PRIMARY KEY,
    date DATE NOT NULL,
    conditions VARCHAR(100) NOT NULL, 
    surgeries VARCHAR(100) NOT NULL, 
    medication VARCHAR(100) NOT NULL
);


ALTER TABLE Patient
ADD phone_number VARCHAR(15) NOT NULL;


DROP TABLE IF EXISTS Patient;

DROP DATABASE IF EXISTS HMS;