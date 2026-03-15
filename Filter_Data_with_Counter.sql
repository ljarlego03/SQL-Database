/*
For counting the number of name under a country
*/
select 
distinct country,
count (country) over(partition by country)
from dbo.customers

select*
from dbo.customers