-- Ivan Ahumada 1000854077

-- The following update will give a discount 
-- to all airline costs by 20%.
-- This will drop some tickets below 200 dollars
-- making Query #1 select different tuples
UPDATE S20_2_RESERVES_AIRLINE
SET airlineCost = airlineCost - (airlineCost * 0.2)

-- The following update will update Natalia Perez's
-- state of residency. 
UPDATE S20_2_CUSTOMER
SET state_resident = 'CO'
WHERE custID = '000060000';