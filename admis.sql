--------------------------------------------------------
--  Fichier créé - jeudi-décembre-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ADMIS" 
   (	"IDET" VARCHAR2(7 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.ADMIS
SET DEFINE OFF;
Insert into SYSTEM.ADMIS (IDET) values ('19P2324');
Insert into SYSTEM.ADMIS (IDET) values ('19M2545');
Insert into SYSTEM.ADMIS (IDET) values ('19N3221');
Insert into SYSTEM.ADMIS (IDET) values ('19O2014');
Insert into SYSTEM.ADMIS (IDET) values ('18L2342');
Insert into SYSTEM.ADMIS (IDET) values ('19D5214');
--------------------------------------------------------
--  Constraints for Table ADMIS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ADMIS" MODIFY ("IDET" NOT NULL ENABLE);
