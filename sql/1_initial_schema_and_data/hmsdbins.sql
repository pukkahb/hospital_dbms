USE HMDB;

-- Insert data into Patient_personal_info
INSERT INTO Patient (Pat_ID, Pat_fname, Pat_mname, Pat_lname, Pat_gender, Pat_DOB, Pat_contactno, Pat_emailID, Pat_Address, Pat_MedHistory, Pat_BloodGroup) VALUES
('P001', 'Chinonso', 'Emeka', 'Okafor', 'M', '1990-05-15', 8031234567, 'chinonso.okafor@example.com', '123 Main St, Lagos', 'None', 'O+'),
('P002', 'Amaka', 'Nneka', 'Ibe', 'F', '1985-11-20', 8022345678, 'amaka.ibe@example.com', '456 Maple Ave, Enugu', 'Asthma', 'A-'),
('P003', 'Ifeoma', 'Chukwu', 'Nwankwo', 'F', '1992-02-10', 8053456789, 'ifeoma.nwankwo@example.com', '789 Elm St, Port Harcourt', 'Diabetes', 'B+'),
('P004', 'Obinna', 'Ifeanyi', 'Obi', 'M', '1988-08-30', 8064567890, 'obinna.obi@example.com', '321 Pine St, Abuja', 'None', 'AB+'),
('P005', 'Uche', 'Cynthia', 'Nwosu', 'F', '1995-01-25', 8075678901, 'uche.nwosu@example.com', '654 Oak St, Owerri', 'None', 'O-'),
('P006', 'Emeka', 'Obinna', 'Chukwudi', 'M', '1989-07-16', 8086789012, 'emeka.chukwudi@example.com', '111 Cedar St, Lagos', 'None', 'O+'),
('P007', 'Ngozi', 'Chidera', 'Eze', 'F', '1993-03-09', 8097890123, 'ngozi.eze@example.com', '222 Birch St, Enugu', 'Hypertension', 'A+'),
('P008', 'Chukwuemeka', 'Clement', 'Okoro', 'M', '1982-12-12', 8108901234, 'chukwuemeka.okoro@example.com', '333 Cedar Rd, Port Harcourt', 'None', 'B-'),
('P009', 'Chinyere', 'Ebere', 'Nwankwo', 'F', '1994-10-20', 8119012345, 'chinyere.nwankwo@example.com', '444 Elm Ave, Abuja', 'None', 'AB-'),
('P010', 'Ifeanyi', 'Obinna', 'Okwu', 'M', '1981-04-27', 8120123456, 'ifeanyi.okwu@example.com', '555 Maple St, Owerri', 'Diabetes', 'O-');

-- Insert data into Department
INSERT INTO Department (Dept_ID, Dept_name) VALUES
('D01', 'Cardiology'),
('D02', 'Pediatrics'),
('D03', 'Orthopedics'),
('D04', 'Neurology'),
('D05', 'General Medicine'),
('D06', 'Dermatology'),
('D07', 'Oncology'),
('D08', 'Gastroenterology'),
('D09', 'Ophthalmology'),
('D10', 'Dentistry');

-- Insert data into Doctor_info
INSERT INTO Doctor (Doc_ID, Doc_fname, Doc_mname, Doc_lname, Doc_gender, Doc_DOB, Doc_contactno, Doc_emailID, Doc_Address, Doc_Specialist, Doc_DeptID, Doc_charge) VALUES
('D001', 'Samuel', 'Olu', 'Adesina', 'M', '1978-03-12', 7012345678, 'samuel.adesina@example.com', '123 Hospital Rd, Lagos', 'Cardiologist', 'D01', 5000),
('D002', 'Joyce', 'Ada', 'Emeka', 'F', '1980-06-22', 7023456789, 'joyce.emeka@example.com', '456 Clinic St, Enugu', 'Pediatrician', 'D02', 4500),
('D003', 'Chijioke', 'Ugo', 'Obinna', 'M', '1975-12-05', 7034567890, 'chijioke.obinna@example.com', '789 Doctor St, Port Harcourt', 'Orthopedic Surgeon', 'D03', 6000),
('D004', 'Ngozi', 'Chika', 'Nwachukwu', 'F', '1985-09-15', 7045678901, 'ngozi.nwachukwu@example.com', '321 Health Ave, Abuja', 'Neurologist', 'D04', 7000),
('D005', 'Ikenna', 'Chinedu', 'Okeke', 'M', '1990-04-18', 7056789012, 'ikena.okeke@example.com', '654 Medical St, Owerri', 'General Practitioner', 'D05', 4000),
('D006', 'Chigozie', 'Ifesinachi', 'Eze', 'F', '1983-07-22', 7067890123, 'chigozie.eze@example.com', '222 Oak St, Lagos', 'Dermatologist', 'D06', 5000),
('D007', 'Adaobi', 'Ugochi', 'Igbokwe', 'F', '1986-11-05', 7078901234, 'adaobi.igbokwe@example.com', '333 Pine Ave, Enugu', 'Oncologist', 'D07', 6000),
('D008', 'Obi', 'Chinonso', 'Nnaji', 'M', '1984-04-13', 7089012345, 'obi.nnaji@example.com', '444 Maple Rd, Port Harcourt', 'Gastroenterologist', 'D08', 7000),
('D009', 'Emmanuel', 'Chijioke', 'Mbachu', 'M', '1979-10-29', 7090123456, 'emmanuel.mbachu@example.com', '555 Birch St, Abuja', 'Ophthalmologist', 'D09', 5000),
('D010', 'Ifeoma', 'Chinwe', 'Obiora', 'F', '1991-02-12', 7101234567, 'ifeoma.obiora@example.com', '666 Elm St, Owerri', 'Dentist', 'D10', 4000);

-- Insert data into HODs
INSERT INTO HODs (Doc_ID, Dept_ID) VALUES
('D001', 'D01'),
('D002', 'D02'),
('D003', 'D03'),
('D004', 'D04'),
('D005', 'D05'),
('D006', 'D06'),
('D007', 'D07'),
('D008', 'D08'),
('D009', 'D09'),
('D010', 'D10');

-- Insert data into Appointment
INSERT INTO Appointment (App_ID, Pat_ID, Doc_ID, App_Date_Time, App_Description) VALUES
('A001', 'P001', 'D001', '2024-08-01 09:00:00', 'Routine check-up'),
('A002', 'P002', 'D002', '2024-08-02 10:00:00', 'Consultation for asthma'),
('A003', 'P003', 'D003', '2024-08-03 11:00:00', 'Knee pain evaluation'),
('A004', 'P004', 'D004', '2024-08-04 14:00:00', 'Headache assessment'),
('A005', 'P005', 'D005', '2024-08-05 15:00:00', 'General health check'),
('A006', 'P006', 'D001', '2024-08-06 09:30:00', 'Heart check-up'),
('A007', 'P007', 'D002', '2024-08-07 10:30:00', 'Consultation for hypertension'),
('A008', 'P008', 'D003', '2024-08-08 11:30:00', 'Knee surgery evaluation'),
('A009', 'P009', 'D004', '2024-08-09 14:00:00', 'Migraine follow-up'),
('A010', 'P010', 'D005', '2024-08-10 15:00:00', 'Dental check-up');

-- Insert data into Visit
INSERT INTO Visit (Visit_ID, App_ID, Pat_weight, Pat_height, Disease_name, Visit_charge) VALUES
('V001', 'A001', 70, '5.9', 'None', 2000),
('V002', 'A002', 60, '5.5', 'Asthma', 1500),
('V003', 'A003', 80, '6.0', 'Knee Pain', 2500),
('V004', 'A004', 75, '5.8', 'Migraine', 2200),
('V005', 'A005', 65, '5.7', 'None', 1800),
('V006', 'A006', 90, '5.10', 'None', 2100),
('V007', 'A007', 68, '5.4', 'Hypertension', 1700),
('V008', 'A008', 85, '6.1', 'Knee Surgery', 2600),
('V009', 'A009', 72, '5.6', 'Migraine', 2300),
('V010', 'A010', 78, '5.8', 'Dental check-up', 2000);

-- Insert data into Medicines
INSERT INTO Medicines (Med_ID, Med_Name, Med_company, Med_price, Med_dose, Med_type) VALUES
('M001', 'Paracetamol', 'Nigerian Pharma', 150, '500mg', 'Tablet'),
('M002', 'Ibuprofen', 'Health Co.', 200, '400mg', 'Tablet'),
('M003', 'Amoxicillin', 'MediCare', 300, '250mg', 'Capsule'),
('M004', 'Metformin', 'Drug Makers', 250, '500mg', 'Tablet'),
('M005', 'Ciprofloxacin', 'Best Meds', 350, '500mg', 'Tablet'),
('M006', 'Syrup', 'CureCo', 180, '250mg', 'Syrup'),
('M007', 'Azithromycin', 'PharmaPlus', 400, '500mg', 'Tablet'),
('M008', 'Lisinopril', 'MedPlus', 320, '10mg', 'Tablet'),
('M009', 'Simvastatin', 'HealthAid', 450, '20mg', 'Tablet'),
('M010', 'Insulin', 'DiabetCare', 600, '100ml', 'Injection');

-- Insert data into Test
INSERT INTO Test (Test_ID, Test_Name, Test_Prereq) VALUES
('T01', 'Blood Test', 'None'),
('T02', 'X-Ray', 'None'),
('T03', 'MRI Scan', 'Neurological symptoms'),
('T04', 'CT Scan', 'Headache'),
('T05', 'Urine Test', 'None'),
('T06', 'Lipid Profile', 'None'),
('T07', 'CT Angiography', 'Chest pain'),
('T08', 'Chest X-Ray', 'Cough'),
('T09', 'Electrocardiogram', 'Chest pain'),
('T10', 'Thyroid Function Test', 'Thyroid symptoms');

-- Insert data into Treatment
INSERT INTO Treatment (Visit_ID, App_ID, Test_ID, Test_Result, Current_Treatment, Extra_Comment) VALUES
('V001', 'A001', 'T01', TRUE, 'General check-up', NULL),
('V002', 'A002', 'T01', TRUE, 'Asthma control', 'Prescribed inhaler'),
('V003', 'A003', 'T02', FALSE, 'Knee pain treatment', 'Recommended physiotherapy'),
('V004', 'A004', 'T03', TRUE, 'Migraine treatment', 'Advised rest and hydration'),
('V005', 'A005', 'T01', TRUE, 'General health advice', 'Maintain a balanced diet'),
('V006', 'A006', 'T01', TRUE, 'Regular heart check', 'Lifestyle changes advised'),
('V007', 'A007', 'T04', FALSE, 'Blood pressure control', 'Medication prescribed'),
('V008', 'A008', 'T02', TRUE, 'Knee surgery planned', 'Consultation scheduled'),
('V009', 'A009', 'T03', TRUE, 'Migraine management', 'Further tests advised'),
('V010', 'A010', 'T01', TRUE, 'Dental care advised', 'Regular check-ups recommended');

-- Insert data into Rooms
INSERT INTO Rooms (Room_ID, Room_Type, Room_Capacity, Room_Charges) VALUES
(101, 'General Ward', 4, 3000),
(102, 'Private Room', 1, 7000),
(103, 'Intensive Care Unit', 2, 15000),
(104, 'Surgery Room', 1, 10000),
(105, 'Pediatric Ward', 6, 3500),
(106, 'Maternity Ward', 3, 4000),
(107, 'Isolation Room', 1, 8000),
(108, 'Rehabilitation Room', 2, 5000),
(109, 'Dialysis Unit', 3, 6000),
(110, 'Pharmacy', 2, 0),
(111, 'Admin Area', 5, 0);

-- Insert data into Staff
INSERT INTO Staff (Staff_ID, Dept_ID, Staff_fname, Staff_mname, Staff_lname, Staff_gender, Staff_contactno, Staff_type, Staff_roomassigned1, Staff_roomassigned2, Staff_dutystarttime, Staff_dutyendtime, Staff_holiday, Staff_Charge)
VALUES 
('S001', 'D01', 'Segun', 'Oluwaseun', 'Adebayo', 'M', 07012345678, 'Nurse', 101, 102, '08:00:00', '16:00:00', 'Saturday', 30000),
('S002', 'D02', 'Nimofe', 'Oladunni', 'Ogunleye', 'F', 07023456789, 'Pharmacist', 110, NULL, '09:00:00', '17:00:00', 'Sunday', 60000),
('S003', 'D01', 'Patricia', 'Chinelo', 'Ifeanyi', 'F', 08134567890, 'Lab Technician', 103, 109, '08:00:00', '16:00:00', 'Monday', 40000),
('S004', 'D02', 'David', 'Tunde', 'Adeyemi', 'M', 09045678901, 'Admin', 111, NULL, '09:00:00', '17:00:00', 'Tuesday', 50000),
('S005', 'D01', 'Mary', 'Nkechi', 'Okoro', 'F', 09056789012, 'Nurse', 102, 105, '08:00:00', '16:00:00', 'Wednesday', 30000),
('S006', 'D03', 'Esther', 'Oluwafunmilayo', 'Ojo', 'F', 08067890123, 'Receptionist', 111, NULL, '08:00:00', '16:00:00', 'Thursday', 25000),
('S007', 'D03', 'Joy', 'Olamide', 'Adetola', 'F', 08178901234, 'Physiotherapist', 107, 108, '08:00:00', '16:00:00', 'Friday', 35000),
('S008', 'D04', 'Kingsley', 'Chijioke', 'Iwuanyanwu', 'M', 08189012345, 'Technician', 109, 111, '09:00:00', '17:00:00', 'Saturday', 40000),
('S009', 'D05', 'Fiyin', 'Temitope', 'Ogunyemi', 'F', 08090123456, 'Cleaner', 106, 107, '07:00:00', '15:00:00', 'Sunday', 20000),
('S010', 'D05', 'Daniel', 'Chijoke', 'Obi', 'M', 09101234567, 'Security', 111, NULL, '18:00:00', '06:00:00', 'Monday', 28000);

-- Insert data into In_Patients
INSERT INTO In_Patients (In_Patient_ID, Pat_ID, Room_ID, Admission_Date, Discharge_Date) VALUES
('IP001', 'P001', 102, '2024-07-01', '2024-07-10'),
('IP002', 'P002', 103, '2024-07-02', '2024-07-12'),
('IP003', 'P003', 101, '2024-07-03', '2024-07-13'),
('IP004', 'P004', 104, '2024-07-04', '2024-07-14'),
('IP005', 'P005', 105, '2024-07-05', '2024-07-15');

-- Insert data into Out_patients
INSERT INTO Out_patients (Out_Patient_ID, Pat_ID, Visit_Date, Treatment_Provided) VALUES
('OP006', 'P006', '2024-07-16', 'Follow-up for heart health'),
('OP007', 'P007', '2024-07-17', 'Medication for hypertension'),
('OP008', 'P008', '2024-07-18', 'Consultation for knee surgery'),
('OP009', 'P009', '2024-07-19', 'Follow-up on migraine treatment'),
('OP010', 'P010', '2024-07-20', 'Dental check-up and cleaning');

-- Insert data into Billing_info
INSERT INTO Billing_info (Bill_ID, Pat_ID, Visit_ID, App_ID, Doc_ID, Medicine_ID, Room_ID, No_of_Days, Staff_ID, Health_Card) VALUES
('B001', 'P001', 'V001', 'A001', 'D001', 'M001', NULL, 0, 'S006', FALSE),
('B002', 'P002', 'V002', 'A002', 'D002', 'M002', NULL, 0, 'S006', FALSE),
('B003', 'P003', 'V003', 'A003', 'D003', 'M003', NULL, 0, 'S006', FALSE),
('B004', 'P004', 'V004', 'A004', 'D004', 'M004', NULL, 0, 'S006', FALSE),
('B005', 'P005', 'V005', 'A005', 'D005', 'M001', NULL, 0, 'S006', FALSE),
('B006', 'P006', 'V006', 'A006', 'D001', 'M002', NULL, 0, 'S006', FALSE),
('B007', 'P007', 'V007', 'A007', 'D002', 'M003', NULL, 0, 'S006', FALSE),
('B008', 'P008', 'V008', 'A008', 'D003', 'M004', NULL, 0, 'S006', FALSE),
('B009', 'P009', 'V009', 'A009', 'D004', 'M005', NULL, 0, 'S006', FALSE),
('B010', 'P010', 'V010', 'A010', 'D005', 'M006', NULL, 0, 'S006', FALSE);

-- Insert data into Feedback
INSERT INTO Feedback (Feedback_ID, Pat_ID, Feedback_Date, Feedback_Comment, Feedback_Rating) VALUES
('F001', 'P001', '2024-08-06', 'Great service and staff', 5),
('F002', 'P002', '2024-08-07', 'Very helpful and caring staff', 4),
('F003', 'P003', '2024-08-08', 'Quick service, would recommend', 5),
('F004', 'P004', '2024-08-09', 'Satisfactory treatment', 3),
('F005', 'P005', '2024-08-10', 'Good overall experience', 4),
('F006', 'P006', '2024-08-11', 'Needs improvement in waiting time', 2),
('F007', 'P007', '2024-08-12', 'Professional and friendly service', 5),
('F008', 'P008', '2024-08-13', 'Had a great experience', 4),
('F009', 'P009', '2024-08-14', 'Okay service, but can be better', 3),
('F010', 'P010', '2024-08-15', 'I would definitely return', 5);
