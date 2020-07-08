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

-- This helps by showing which states to invest more on advertisements.
SELECT state_resident, sum(airlineCost)
FROM S20_2_CUSTOMER c, S20_2_RESERVES_AIRLINE r
WHERE c.custID = r.custID
GROUP BY ROLLUP(state_resident);


-- Query #3
-- This query
--
-- Shows how a customer's type correlates with their 
-- respective age
-- TODO: CUBE clause query
