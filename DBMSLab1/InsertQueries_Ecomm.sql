insert into supplier values(1,"Rajesh Retails","Delhi",'1234567890');
insert into supplier values(2,"Appario Ltd.","Mumbai",'2589631470');
insert into supplier values(3,"Knome products","Bangalore",'9785462315');
insert into supplier values(4,"Bansal Retails","Kochi",'8975463285');
insert into supplier values(5,"Mittal Ltd.","Lucknow",'7898456532');

insert into customer values(1, "AAkash", '9999999999', "Delhi", 'M');
insert into customer values(2, "Aman", '9785463215', "Noida", 'M');
insert into customer values(3, "Neha", '9999999999', "Mumbai", 'F');
insert into customer values(4, "Megha", '9994532695', "Kolkata", 'F');
insert into customer values(5, "Pulkit", '7689546749', "Lucknow", 'M');

insert into category values(1, "Books");
insert into category values(2, "Games");
insert into category values(3, "Groceries");
insert into category values(4, "Electronics");
insert into category values(5, "Clothes");

insert into product values(1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
insert into product values(2, "Tshirt", "SIZE-L with Black, Blue and White variations", 5);
insert into product values(3, "ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD", 4);
insert into product values(4, "OATS", "Highly Nutritious from Nestle", 3);
insert into product values(5, "Harry Potter", "Best Collection of all time by J.K Rowling", 1);
insert into product values(6, "MILK", "1L Toned MIlk", 3);
insert into product values(7, "Boat Earphones", "1.5Meter long Dolby Atmos", 4);
insert into product values(8, "Jeans", "Stretchable Denim Jeans with various sizes and color", 5);
insert into product values(9, "Project IGI", "compatible with windows 7 and above", 2);
insert into product values(10, "Hoodie", "Black GUCCI for 13 yrs and above", 5);
insert into product values(11, "Rich Dad Poor Dad", "Written by RObert Kiyosaki", 1);
insert into product values(12, "Train Your Brain", "By Shireen Stephen", 1);

insert into supplier_pricing values(1, 1, 2, 1500);
insert into supplier_pricing values(2, 3, 5, 30000);
insert into supplier_pricing values(3, 5, 1, 3000);
insert into supplier_pricing values(4, 2, 3, 2500);
insert into supplier_pricing values(5, 4, 1, 1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);

INSERT INTO `ORDER_details` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER_details` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER_details` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER_details` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER_details` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER_details` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER_details` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER_details` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER_details` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER_details` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER_details` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER_details` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER_details` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER_details` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER_details` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER_details` VALUES(116,99,"2021-09-17",2,14);

INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);


