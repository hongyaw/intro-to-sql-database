DECLARE 
    i NUMBER:= 1;
    square NUMBER;
    cube NUMBER;
BEGIN
    LOOP
        EXIT WHEN i>5;
        square := i*i;
        cube := i*i*i;
        DBMS_OUTPUT.PUT_LINE('i = '||i||' square = '||square||' cube = '||cube);
        i := i + 1;
    END LOOP;
END;
