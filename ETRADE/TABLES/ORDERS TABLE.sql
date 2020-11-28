CREATE TABLE ORDERS
(
ID INT IDENTITY(1,1),
CUSTOMER_ID INT NOT NULL,
DATE_ DATETIME NOT NULL,
TOTALPRICE FLOAT NOT NULL,
STATUS_ID TINYINT ,
ADDRESS_ID INT ,

CONSTRAINT PK_ORDERS PRIMARY KEY (ID),
CONSTRAINT FK_ORDERS_CUSTOMERS FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID) ON DELETE CASCADE,
CONSTRAINT FK_ORDERS_STATUS FOREIGN KEY (STATUS_ID) REFERENCES ORDER_STATUS(ID) ON DELETE CASCADE,
CONSTRAINT FK_ADDRESS FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESS(ID) 
)