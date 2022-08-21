CREATE TABLE order_details(
ORD_ID INT auto_increment,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL,
CUS_ID INT NOT NULL,
primary key(ord_id),
FOREIGN KEY(CUS_ID) REFERENCES CUSTOMER(CUS_ID),
PRICING_ID INT NOT NULL,
FOREIGN KEY(PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID));