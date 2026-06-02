-- Function to Calculate Total Billing Amount
DELIMITER //
CREATE FUNCTION GetTotalBillingAmount(p_patID VARCHAR(10)) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE totalAmount DECIMAL(10, 2);

    SELECT SUM(Med_price) + SUM(Room_Charges) INTO totalAmount
    FROM Billing_info B
    JOIN Medicines M ON B.Medicine_ID = M.Med_ID
    WHERE B.Pat_ID = p_patID;

    RETURN IFNULL(totalAmount, 0);
END //
DELIMITER ;

