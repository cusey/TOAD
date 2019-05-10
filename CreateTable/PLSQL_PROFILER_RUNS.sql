ALTER TABLE STUDENT.PLSQL_PROFILER_RUNS
 DROP PRIMARY KEY CASCADE;

DROP TABLE STUDENT.PLSQL_PROFILER_RUNS CASCADE CONSTRAINTS;

CREATE TABLE STUDENT.PLSQL_PROFILER_RUNS
(
  RUNID            NUMBER,
  RELATED_RUN      NUMBER,
  RUN_OWNER        VARCHAR2(32 BYTE),
  RUN_PROC         VARCHAR2(256 BYTE),
  RUN_DATE         DATE,
  RUN_COMMENT      VARCHAR2(2047 BYTE),
  RUN_TOTAL_TIME   NUMBER,
  RUN_SYSTEM_INFO  VARCHAR2(2047 BYTE),
  RUN_COMMENT1     VARCHAR2(256 BYTE),
  SPARE1           VARCHAR2(256 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE STUDENT.PLSQL_PROFILER_RUNS IS 'Run-specific information for the PL/SQL profiler';


--  There is no statement for index STUDENT.SYS_C0011056.
--  The object is created when the parent object is created.

ALTER TABLE STUDENT.PLSQL_PROFILER_RUNS ADD (
  PRIMARY KEY
  (RUNID)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);