-- Ivan Ahumada 1000854077

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