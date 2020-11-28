CREATE TABLE CUSTOMERS
(
ID INT IDENTITY(1,1),
NAME_ VARCHAR(50) NOT NULL,
SURNAME VARCHAR(50) NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
GENDER CHAR(1) NOT NULL,
BIRTHDATE DATE NOT NULL,
CREATE_DATE DATETIME NOT NULL,
TELL_NO VARCHAR(15) NOT NULL,
JOB_ID INT,

CONSTRAINT PK_CUSTOMERS PRIMARY KEY (ID),
CONSTRAINT FK_CUSTOMERS FOREIGN KEY (JOB_ID) REFERENCES INFORMATION_JOBS (ID)
)