DECLARE
    original_str VARCHAR2(50) := '   welcomeToPLSQL***';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Original string: [' || original_str || ']');
    DBMS_OUTPUT.PUT_LINE('LTRIM: [' || LTRIM(original_str, ' ') || ']');
    DBMS_OUTPUT.PUT_LINE('RTRIM: [' || RTRIM(original_str, '*') || ']');
    DBMS_OUTPUT.PUT_LINE('UPPER: [' || UPPER(original_str) || ']');
    DBMS_OUTPUT.PUT_LINE('LOWER: [' || LOWER(original_str) || ']');
    DBMS_OUTPUT.PUT_LINE('INITCAP: [' || INITCAP(original_str) || ']');
    DBMS_OUTPUT.PUT_LINE('LENGTH: ' || LENGTH(original_str));
END;
