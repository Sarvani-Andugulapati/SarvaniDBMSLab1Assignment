/*3)	Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.*/
select cus_gender, count(cus_id) as 'No of Customers' from customer 
where cus_id IN(select cus_id from order_details 
where ord_amount >= 3000) group by cus_gender;

/* 4)	Display all the orders along with product name ordered by a customer having Customer_Id=2*/
select order_details.ord_id , order_details.cus_id, product.prod_name from order_details
join supplier_pricing as sp
on sp.pricing_id = order_details.pricing_id
join product 
on product.prod_id = sp.prod_id
where order_details.cus_id = 2;

/*5)	Display the Supplier details who can supply more than one product.*/
select s.supp_id, s.supp_name, s.supp_city, s.supp_phone, count(sp.prod_id) as 'No of Products' from supplier as s
join supplier_pricing as sp
on sp.supp_id = s.supp_id
group by supp_id
having count(sp.prod_id)>1;

/*6)	Find the least expensive product from each category and print the table with 
category id, name, product name and price of the product*/
select cat.cat_id, cat.cat_name, p.prod_name, min(sp.supp_price) as price from supplier_pricing as sp
join product as p
on p.prod_id = sp.prod_id
join category as cat
on cat.cat_id = p.cat_id
group by cat.cat_id;

/*7)	Display the Id and Name of the Product ordered after “2021-10-05”*/
select p.prod_id, p.prod_name, od.ord_date from product as p
join supplier_pricing as sp
on sp.prod_id = p.prod_id
join order_details as od
on sp.pricing_id = od.pricing_id
group by od.ord_date
having od.ord_date>"2021-10-05";

/*8)	Display customer name and gender whose names start or end with character 'A'*/
select cus_name, cus_gender from customer where 
cus_name like 'A%' or cus_name like '%A';

/*9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service,
 If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, 
 If rating >2 print “Average Service” else print “Poor Service”.*/
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