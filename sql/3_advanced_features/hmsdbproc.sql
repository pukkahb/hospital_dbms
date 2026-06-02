-- Procedure to Register a New Patient
DELIMITER //
CREATE PROCEDURE RegisterPatient (
    IN p_fname VARCHAR(20),
    IN p_mname VARCHAR(20),
    IN p_lname VARCHAR(20),
    IN p_gender VARCHAR(2),
    IN p_dob DATE,
    IN p_contactno BIGINT,
    IN p_emailID VARCHAR(50),
    IN p_address VARCHAR(250),
    IN p_medHistory VARCHAR(500),
    IN p_bloodGroup VARCHAR(10)
)
BEGIN
    DECLARE new_id INT;
    
    -- Get the next available Patient ID
    SELECT IFNULL(MAX(Pat_ID), 0) + 1 INTO new_id FROM Patient_personal_info;

    INSERT INTO Patient_personal_info 
        (Pat_ID, Pat_fname, Pat_mname, Pat_lname, Pat_gender, Pat_DOB, 
         Pat_contactno, Pat_emailID, Pat_Address, Pat_MedHistory, Pat_BloodGroup) 
    VALUES 
        (new_id, p_fname, p_mname, p_lname, p_gender, p_dob, 
         p_contactno, LOWER(p_emailID), p_address, p_medHistory, p_bloodGroup);
END //
DELIMITER ;

-- Procedure to Schedule an Appointment
DELIMITER //
CREATE PROCEDURE ScheduleAppointment (
    IN p_patID INT,
    IN p_docID VARCHAR(6),
    IN p_appDateTime TIMESTAMP,
    IN p_description VARCHAR(200)
)
BEGIN
    INSERT INTO Appointment (App_ID, Pat_ID, Doc_ID, App_Date_Time, App_Description) 
    VALUES (UUID(), p_patID, p_docID, p_appDateTime, p_description);
END //
DELIMITER ;

