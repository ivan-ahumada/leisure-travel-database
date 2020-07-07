-- The following update will give a discount 
-- to all airline costs by 20%.
-- This will drop some tickets below 200 dollars
-- making Query #1 select different tuples

UPDATE S20_2_RESERVES_AIRLINE
SET airlineCost = airlineCost - (airlineCost * 0.2)

