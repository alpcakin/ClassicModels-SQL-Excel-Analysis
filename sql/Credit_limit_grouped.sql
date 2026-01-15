SELECT t1.orderNumber, t1.customerNumber,SUM(quantityOrdered * priceeach) AS sales_value,
CASE WHEN creditlimit < 75000 then 'a:less than 75k'
	when creditlimit BETWEEN 75000 and 100000 then 'b:75k - 100k'
	when creditlimit BETWEEN 100000 and 150000 then 'c:100k - 150k'
	when creditlimit > 150000 THEN 'd:over 150k'
	else 'other'
END AS creditlimit_group
FROM orders t1
JOIN orderdetails t2
on t1.orderNumber = t2.orderNumber
join customers t3
on t1.customerNumber = t3.customerNumber
GROUP BY t1.ordernumber, t1.customerNumber, creditlimit_group
ORDER BY creditlimit_group