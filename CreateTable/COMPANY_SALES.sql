DROP TABLE STUDENT.COMPANY_SALES CASCADE CONSTRAINTS;

CREATE TABLE STUDENT.COMPANY_SALES
(
  CUST_ID       NUMBER,
  SALES_NAME    VARCHAR2(10 BYTE),
  SALES_AMOUNT  NUMBER(6),
  SALES_DATE    DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;
