CREATE PROCEDURE `Type_Of_Service` ()
BEGIN
select s.supp_id, s.supp_name, r.rat_ratstars as 'rated',
 CASE
 when r.rat_ratstars = 5 then 'Excellent Service'
 when r.rat_ratstars > 4 then 'Good Service'
 when r.rat_ratstars > 2 then 'Average Service'
 else 'Poor Service'
 End as Type_Of_Service
 from rating as r
 join order_details as od
 on od.ord_id = r.ord_id
 join supplier_pricing as sp
 on sp.pricing_id = od.pricing_id
 join supplier as s
 on s.supp_id = sp.supp_id;
END
