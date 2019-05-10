DROP TABLE STUDENT.BONUS CASCADE CONSTRAINTS;

CREATE TABLE STUDENT.BONUS
(
  ENAME  VARCHAR2(10 BYTE),
  JOB    VARCHAR2(9 BYTE),
  SAL    NUMBER,
  COMM   NUMBER
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