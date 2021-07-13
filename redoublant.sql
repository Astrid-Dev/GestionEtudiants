--------------------------------------------------------
--  Fichier créé - jeudi-décembre-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REDOUBLANT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."REDOUBLANT" 
   (	"IDET" VARCHAR2(7 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.REDOUBLANT
SET DEFINE OFF;
Insert into SYSTEM.REDOUBLANT (IDET) values ('18K2415');
Insert into SYSTEM.REDOUBLANT (IDET) values ('19K2021');
Insert into SYSTEM.REDOUBLANT (IDET) values ('17K1214');
Insert into SYSTEM.REDOUBLANT (IDET) values ('19L2120');
--------------------------------------------------------
--  Constraints for Table REDOUBLANT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."REDOUBLANT" MODIFY ("IDET" NOT NULL ENABLE);
