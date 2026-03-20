select
*
from(
	select
	product,
	price,
	avg(price) over() as AvgPrice
	from sales.products
	) as AvgTable
where price > AvgPrice