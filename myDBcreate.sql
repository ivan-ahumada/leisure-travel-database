-- Ivan Ahumada 1000854077
CREATE TABLE S20_2_CUSTOMER(
    custID char(9) not null,
    custName varchar(25) not null,
    emailID varchar(30) not null, -- making email imperative for signup
    custType varchar(10) not null,
    DOB DATE,
    gender varchar(7),
    zipCode varchar(6),
    state_resident char(3),
    streetName varchar(15),
    primary key(custID),
    UNIQUE(emailID),
)

CREATE TABLE S20_2_EMPLOYEE(
    empID char(9) not null,
    gender varchar(7)
        check(gender = 'male' OR gender = 'female' OR gender = 'other'),
    DOB DATE,
    full_name varchar(30) not null,
    salary DECIMAL(8,2) not null,
)

CREATE TABLE S20_2_PLANS(
    custID char(9) not null,
    empID char(9) not null,
    PNR varchar(15) not null,
    commission DECIMAL(6,2) not null,
    fromDate DATE not null,
    toDate DATE not null,
    invoice_date DATE not null,
    date_of DATE not null,
    adpayment 
    GSO 
)