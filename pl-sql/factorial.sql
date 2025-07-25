DECLARE 
    i NUMBER := 6;
    output NUMBER := 1;
BEGIN
    LOOP
        EXIT WHEN i < 1;
        output := output * i;
        i := i-1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Fac of '|| 6 ||' is '|| output);
END;