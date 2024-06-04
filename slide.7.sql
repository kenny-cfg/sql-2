-- Using the table ‘parts’, return all unique part names. What happens if we want to
-- return all unique parts and their id number? Why?

select distinct PNAME from PART;

select DISTINCT P_ID, PNAME from PART
-- The above query returns all parts because DISTINCT returns unique pairs of P_ID and PNAME,
-- and all the P_IDs are different

-- Refer to the table ‘projects’ and return all projects that are run in London.

select * from PROJECT where CITY = 'LONDON'
