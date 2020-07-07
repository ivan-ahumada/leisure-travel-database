--Ivan Ahumada 1000854077

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
        '000000006', 'male', 'Oliver King', '30-Feb-1986', 73657.88)
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
    INTO S20_2_PLANS VALUES(
        '000060000', '900000000', '123456', 231.22, '01-Jan-2018', '01-Feb-2018', '14-Mar-2018', 612.14, 0)
    INTO S20_2_PLANS VALUES(
        '000050000', '000000001', '837645', 203.13, '20-May-2018', '26-May-2018', '08-Jun-2018', 524.24, 0)
    INTO S20_2_PLANS VALUES(
        '000040000', '000000002', '357245', 220.33, '07-Jun-2018', '02-Jul-2018', '14-Jul-2018', 642.23, 1)
    INTO S20_2_PLANS VALUES(
        '000030000', '000000003', '347626', 190.44, '10-Sep-2018', '17-Sep-2018', '24-Sept-2018', 356.83, 0)
    INTO S20_2_PLANS VALUES(
        '000020000', '000000004', '646245', 193.84, '05-Jun-2019', '18-Jun-2019', '03-Jul-2019', 542.88, 1)
    INTO S20_2_PLANS VALUES(
        '000010000', '000000005', '452435', 215.84, '12-Oct-2019', '15-Oct-2019', '25-Oct-2019', 646.22, 1)
    INTO S20_2_PLANS VALUES(
        '000009000', '000000006', '245255', 208.88, '08-Mar-2019', '11-Mar-2019', '20-Mar-2019', 645.64, 0)
    INTO S20_2_PLANS VALUES(
        '000008000', '000000007', '256256', 199.83, '04-Dec-2018', '10-Dec-2018', '22-Dec-2018', 533.75, 0)
    INTO S20_2_PLANS VALUES(
        '000007000', '000000008', '965999', 177.84, '20-Oct-2019', '23-Oct-2019', '01-Nov-2019', 566.35, 0)
    INTO S20_2_PLANS VALUES(
        '000006000', '000000009', '757578', 204.44, '10-Nov-2019', '14-Nov-2019', '22-Nov-2019', 356.07, 1)
    INTO S20_2_PLANS VALUES(
        '000005000', '000000010', '986896', 200.88, '03-Jul-2018', '05-Jul-2018', '15-Jul-2018', 567.65, 1)
    INTO S20_2_PLANS VALUES(
        '000004000', '000000020', '134651', 220.88, '15-Apr-2019', '19-Apr-2019', '27-Apr-2019', 434.63, 0)
    INTO S20_2_PLANS VALUES(
        '000003000', '000000030', '273575', 228.38, '09-Aug-2018', '13-Aug-2018', '20-Aug-2018', 378.54, 1)
    INTO S20_2_PLANS VALUES(
        '000002000', '000000040', '764727', 229.38, '03-Feb-2019', '07-Feb-2019', '20-Feb-2019', 245.65, 0)
    INTO S20_2_PLANS VALUES(
        '000001000', '000000050', '735989', 220.83, '11-May-2019', '15-May-2019', '24-May-2019', 134.64, 0)
    INTO S20_2_PLANS VALUES(
        '000000000', '000000060', '556356', 227.73, '13-Sep-2019', '18-Sep-2019', '27-Sep-2019', 479.76, 0) 
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

