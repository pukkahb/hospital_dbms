-- Create the main database
DROP DATABASE HMDB;
CREATE DATABASE HMDB;
USE HMDB;

-- Create Patient table
CREATE TABLE Patient (
    Pat_ID VARCHAR(10) PRIMARY KEY,
    Pat_fname VARCHAR(50),
    Pat_mname VARCHAR(50),
    Pat_lname VARCHAR(50),
    Pat_gender CHAR(1),
    Pat_DOB DATE,
    Pat_contactno BIGINT,
    Pat_emailID VARCHAR(100),
    Pat_Address VARCHAR(255),
    Pat_MedHistory VARCHAR(255),
    Pat_BloodGroup VARCHAR(5)
);

-- Create Department table
CREATE TABLE Department (
    Dept_ID VARCHAR(10) PRIMARY KEY,
    Dept_name VARCHAR(50)
);

-- Create Doctor table
CREATE TABLE Doctor (
    Doc_ID VARCHAR(10) PRIMARY KEY,
    Doc_fname VARCHAR(50),
    Doc_mname VARCHAR(50),
    Doc_lname VARCHAR(50),
    Doc_gender CHAR(1),
    Doc_DOB DATE,
    Doc_contactno BIGINT,
    Doc_emailID VARCHAR(100),
    Doc_Address VARCHAR(255),
    Doc_Specialist VARCHAR(50),
    Doc_DeptID VARCHAR(10),
    Doc_charge INT,
    FOREIGN KEY (Doc_DeptID) REFERENCES Department(Dept_ID)
);

-- Create HODs table
CREATE TABLE HODs (
    Doc_ID VARCHAR(10),
    Dept_ID VARCHAR(10),
    PRIMARY KEY (Doc_ID, Dept_ID),
    FOREIGN KEY (Doc_ID) REFERENCES Doctor(Doc_ID),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

-- Create Appointment table
CREATE TABLE Appointment (
    App_ID VARCHAR(10) PRIMARY KEY,
    Pat_ID VARCHAR(10),
    Doc_ID VARCHAR(10),
    App_Date_Time DATETIME,
    App_Description VARCHAR(255),
    FOREIGN KEY (Pat_ID) REFERENCES Patient(Pat_ID),
    FOREIGN KEY (Doc_ID) REFERENCES Doctor(Doc_ID)
);

-- Create Visit table
CREATE TABLE Visit (
    Visit_ID VARCHAR(10) PRIMARY KEY,
    App_ID VARCHAR(10),
    Pat_weight INT,
    Pat_height VARCHAR(5),
    Disease_name VARCHAR(50),
    Visit_charge INT,
    FOREIGN KEY (App_ID) REFERENCES Appointment(App_ID)
);

-- Create Medicines table
CREATE TABLE Medicines (
    Med_ID VARCHAR(10) PRIMARY KEY,
    Med_Name VARCHAR(100),
    Med_company VARCHAR(100),
    Med_price DECIMAL(10, 2),
    Med_dose VARCHAR(50),
    Med_type VARCHAR(50)
);

-- Create Test table
CREATE TABLE Test (
    Test_ID VARCHAR(10) PRIMARY KEY,
    Test_Name VARCHAR(100),
    Test_Prereq VARCHAR(100)
);

-- Create Treatment table
CREATE TABLE Treatment (
    Visit_ID VARCHAR(10),
    App_ID VARCHAR(10),
    Test_ID VARCHAR(10),
    Test_Result BOOLEAN,
    Current_Treatment VARCHAR(255),
    Extra_Comment VARCHAR(255),
    PRIMARY KEY (Visit_ID, App_ID, Test_ID),
    FOREIGN KEY (Visit_ID) REFERENCES Visit(Visit_ID),
    FOREIGN KEY (App_ID) REFERENCES Appointment(App_ID),
    FOREIGN KEY (Test_ID) REFERENCES Test(Test_ID)
);

-- Create Rooms table
CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY,
    Room_Type VARCHAR(50),
    Room_Capacity INT,
    Room_Charges DECIMAL(10, 2)
);

-- Create Staff table
CREATE TABLE Staff (
    Staff_ID VARCHAR(10),
    Dept_ID VARCHAR(6),
    Staff_fname VARCHAR(40) NOT NULL,
    Staff_mname VARCHAR(40),
    Staff_lname VARCHAR(40),
    Staff_gender VARCHAR(2) NOT NULL,
    Staff_contactno BIGINT NOT NULL,
    Staff_type VARCHAR(30),
    Staff_roomassigned1 INT NOT NULL,
    Staff_roomassigned2 INT,
    Staff_dutystarttime TIME NOT NULL,
    Staff_dutyendtime TIME NOT NULL,
    Staff_holiday VARCHAR(10),
    Staff_Charge INT NOT NULL,
    PRIMARY KEY (Staff_ID, Dept_ID),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
    FOREIGN KEY (Staff_roomassigned1) REFERENCES Rooms(Room_ID),
    FOREIGN KEY (Staff_roomassigned2) REFERENCES Rooms(Room_ID)
);

-- Create In_Patients table
CREATE TABLE In_Patients (
    In_Patient_ID VARCHAR(10) PRIMARY KEY,
    Pat_ID VARCHAR(10),
    Room_ID INT,
    Admission_Date DATE,
    Discharge_Date DATE,
    FOREIGN KEY (Pat_ID) REFERENCES Patient(Pat_ID),
    FOREIGN KEY (Room_ID) REFERENCES Rooms(Room_ID)
);

-- Create Out_patients table
CREATE TABLE Out_patients (
    Out_Patient_ID VARCHAR(10) PRIMARY KEY,
    Pat_ID VARCHAR(10),
    Visit_Date DATE,
    Treatment_Provided VARCHAR(255),
    FOREIGN KEY (Pat_ID) REFERENCES Patient(Pat_ID)
);

-- Create Billing_info table
CREATE TABLE Billing_info (
    Bill_ID VARCHAR(10) PRIMARY KEY,
    Pat_ID VARCHAR(10),
    Visit_ID VARCHAR(10),
    App_ID VARCHAR(10),
    Doc_ID VARCHAR(10),
    Medicine_ID VARCHAR(10),
    Room_ID INT,
    No_of_Days INT,
    Staff_ID VARCHAR(10),
    Health_Card BOOLEAN,
    FOREIGN KEY (Pat_ID) REFERENCES Patient(Pat_ID),
    FOREIGN KEY (Visit_ID) REFERENCES Visit(Visit_ID),
    FOREIGN KEY (App_ID) REFERENCES Appointment(App_ID),
    FOREIGN KEY (Doc_ID) REFERENCES Doctor(Doc_ID),
    FOREIGN KEY (Medicine_ID) REFERENCES Medicines(Med_ID),
    FOREIGN KEY (Room_ID) REFERENCES Rooms(Room_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);

-- Create Feedback table
CREATE TABLE Feedback (
    Feedback_ID VARCHAR(10) PRIMARY KEY,
    Pat_ID VARCHAR(10),
    Feedback_Date DATE,
    Feedback_Comment VARCHAR(255),
    Feedback_Rating INT CHECK (Feedback_Rating BETWEEN 1 AND 5),
    FOREIGN KEY (Pat_ID) REFERENCES Patient(Pat_ID)
);

