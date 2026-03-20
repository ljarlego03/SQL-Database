select
CustomerID,
TotalSales,
rank () over (Order by TotalSales desc)
from(
	select
	CustomerID,
	sum(sales) as TotalSales
	from sales.orders
	group by customerID
	) as TotalTable
