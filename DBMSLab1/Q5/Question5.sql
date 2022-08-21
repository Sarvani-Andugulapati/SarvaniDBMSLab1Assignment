/*5)	Display the Supplier details who can supply more than one product.*/
select s.supp_id, s.supp_name, s.supp_city, s.supp_phone, count(sp.prod_id) as 'No of Products' from supplier as s
join supplier_pricing as sp
on sp.supp_id = s.supp_id
group by supp_id
having count(sp.prod_id)>1;
