-- Ivan Ahumada 1000854077

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