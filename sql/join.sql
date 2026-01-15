SELECT t1.orderdate, t1.ordernumber, quantityOrdered, Priceeach,
productname, productline, buyprice,city, country
from orders t1
inner join orderdetails t2
on t1.ordernumber = t2.ordernumber
inner join products t3
on t2.productcode = t3.productcode
inner join customers t4
on t1.customernumber = t4.customernumber
WHERE EXTRACT(YEAR FROM orderdate) = 2004
ORDER BY orderdate;



