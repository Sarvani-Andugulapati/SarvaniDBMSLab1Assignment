/* 4)	Display all the orders along with product name ordered by a customer having Customer_Id=2*/
select order_details.ord_id , order_details.cus_id, product.prod_name from order_details
join supplier_pricing as sp
on sp.pricing_id = order_details.pricing_id
join product 
on product.prod_id = sp.prod_id
where order_details.cus_id = 2;
