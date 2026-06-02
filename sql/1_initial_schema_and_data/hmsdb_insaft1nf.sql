USE HMDB;

-- Insert data into Patient_personal_info
INSERT INTO Patient_personal_info (Pat_ID, Pat_fname, Pat_mname, Pat_lname, Pat_gender, Pat_DOB, Pat_contactno, Pat_emailID, Pat_Address, Pat_MedHistory, Pat_BloodGroup) VALUES
(1, 'Chinonso', 'Emeka', 'Okafor', 'M', '1990-05-15', 8031234567, 'chinonso.okafor@example.com', '123 Main St, Lagos', 'None', 'O+'),
(2, 'Amaka', 'Nneka', 'Ibe', 'F', '1985-11-20', 8022345678, 'amaka.ibe@example.com', '456 Maple Ave, Enugu', 'Asthma', 'A-'),
(3, 'Ifeoma', 'Chukwu', 'Nwankwo', 'F', '1992-02-10', 8053456789, 'ifeoma.nwankwo@example.com', '789 Elm St, Port Harcourt', 'Diabetes', 'B+'),
(4, 'Obinna', 'Ifeanyi', 'Obi', 'M', '1988-08-30', 8064567890, 'obinna.obi@example.com', '321 Pine St, Abuja', 'None', 'AB+'),
(5, 'Uche', 'Cynthia', 'Nwosu', 'F', '1995-01-25', 8075678901, 'uche.nwosu@example.com', '654 Oak St, Owerri', 'None', 'O-');

-- Insert data into Department
INSERT INTO Department (Dept_ID, Dept_name) VALUES
('D01', 'Cardiology'),
('D02', 'Pediatrics'),
('D03', 'Orthopedics'),
('D04', 'Neurology'),
('D05', 'General Medicine');

-- Insert data into Doctor_info
INSERT INTO Doctor_info (Doc_ID, Doc_fname, Doc_mname, Doc_lname, Doc_gender, Doc_DOB, Doc_contactno, Doc_emailID, Doc_Address, Doc_Specialist, Doc_DeptID, Doc_charge) VALUES
('D001', 'Samuel', 'Olu', 'Adesina', 'M', '1978-03-12', 7012345678, 'samuel.adesina@example.com', '123 Hospital Rd, Lagos', 'Cardiologist', 'D01', 5000),
('D002', 'Joyce', 'Ada', 'Emeka', 'F', '1980-06-22', 7023456789, 'joyce.emeka@example.com', '456 Clinic St, Enugu', 'Pediatrician', 'D02', 4500),
('D003', 'Chijioke', 'Ugo', 'Obinna', 'M', '1975-12-05', 7034567890, 'chijioke.obinna@example.com', '789 Doctor St, Port Harcourt', 'Orthopedic Surgeon', 'D03', 6000),
('D004', 'Ngozi', 'Chika', 'Nwachukwu', 'F', '1985-09-15', 7045678901, 'ngozi.nwachukwu@example.com', '321 Health Ave, Abuja', 'Neurologist', 'D04', 7000),
('D005', 'Ikenna', 'Chinedu', 'Okeke', 'M', '1990-04-18', 7056789012, 'ikena.okeke@example.com', '654 Medical St, Owerri', 'General Practitioner', 'D05', 4000);

-- Insert data into HODs
INSERT INTO HODs (Doc_ID, Dept_ID) VALUES
('D001', 'D01'),
('D002', 'D02'),
('D003', 'D03'),
('D004', 'D04'),
('D005', 'D05');

-- Insert data into Appointment
INSERT INTO Appointment (App_ID, Pat_ID, Doc_ID, App_Date_Time, App_Description) VALUES
('A001', 1, 'D001', '2024-08-01 09:00:00', 'Routine check-up'),
('A002', 2, 'D002', '2024-08-02 10:00:00', 'Consultation for asthma'),
('A003', 3, 'D003', '2024-08-03 11:00:00', 'Knee pain evaluation'),
('A004', 4, 'D004', '2024-08-04 14:00:00', 'Headache assessment'),
('A005', 5, 'D005', '2024-08-05 15:00:00', 'General health check');

-- Insert data into Visit
INSERT INTO Visit (Visit_ID, App_ID, Pat_weight, Pat_height, Visit_charge) VALUES
('V001', 'A001', 70, '5.9', 2000),
('V002', 'A002', 60, '5.5', 1500),
('V003', 'A003', 80, '6.0', 2500),
('V004', 'A004', 75, '5.8', 2200),
('V005', 'A005', 65, '5.7', 1800);

-- Insert data into Visit_Diseases
INSERT INTO Visit_Diseases (Visit_ID, Disease_name) VALUES
('V001', 'None'),
('V002', 'Asthma'),
('V003', 'Knee Pain'),
('V004', 'Migraine'),
('V005', 'None');

-- Insert data into Medicines
INSERT INTO Medicines (Med_ID, Med_Name, Med_company, Med_price, Med_dose, Med_type) VALUES
('M001', 'Paracetamol', 'Nigerian Pharma', 150, '500mg', 'Tablet'),
('M002', 'Ibuprofen', 'Health Co.', 200, '400mg', 'Tablet'),
('M003', 'Amoxicillin', 'MediCare', 300, '250mg', 'Capsule'),
('M004', 'Metformin', 'Drug Makers', 250, '500mg', 'Tablet'),
('M005', 'Ciprofloxacin', 'Best Meds', 350, '500mg', 'Tablet');

-- Insert data into Test
INSERT INTO Test (Test_ID, Test_Name, Test_Prereq) VALUES
('T01', 'Blood Test', 'None'),
('T02', 'X-Ray', 'None'),
('T03', 'MRI Scan', 'Neurological symptoms'),
('T04', 'CT Scan', 'Headache'),
('T05', 'Urine Test', 'None');

-- Insert data into Treatment
INSERT INTO Treatment (Visit_ID, App_ID, Test_ID, Test_Result, Current_Treatment, Extra_Comment) VALUES
('V001', 'A001', 'T01', TRUE, 'General check-up', NULL),
('V002', 'A002', 'T01', TRUE, 'Asthma control', 'Prescribed inhaler'),
('V003', 'A003', 'T02', FALSE, 'Knee pain treatment', 'Recommended physiotherapy'),
('V004', 'A004', 'T03', TRUE, 'Migraine treatment', 'Advised rest and hydration'),
('V005', 'A005', 'T01', TRUE, 'General health advice', 'Maintain a balanced diet');

-- Insert data into Treatment_Medicines
INSERT INTO Treatment_Medicines (Visit_ID, App_ID, Test_ID, Medicine_ID) VALUES
('V001', 'A001', 'T01', 'M001'),
('V002', 'A002', 'T01', 'M002'),
('V003', 'A003', 'T02', 'M003'),
('V004', 'A004', 'T03', 'M004'),
('V005', 'A005', 'T01', 'M001');

-- Insert data into Billing_info
INSERT INTO Billing_info (Bill_ID, Pat_ID, Visit_ID, Billing_amount, Billing_date, Payment_status) VALUES
('B001', 1, 'V001', 2000, '2024-08-01', 'Paid'),
('B002', 2, 'V002', 1500, '2024-08-02', 'Paid'),
('B003', 3, 'V003', 2500, '2024-08-03', 'Unpaid'),
('B004', 4, 'V004', 2200, '2024-08-04', 'Paid'),
('B005', 5, 'V005', 1800, '2024-08-05', 'Unpaid');

-- Insert data into Billing_Medicines
INSERT INTO Billing_Medicines (Bill_ID, Medicine_ID, Quantity) VALUES
('B001', 'M001', 2),
('B002', 'M002', 1),
('B003', 'M003', 3),
('B004', 'M004', 1),
('B005', 'M001', 2);

