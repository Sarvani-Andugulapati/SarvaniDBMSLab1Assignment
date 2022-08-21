CREATE TABLE if not exists SUPPLIER_PRICING(
PRICING_ID INT auto_increment,
PROD_ID INT NOT NULL,
foreign key(PROD_ID) REFERENCES PRODUCT(PROD_ID),
SUPP_ID INT NOT NULL,
primary key(Pricing_id),
foreign key(SUPP_ID) references SUPPLIER(SUPP_ID),
SUPP_PRICE INT default 0);