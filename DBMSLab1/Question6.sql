/*6)	Find the least expensive product from each category and print the table with 
category id, name, product name and price of the product*/
select cat.cat_id, cat.cat_name, p.prod_name, min(sp.supp_price) as min_price from supplier_pricing as sp
join product as p
on p.prod_id = sp.prod_id
join category as cat
on cat.cat_id = p.cat_id
group by cat.cat_id
order by cat.CAT_ID ;
