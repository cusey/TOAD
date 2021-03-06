ALTER TABLE STUDENT.DEPT
 DROP PRIMARY KEY CASCADE;

DROP TABLE STUDENT.DEPT CASCADE CONSTRAINTS;

CREATE TABLE STUDENT.DEPT
(
  DEPTNO  NUMBER(2)                             NOT NULL,
  DNAME   VARCHAR2(14 BYTE),
  LOC     VARCHAR2(13 BYTE)
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


CREATE UNIQUE INDEX STUDENT.DEPT_PRIMARY_KEY ON STUDENT.DEPT
(DEPTNO)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE STUDENT.DEPT ADD (
  CONSTRAINT DEPT_PRIMARY_KEY
  PRIMARY KEY
  (DEPTNO)
  USING INDEX STUDENT.DEPT_PRIMARY_KEY
  ENABLE VALIDATE);
