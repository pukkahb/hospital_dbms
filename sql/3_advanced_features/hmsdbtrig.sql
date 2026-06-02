ALTER TABLE Visit
ADD COLUMN Pat_ID VARCHAR(10) AFTER App_ID;

-- Trigger to Update Patient Visit Count
DELIMITER //
CREATE TRIGGER IncrementVisitCount 
AFTER INSERT ON Visit
FOR EACH ROW
BEGIN
    UPDATE Patient 
    SET Visit_Count = Visit_Count + 1
    WHERE Pat_ID = NEW.Pat_ID;
END //
DELIMITER ;

-- Trigger to Prevent Duplicate Appointments
DELIMITER //
CREATE TRIGGER PreventDuplicateAppointment 
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
    DECLARE existingCount INT;

    SELECT COUNT(*) INTO existingCount
    FROM Appointment
    WHERE Pat_ID = NEW.Pat_ID AND Doc_ID = NEW.Doc_ID 
    AND DATE(App_Date_Time) = DATE(NEW.App_Date_Time);

    IF existingCount > 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Cannot schedule duplicate appointment for the same patient and doctor on the same date.';
    END IF;
END //
DELIMITER ;

