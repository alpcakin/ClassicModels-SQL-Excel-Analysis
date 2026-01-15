with cte as(
	SELECT ordernumber, t1.productcode, productline
	FROM orderdetails t1
	JOIN products t2
	on t1.productcode = t2.productcode
)
SELECT DISTINCT f1.ordernumber, f1.productline AS product_one, f2.productline AS product_two
from cte f1
LEFT JOIN cte f2
on f1.ordernumber = f2.ordernumber and f1.productline <> f2.productline
ORDER BY ordernumber ASC