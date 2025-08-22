CREATE TABLE student_marks(
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(30),
    marks NUMBER
);
--------------------------------------------------------------
INSERT INTO student_marks (student_id, student_name, marks)
VALUES (001,'Ali',92);
INSERT INTO student_marks (student_id, student_name, marks)
VALUES (002,'Abu',72);
INSERT INTO student_marks (student_id, student_name, marks)
VALUES (003,'Ahmad',80);
--------------------------------------------------------------
DECLARE 
    CURSOR student_cursor IS
        SELECT * FROM STUDENT_MARKS
        WHERE marks > 50;

    v_student_id NUMBER;
    v_student_name student_marks.student_name%TYPE;
    v_student_mark student_marks.marks%TYPE;
BEGIN
    OPEN student_cursor;
    LOOP
        FETCH student_cursor into v_student_id, v_student_name, v_student_mark;
        EXIT WHEN student_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Student ID: ' ||v_student_id||' Student Name: ' || v_student_name||' Marks: ' || v_student_mark);
  END LOOP;
  CLOSE student_cursor;
END;
--------------------------------------------------------------
CREATE OR REPLACE TRIGGER prevent_invalid_marks_insert
BEFORE INSERT ON student_marks
FOR EACH ROW
BEGIN
  IF :NEW.marks > 100 OR :NEW.marks < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Marks cannot be higher than 100 or lesser than 0.');
  END IF;
END;
--------------------------------------------------------------
CREATE OR REPLACE TRIGGER after_insert_student_marks
AFTER INSERT ON student_marks
BEGIN
  DBMS_OUTPUT.PUT_LINE('Insertion completed successfully into STUDENT_MARKS');
END;
--------------------------------------------------------------
INSERT INTO student_marks (student_id, student_name, marks)
VALUES (004,'Lim',101);
INSERT INTO student_marks (student_id, student_name, marks)
VALUES (005,'UwU',100);

DELETE FROM STUDENT_MARKS
WHERE STUDENT_id >= 4;
--------------------------------------------------------------