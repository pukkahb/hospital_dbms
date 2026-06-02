-- Extracting Patient Information
SELECT Pat_ID, Pat_fname, Pat_mname, Pat_lname, Pat_gender, Pat_DOB, Pat_contactno, Pat_emailID, Pat_Address, Pat_MedHistory, Pat_BloodGroup
FROM Patient;

-- Retrieving Appointment Details
SELECT A.App_ID, A.App_Date_Time, A.App_Description, P.Pat_fname, P.Pat_lname, D.Doc_fname, D.Doc_lname
FROM Appointment A
JOIN Patient P ON A.Pat_ID = P.Pat_ID
JOIN Doctor D ON A.Doc_ID = D.Doc_ID;

-- Accessing Doctor and Department Information
SELECT D.Doc_ID, D.Doc_fname, D.Doc_lname, D.Doc_Specialist, Dept.Dept_name
FROM Doctor D
JOIN HODs H ON D.Doc_ID = H.Doc_ID
JOIN Department Dept ON D.Doc_DeptID = Dept.Dept_ID;

-- Extracting Visit Information
SELECT V.Visit_ID, V.Pat_weight, V.Pat_height, V.Disease_name, A.App_Date_Time, P.Pat_fname, P.Pat_lname
FROM Visit V
JOIN Appointment A ON V.App_ID = A.App_ID
JOIN Patient P ON A.Pat_ID = P.Pat_ID;

-- Viewing Billing Information
SELECT B.Bill_ID, B.Pat_ID, B.Visit_ID, B.App_ID, B.Doc_ID, B.No_of_Days, B.Health_Card, P.Pat_fname, P.Pat_lname
FROM Billing_info B
JOIN Patient P ON B.Pat_ID = P.Pat_ID;

-- Extracting Medicines Information
SELECT Med_ID, Med_Name, Med_company, Med_price, Med_type
FROM Medicines;

