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
-- This query 
--
-- This query shows how a customer's gender correlates with their
-- respective customer type



-- Query #3
-- This query
--
-- Shows how a customer's type correlates with their 
-- respective age