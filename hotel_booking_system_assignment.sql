-- Drop tables if they already exist (drop in order to avoid FK conflicts)
DROP TABLE BOOKING;
DROP TABLE ROOM;
DROP TABLE GUEST;
DROP TABLE HOTEL;

-- Create HOTEL table
CREATE TABLE HOTEL (
    Hotel_No VARCHAR2(10) PRIMARY KEY,
    Name VARCHAR2(100),
    City VARCHAR2(100)
);

-- Create ROOM table
CREATE TABLE ROOM (
    Room_No NUMBER,
    Hotel_No VARCHAR2(10),
    Type CHAR(1),  -- S = Single, N = Normal
    Price NUMBER(6,2),
    PRIMARY KEY (Room_No, Hotel_No),
    FOREIGN KEY (Hotel_No) REFERENCES HOTEL(Hotel_No)
);

-- Create GUEST table
CREATE TABLE GUEST (
    Guest_No VARCHAR2(10) PRIMARY KEY,
    Name VARCHAR2(100),
    City VARCHAR2(100)
);

-- Create BOOKING table
CREATE TABLE BOOKING (
    Hotel_No VARCHAR2(10),
    Guest_No VARCHAR2(10),
    Date_From DATE,
    Date_To DATE,
    Room_No NUMBER,
    PRIMARY KEY (Hotel_No, Guest_No, Room_No, Date_From),
    FOREIGN KEY (Hotel_No) REFERENCES HOTEL(Hotel_No),
    FOREIGN KEY (Guest_No) REFERENCES GUEST(Guest_No),
    FOREIGN KEY (Room_No, Hotel_No) REFERENCES ROOM(Room_No, Hotel_No)
);

INSERT INTO HOTEL VALUES ('H111', 'Empire Hotel', 'New York');
INSERT INTO HOTEL VALUES ('H235', 'Park Place', 'New York');
INSERT INTO HOTEL VALUES ('H432', 'Brownstone Hotel', 'Toronto');
INSERT INTO HOTEL VALUES ('H498', 'James Plaza', 'Toronto');
INSERT INTO HOTEL VALUES ('H193', 'Devon Hotel', 'Boston');
INSERT INTO HOTEL VALUES ('H437', 'Clairmont Hotel', 'Boston');

INSERT INTO ROOM VALUES (313, 'H111', 'S', 145.00);
INSERT INTO ROOM VALUES (412, 'H111', 'N', 145.00);
INSERT INTO ROOM VALUES (1267, 'H235', 'N', 175.00);
INSERT INTO ROOM VALUES (1289, 'H235', 'N', 195.00);
INSERT INTO ROOM VALUES (876, 'H432', 'S', 124.00);
INSERT INTO ROOM VALUES (898, 'H432', 'S', 124.00);
INSERT INTO ROOM VALUES (345, 'H498', 'N', 160.00);
INSERT INTO ROOM VALUES (467, 'H498', 'N', 180.00);
INSERT INTO ROOM VALUES (1001, 'H193', 'S', 150.00);
INSERT INTO ROOM VALUES (1201, 'H193', 'N', 175.00);
INSERT INTO ROOM VALUES (257, 'H437', 'N', 140.00);
INSERT INTO ROOM VALUES (223, 'H437', 'N', 155.00);

INSERT INTO GUEST VALUES ('G256', 'Adam Wayne', 'Pittsburgh');
INSERT INTO GUEST VALUES ('G367', 'Tara Cummings', 'Baltimore');
INSERT INTO GUEST VALUES ('G879', 'Vanessa Parry', 'Pittsburgh');
INSERT INTO GUEST VALUES ('G230', 'Tom Hancock', 'Philadelphia');
INSERT INTO GUEST VALUES ('G467', 'Robert Swift', 'Atlanta');
INSERT INTO GUEST VALUES ('G190', 'Edward Cane', 'Baltimore');

INSERT INTO BOOKING VALUES ('H111', 'G256', TO_DATE('10-AUG-1999', 'DD-MON-YYYY'), TO_DATE('15-AUG-1999', 'DD-MON-YYYY'), 412);
INSERT INTO BOOKING VALUES ('H111', 'G367', TO_DATE('18-AUG-1999', 'DD-MON-YYYY'), TO_DATE('21-AUG-1999', 'DD-MON-YYYY'), 412);
INSERT INTO BOOKING VALUES ('H235', 'G879', TO_DATE('05-SEP-1999', 'DD-MON-YYYY'), TO_DATE('12-SEP-1999', 'DD-MON-YYYY'), 1267);
INSERT INTO BOOKING VALUES ('H498', 'G230', TO_DATE('15-SEP-1999', 'DD-MON-YYYY'), TO_DATE('18-SEP-1999', 'DD-MON-YYYY'), 467);
INSERT INTO BOOKING VALUES ('H498', 'G256', TO_DATE('30-NOV-1999', 'DD-MON-YYYY'), TO_DATE('02-DEC-1999', 'DD-MON-YYYY'), 345);
INSERT INTO BOOKING VALUES ('H498', 'G467', TO_DATE('03-NOV-1999', 'DD-MON-YYYY'), TO_DATE('05-NOV-1999', 'DD-MON-YYYY'), 345);
INSERT INTO BOOKING VALUES ('H193', 'G190', TO_DATE('15-NOV-1999', 'DD-MON-YYYY'), TO_DATE('19-NOV-1999', 'DD-MON-YYYY'), 1001);
INSERT INTO BOOKING VALUES ('H193', 'G367', TO_DATE('12-SEP-1999', 'DD-MON-YYYY'), TO_DATE('14-SEP-1999', 'DD-MON-YYYY'), 1001);
INSERT INTO BOOKING VALUES ('H193', 'G367', TO_DATE('01-OCT-1999', 'DD-MON-YYYY'), TO_DATE('06-OCT-1999', 'DD-MON-YYYY'), 1201);
INSERT INTO BOOKING VALUES ('H437', 'G190', TO_DATE('04-OCT-1999', 'DD-MON-YYYY'), TO_DATE('06-OCT-1999', 'DD-MON-YYYY'), 223);
INSERT INTO BOOKING VALUES ('H437', 'G879', TO_DATE('14-SEP-1999', 'DD-MON-YYYY'), TO_DATE('17-SEP-1999', 'DD-MON-YYYY'), 223);

SELECT * FROM HOTEL 
WHERE City = 'Toronto'

SELECT name, city 
FROM Guest 
WHERE Guest_No 
in 
(SELECT Guest_No 
	From Booking 
    Where Hotel_no 
    in 
    (Select Hotel_no 
    	From Hotel 
    	Where City = 'New York'))

SELECT * FROM ROOM 
WHERE price < 150 
Order by price asc

SELECT AVG(price) 
FROM ROOM

SELECT SUM(price), type 
FROM ROOM 
GROUP BY type 
Having type = 'S'

SELECT price, type 
FROM room 
WHERE Hotel_no 
in( 
    Select Hotel_no 
    FROM Hotel 
    WHERE name = 'Clairmont Hotel' 
)

SELECT * FROM GUEST 
WHERE Guest_no 
in( 
    SELECT Guest_no 
    From Booking 
    Where Hotel_no 
    in( 
    	SELECT Hotel_no 
    	From Hotel 
    	Where name = 'Devon Hotel' 
    ) 
)

SELECT count(r.room_no), h.name 
FROM room r 
join hotel h 
on r.hotel_no = h.hotel_no 
group by h.name

SELECT COUNT(r.room_no), h.name, h.city 
FROM room r 
Join Hotel h ON r.hotel_no = h.hotel_no 
Where h.city = 'Toronto'
group by h.name, h.city ;

UPDATE room
SET price = price *105/100;










