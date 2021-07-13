--------------------------------------------------------
--  Fichier créé - jeudi-décembre-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table UE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."UE" 
   (	"CODEUE" VARCHAR2(7 BYTE), 
	"LIBELLE" VARCHAR2(100 BYTE), 
	"CREDIT" NUMBER(1,0), 
	"IDENS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.UE
SET DEFINE OFF;
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('eng203','ENGLISH II                                               ','3','1');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('fra203','FRANCAIS II                                              ','3','2');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict201','INTRODUCTION TOSOFTWARE INGINEERING                      ','6','3');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict202','SOFTWARE DEVELOPEMENT FOR MOBILE DEVICES                 ','5','4');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict203','DABASE SYSTEMS                                           ','6','5');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict204','INTRODUCTION TO OPERATING SYSTEM                         ','5','6');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict205','INTRODUCTION TO PROGAMMING IN .NET                       ','5','7');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict206','INTRODUCTION TO COMPUTER NETWORK                         ','5','8');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict207','SOFTWARE DEVELOPMENT IN JAVA 1                           ','5','9');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict208','COMPUTER ARCHITECHTURE                                   ','5','10');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict210','DATABASE PROGRAMMING                                     ','5','11');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict213','INTRODUCTION TO COMPUTER SECURITY AND RISK MANAGEMENT    ','5','12');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict214','INTRODUCTION TO CRYPTOGRAPHY                             ','5','13');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict215','INTRODUCTION TO COMPUTER NETWORKING                      ','5','14');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict216','NETWORK ADMINISTRATION                                   ','5','15');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict217','SOFTWARE INGINEERING                                     ','5','16');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('ict218','ADVANCED APPLICTAION DEVELOPMENT                         ','5','17');
Insert into SYSTEM.UE (CODEUE,LIBELLE,CREDIT,IDENS) values ('      ','                                     ','0','0');
--------------------------------------------------------
--  DDL for Index UE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."UE_PK" ON "SYSTEM"."UE" ("CODEUE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table UE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."UE" MODIFY ("CODEUE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."UE" MODIFY ("LIBELLE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."UE" MODIFY ("CREDIT" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."UE" MODIFY ("IDENS" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."UE" ADD CONSTRAINT "UE_PK" PRIMARY KEY ("CODEUE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
