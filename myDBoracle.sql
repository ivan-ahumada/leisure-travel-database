CREATE TABLE S20_2_CUSTOMER(
    custID char(9) not null,
    custName varchar(30) not null,
    emailID varchar(30) not null, 
    custType varchar(10) not null,
    DOB DATE,
    gender varchar(7),
    zipCode varchar(6),
    state_resident char(3),
    streetName varchar(30),
    PRIMARY KEY(custID),
    UNIQUE(emailID)
); 

CREATE TABLE S20_2_EMPLOYEE(
    empID char(9) not null,
    gender varchar(7)
        check(gender = 'male' OR gender = 'female' OR gender = 'other'),
    full_name varchar(30) not null,
    DOB DATE,
    salary DECIMAL(8,2) not null,
    PRIMARY KEY(empID)
);

CREATE TABLE S20_2_AIRLINE(
    flightNo varchar(10) not null,
    fuelCharge decimal(4,2),
    convFee decimal(4,2),
    PRIMARY KEY(flightNo)
);

CREATE TABLE S20_2_TRIP_DETAILS(
    PNR VARCHAR(15) NOT NULL,
    tripName VARCHAR(30) NOT NULL,
    itineraryID VARCHAR(14) NOT NULL,
    destination VARCHAR(20) NOT NULL,
    PRIMARY KEY(PNR),
    UNIQUE(itineraryID)
);

CREATE TABLE S20_2_PLANS(
    custID char(9) not null,
    empID char(9) not null,
    PNR varchar(15) not null,
    commission DECIMAL(5,2) not null,
    fromDate DATE not null,
    toDate DATE not null,
    invoice_date DATE not null,
    adpayment DECIMAL(5,2),
    GSO int not null, -- 0 = opted out, 1 = opted in
    PRIMARY KEY(commission, fromDate, toDate, invoice_date, adpayment, GSO),
    FOREIGN KEY(custID) REFERENCES S20_2_CUSTOMER(custID)
        ON DELETE CASCADE,
    FOREIGN KEY(empID) REFERENCES S20_2_EMPLOYEE(empID)
        ON DELETE CASCADE,
    FOREIGN KEY(PNR) REFERENCES S20_2_TRIP_DETAILS
        ON DELETE CASCADE
);

CREATE TABLE S20_2_RESERVES_AIRLINE(
    custID char(9) not null,
    flightNo varchar(7) not null,
    PNR varchar(15) not null,
    deptCity varchar(25) not null,
    arrCity varchar(25) not null,
    airlineCost decimal(6,2),
    PRIMARY KEY(deptCity,arrCity,airlineCost),
    FOREIGN KEY(custID) REFERENCES S20_2_CUSTOMER(custID)
        ON DELETE CASCADE,
    FOREIGN KEY(flightNo) REFERENCES S20_2_AIRLINE(flightNo)
        ON DELETE CASCADE,
    FOREIGN KEY(PNR) REFERENCES S20_2_TRIP_DETAILS(PNR)
        ON DELETE CASCADE
);

INSERT ALL
    INTO S20_2_CUSTOMER VALUES(
        '000000000', 'Olivia Smith', 'olivia.smith@gmail.com', 'corporate', '06-Jul-1988', 'female', '35044', 'AL', 'Crown Lane')
    INTO S20_2_CUSTOMER VALUES(
        '000001000', 'Philip Johnson', 'philp.johnson@gmail.com', 'corporate', '02-Aug-1974', 'male', '76110', 'TX', 'Rosedale Street')
    INTO S20_2_CUSTOMER VALUES(
        '000002000', 'Monica Williams', 'monica.williams@gmail.com', 'leisure', '06-Aug-1995', 'female', '07457', 'NJ', 'McCart Avenue')
    INTO S20_2_CUSTOMER VALUES(
        '000003000', 'Joseph Brown', 'joseph.brown@gmail.com', 'leisure', '21-Jun-1995', 'male', '10001', 'NY', 'Lancaster Avenue')    
    INTO S20_2_CUSTOMER VALUES(
        '000004000', 'Samuel Jones', 'samuel.jones@gmail.com', 'corporate', '17-Sep-1986', 'male', '96734', 'HI', 'Magnolia Avenue')
    INTO S20_2_CUSTOMER VALUES(
        '000005000', 'Jennifer Garcia', 'jennifer.garcia@gmail.com', 'leisure', '29-Sep-1992', 'female', '76134', 'TX', '8th Avenue')
    INTO S20_2_CUSTOMER VALUES(
        '000006000', 'Ivan Ahumada', 'ivan.ahumada@gmail.com', 'leisure', '04-Oct-1996', 'male', '80011', 'CO', 'Craig Street')
    INTO S20_2_CUSTOMER VALUES(
        '000007000', 'Maria Delgadillo', 'maria.delgadillo@gmail.com', 'corporate', '09-Feb-1974', 'female', '80204', 'CO', 'Berry Street')
    INTO S20_2_CUSTOMER VALUES(
        '000008000', 'Crystal Miller', 'crystal.miller@gmail.com', 'leisure', '12-Apr-1975', 'female', '73110', 'OK', 'Mustang Drive')
    INTO S20_2_CUSTOMER VALUES(
        '000009000', 'Rene Rodriguez', 'rene.rodriguez@gmail.com', 'leisure', '04-May-1978', 'other', '89001', 'NV', 'Bliss Road')
    INTO S20_2_CUSTOMER VALUES(
        '000010000', 'David Martinez', 'david.martinez@gmail.com', 'corporate', '29-Oct-1978', 'male', '87026', 'NM', 'Rose Court')
    INTO S20_2_CUSTOMER VALUES(
        '000020000', 'Adrian Lopez', 'adrian.lopez@gmail.com', 'leisure', '15-Jun-1979', 'male', '90006', 'CA', 'Happy Trail')
    INTO S20_2_CUSTOMER VALUES(
        '000030000', 'Chris Wilson', 'chris.wilson@gmail.com', 'corporate', '10-Jan-1980', 'male', '90307', 'CA', 'Sunset Drive')
    INTO S20_2_CUSTOMER VALUES(
        '000040000', 'Gerardo Lee', 'gerardo.lee@gmail.com', 'corporate', '08-Jun-1980', 'male', '10001', 'NY', 'Island Circle')
    INTO S20_2_CUSTOMER VALUES(
        '000050000', 'Yolanda White', 'yolanda.white@gmail.com', 'corporate', '10-Oct-1979', 'female', '32115', 'FL', 'Whitney Road')
    INTO S20_2_CUSTOMER VALUES(
        '000060000', 'Natalia Perez', 'natalia.perez@gmail.com', 'leisure', '29-Jun-1982', 'female', '32208', 'FL', 'Firebird Drive')
SELECT * FROM DUAL;
      
INSERT ALL
    INTO S20_2_EMPLOYEE VALUES(
        '900000000', 'male', 'Liam Sanchez', '14-Nov-1983', 73862.83)
    INTO S20_2_EMPLOYEE VALUES(
        '000000001', 'female', 'Emma Walker', '03-Jan-1984', 77416.84)
    INTO S20_2_EMPLOYEE VALUES(
        '000000002', 'male', 'Noah Ramirez', '21-Dec-1988', 67133.34)
    INTO S20_2_EMPLOYEE VALUES(
        '000000003', 'male', 'William Young', '31-Jul-1985', 64539.81)
    INTO S20_2_EMPLOYEE VALUES(
        '000000004', 'other', 'Ava Louise', '07-Sep-1990', 70681.45)
    INTO S20_2_EMPLOYEE VALUES(
        '000000005', 'female', 'Isabella Robinson', '22-Oct-1989', 76226.44)
    INTO S20_2_EMPLOYEE VALUES(
        '000000006', 'male', 'Oliver King', '04-Feb-1986', 73657.88)
    INTO S20_2_EMPLOYEE VALUES(
        '000000007', 'female', 'Sophia Torres', '29-Mar-1992', 79582.24)
    INTO S20_2_EMPLOYEE VALUES(
        '000000008', 'male', 'Benjamin Wright', '06-Nov-1988', 70160.92)
    INTO S20_2_EMPLOYEE VALUES(
        '000000009', 'male', 'Elijah Scott', '01-May-1996', 62897.22)
    INTO S20_2_EMPLOYEE VALUES(
        '000000010', 'female', 'Mia Nguyen', '06-May-1993', 75278.99)
    INTO S20_2_EMPLOYEE VALUES(
        '000000020', 'other', 'Lucas Hill', '06-Jan-1989', 72166.82)
    INTO S20_2_EMPLOYEE VALUES(
        '000000030', 'female', 'Emilia Flores', '18-May-1990', 66455.29)
    INTO S20_2_EMPLOYEE VALUES(
        '000000040', 'male', 'Mason Green', '23-Feb-1992', 74800.94)
    INTO S20_2_EMPLOYEE VALUES(
        '000000050', 'other', 'Harper Adams', '08-Jul-1994', 64095.80)
    INTO S20_2_EMPLOYEE VALUES(
        '000000060', 'male', 'Logan Baker', '24-Dec-1996', 71149.66)
SELECT * FROM DUAL;

INSERT ALL
    INTO S20_2_AIRLINE VALUES('DL 1925', 15.83, 12.22)
    INTO S20_2_AIRLINE VALUES('DL 1407', 30.33, 13.84)
    INTO S20_2_AIRLINE VALUES('F9 1275', 89.33, 10.93)
    INTO S20_2_AIRLINE VALUES('B6 2883', 33.88, 8.84)
    INTO S20_2_AIRLINE VALUES('HA 171', 28.22, 9.82)
    INTO S20_2_AIRLINE VALUES('F9 2135', 15.88, 11.33)
    INTO S20_2_AIRLINE VALUES('UA 4279', 15.93, 12.49)
    INTO S20_2_AIRLINE VALUES('UA 5242', 13.25, 13.38)
    INTO S20_2_AIRLINE VALUES('AA 2272', 9.82, 8.99)
    INTO S20_2_AIRLINE VALUES('AS 3420', 23.42, 4.99)
    INTO S20_2_AIRLINE VALUES('AA 5926', 19.33, 12.31)
    INTO S20_2_AIRLINE VALUES('AS 881', 42.23, 11.21)
    INTO S20_2_AIRLINE VALUES('AA 2843', 21.11, 12.11)
    INTO S20_2_AIRLINE VALUES('AA 2122', 18.33, 10.11)
    INTO S20_2_AIRLINE VALUES('NK 729', 29.34, 10.88)
    INTO S20_2_AIRLINE VALUES('AA 4368', 20.55, 13.39)
SELECT * FROM DUAL;

INSERT ALL
    INTO S20_2_TRIP_DETAILS VALUES(
        '123456', 'Nashville Trip', '948374857485', 'Nashville')
    INTO S20_2_TRIP_DETAILS VALUES(
        '837645', 'The Big Apple Trip', '859475048574', 'New York City')
    INTO S20_2_TRIP_DETAILS VALUES(
        '357245', 'Hawaii Trip', '768495860495', 'Honolulu')
    INTO S20_2_TRIP_DETAILS VALUES(
        '347626', 'Disney World Trip', '049382739482', 'Orlando')
    INTO S20_2_TRIP_DETAILS VALUES(
        '646245', 'Cali Trip', '736475839405', 'San Diego')
    INTO S20_2_TRIP_DETAILS VALUES(
        '452435', 'Casino Trip', '958473627384', 'Las Vegas')
    INTO S20_2_TRIP_DETAILS VALUES(
        '245255', 'Casper Trip', '238475039481', 'Casper')
    INTO S20_2_TRIP_DETAILS VALUES(
        '256256', 'Helena Trip', '103948372614', 'Helena')
    INTO S20_2_TRIP_DETAILS VALUES(
        '965999', 'Little Rock Trip', '139483940543', 'Little Rock')
    INTO S20_2_TRIP_DETAILS VALUES(
        '757578', 'Portland Trip', '847362905849', 'Portland')
    INTO S20_2_TRIP_DETAILS VALUES(
        '986896', 'Phoenix Trip', '385711630598', 'Phoenix')
    INTO S20_2_TRIP_DETAILS VALUES(
        '134651', 'Seattle Trip', '475644528609', 'Seattle')
    INTO S20_2_TRIP_DETAILS VALUES(
        '273575', 'Bangor Trip', '6758229678750', 'Bangor')
    INTO S20_2_TRIP_DETAILS VALUES(
        '764727', 'White House Trip', '375633429786', 'Washington D.C.')
    INTO S20_2_TRIP_DETAILS VALUES(
        '735989', 'Chicago Trip', '869477362906', 'Chicago')
    INTO S20_2_TRIP_DETAILS VALUES(
        '556356', 'Austin Trip', '174385946738', 'Austin')
SELECT * FROM DUAL;

INSERT ALL
    INTO S20_2_PLANS VALUES(
        '000060000', '900000000', '123456', 200.00, '01-Jan-2018', '01-Feb-2018', '14-Mar-2018', 612.14, 0)
    INTO S20_2_PLANS VALUES(
        '000050000', '000000001', '837645', 400.00, '20-May-2018', '26-May-2018', '08-Jun-2018', 524.24, 0)
    INTO S20_2_PLANS VALUES(
        '000040000', '000000002', '357245', 200.00, '07-Jun-2018', '02-Jul-2018', '14-Jul-2018', 642.23, 1)
    INTO S20_2_PLANS VALUES(
        '000030000', '000000003', '347626', 200.00, '10-Sep-2018', '17-Sep-2018', '24-Sep-2018', 356.83, 0)
    INTO S20_2_PLANS VALUES(
        '000020000', '000000004', '646245', 200.00, '05-Jun-2019', '18-Jun-2019', '03-Jul-2019', 542.88, 1)
    INTO S20_2_PLANS VALUES(
        '000010000', '000000005', '452435', 300.00, '12-Oct-2019', '15-Oct-2019', '25-Oct-2019', 646.22, 1)
    INTO S20_2_PLANS VALUES(
        '000009000', '000000006', '245255', 300.00, '08-Mar-2019', '11-Mar-2019', '20-Mar-2019', 645.64, 0)
    INTO S20_2_PLANS VALUES(
        '000008000', '000000007', '256256', 300.00, '04-Dec-2018', '10-Dec-2018', '22-Dec-2018', 533.75, 0)
    INTO S20_2_PLANS VALUES(
        '000007000', '000000008', '965999', 300.00, '20-Oct-2019', '23-Oct-2019', '01-Nov-2019', 566.35, 0)
    INTO S20_2_PLANS VALUES(
        '000006000', '000000009', '757578', 200.00, '10-Nov-2019', '14-Nov-2019', '22-Nov-2019', 356.07, 1)
    INTO S20_2_PLANS VALUES(
        '000005000', '000000010', '986896', 200.00, '03-Jul-2018', '05-Jul-2018', '15-Jul-2018', 567.65, 1)
    INTO S20_2_PLANS VALUES(
        '000004000', '000000020', '134651', 200.00, '15-Apr-2019', '19-Apr-2019', '27-Apr-2019', 434.63, 0)
    INTO S20_2_PLANS VALUES(
        '000003000', '000000030', '273575', 200.00, '09-Aug-2018', '13-Aug-2018', '20-Aug-2018', 378.54, 1)
    INTO S20_2_PLANS VALUES(
        '000002000', '000000040', '764727', 300.00, '03-Feb-2019', '07-Feb-2019', '20-Feb-2019', 245.65, 0)
    INTO S20_2_PLANS VALUES(
        '000001000', '000000050', '735989', 400.00, '11-May-2019', '15-May-2019', '24-May-2019', 134.64, 0)
    INTO S20_2_PLANS VALUES(
        '000000000', '000000060', '556356', 300.00, '13-Sep-2019', '18-Sep-2019', '27-Sep-2019', 479.76, 0) 
SELECT * FROM DUAL;

INSERT ALL
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000000000', 'DL 1925', '123456', 'Birmingham', 'Nashville', 198.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000001000', 'DL 1407', '837645', 'Dallas', 'New York City', 197.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000002000', 'F9 1275', '357245', 'Trenton', 'Honolulu', 922.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000003000', 'B6 2883', '347626', 'New York City', 'Orlando', 177.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000004000', 'HA 171', '646245', 'Hilo', 'San Diego', 273.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000005000', 'F9 2135', '452435', 'Dallas', 'Las Vegas', 46.00) 
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000006000', 'UA 4279', '245255', 'Denver', 'Casper', 207.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000007000', 'UA 5242', '256256', 'Colorado Springs', 'Helena', 278.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000008000', 'AA 2272', '965999', 'Oklahoma City', 'Little Rock', 186.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000009000', 'AS 3420', '757578', 'Reno', 'Portland', 137.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000010000', 'AA 5926', '986896', 'Albequerque', 'Phoenix', 97.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000020000', 'AS 881', '134651', 'Los Angeles', 'Seattle', 147.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000030000', 'AA 2843', '273575', 'Sacramento', 'Bangor', 351.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000040000', 'AA 2122', '764727', 'New York City', 'Washington D.C.', 107.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000050000', 'NK 729', '735989', 'Tampa', 'Chicago', 64.00)
    INTO S20_2_RESERVES_AIRLINE VALUES(
        '000060000', 'AA 4368', '556356', 'Miami', 'Austin', 51.00)
SELECT * FROM DUAL;

-------------------------------------------Updates
-- The following update will give a discount 
-- to all airline costs by 20%.
-- This will drop some tickets below 200 dollars
-- making Query #1 select different tuples

UPDATE S20_2_RESERVES_AIRLINE
SET airlineCost = airlineCost - (airlineCost * 0.2)

------------------------------------------Queries
-- Query #1
-- This query selects # of customers & their type that were born
-- after January 1, 1994 spent over 200 dollars on their flight.
-- 
-- Helps us see what type of customers spend more & if age has an
-- effect on flight ticket spending.
SELECT COUNT(custID), custType
FROM   S20_2_CUSTOMER
WHERE  custID IN(
    SELECT  custID
    FROM    S20_2_RESERVES_AIRLINE
    WHERE   airlineCost > 200)
GROUP BY custType
HAVING MIN(DOB) > '01-Jan-1994';

-- Query #2
-- This query shows which states spend the most on airline costs.
SELECT state_resident, SUM(airlineCost), COUNT(*) QTY
FROM S20_2_CUSTOMER c, S20_2_RESERVES_AIRLINE r
WHERE c.custID = r.custID
GROUP BY ROLLUP(state_resident);

-- Query #3
-- This query show what type of customer spends more money based
-- gender and customer type.
SELECT custType, gender, SUM(airlineCost), COUNT(*) QTY_Customers
FROM S20_2_CUSTOMER c, S20_2_RESERVES_AIRLINE r
WHERE c.custID = r.custID
GROUP BY CUBE(gender,custType);

--------------------------------------Drop tables
DROP TABLE S20_2_RESERVES_AIRLINE;
DROP TABLE S20_2_PLANS;
DROP TABLE S20_2_TRIP_DETAILS;
DROP TABLE S20_2_AIRLINE;
DROP TABLE S20_2_EMPLOYEE;
DROP TABLE S20_2_CUSTOMER;

-- Omega file upload statement
commit; 