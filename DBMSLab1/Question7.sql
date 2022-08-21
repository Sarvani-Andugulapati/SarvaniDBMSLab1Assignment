/*7)	Display the Id and Name of the Product ordered after “2021-10-05”*/
select p.prod_id, p.prod_name, od.ord_date from product as p
join supplier_pricing as sp
on sp.prod_id = p.prod_id
join order_details as od
on sp.pricing_id = od.pricing_id
group by od.ord_date
having od.ord_date>"2021-10-05";
