/*3)	Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.*/
select cus_gender, count(cus_id) as 'No of Customers' from customer 
where cus_id IN(select cus_id from order_details 
where ord_amount >= 3000) group by cus_gender;