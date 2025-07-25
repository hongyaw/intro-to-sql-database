DECLARE
    b_salary NUMBER := 5000;
    hra CONSTANT NUMBER := (20/100);
    da CONSTANT NUMBER := (10/100);
    g_salary NUMBER := b_salary + (b_salary*hra) +(b_salary*da);
BEGIN
    IF g_salary > 6000 THEN
        DBMS_OUTPUT.PUT_LINE('High Salary');
    ELSE 
        DBMS_OUTPUT.PUT_LINE ('Normal Salary');
    END IF;
END;


