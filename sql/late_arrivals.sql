select *,
(shippeddate + INTERVAL '3 days')::date AS latest_arrival
from orders
WHERE CASE when (shippeddate + INTERVAL '3 days')::date > requiredDate then 1 else 0 end = 1