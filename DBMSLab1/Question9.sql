CREATE DEFINER=`root`@`localhost` PROCEDURE `Type_Of_Service`()
BEGIN
select supp_id, supp_name,rated,
 CASE
 when rated = 5 then 'Excellent Service'
 when rated > 4 then 'Good Service'
 when rated > 2 then 'Average Service'
 else 'Poor Service'
 End as Type_Of_Service
from (select sr.supp_id, sr.supp_name, sum(sr.rat_ratstars)/count(sr.supp_id) as 'rated'from (
select so.supp_id, so.supp_name, r.rat_ratstars from rating as r
join (
select supp.supp_id, supp.supp_name, ord.ord_id from order_details as ord
join (
select s.supp_id, s.supp_name, sp.pricing_id from supplier as s
join supplier_pricing as sp
on sp.supp_id = s.supp_id ) AS supp
on ord.pricing_id=supp.pricing_id) AS so
on r.ord_id = so.ORD_ID
order by so.supp_id) as sr
group by sr.supp_id) as final;
END