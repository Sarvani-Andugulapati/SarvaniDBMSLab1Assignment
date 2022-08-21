Create table if not exists customer(
CUS_ID INT auto_increment,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY VARCHAR(30) NOT NULL,
Primary key(cus_id),
CUS_GENDER CHAR);