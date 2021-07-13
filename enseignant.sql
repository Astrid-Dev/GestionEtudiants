--------------------------------------------------------
--  Fichier créé - jeudi-décembre-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ENSEIGNANT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ENSEIGNANT" 
   (	"IDENS" NUMBER, 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"MAIL" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.ENSEIGNANT
SET DEFINE OFF;
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('1','MUSIMA','              ','musima@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('2','NDONGO','              ','ndongo@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('3','MOYOU','               ','moyou@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('4','SUNANG','              ','sunang@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('5','ABESSOLO','Ghislain    ','abessolo@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('6','DJIKY','Eric           ','djiky@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('7','MBE','Bruno            ','mbe@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('8','TAMO','LEONIE          ','tamo@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('9','MONTHE','              ','monthe@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('10','TCHIO','               ','tchio@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('11','BIYONG','              ','biyong@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('12','NKONDOCK','            ','nkondock@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('13','KEHBUMA','             ','kehbuma@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('14','VIDEME','              ','videme@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('15','KUTCHE','              ','kutche@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('16','NKOUANHOU','ABOUBAKAR  ','aboubakar@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('17','MOUAFO','              ','mouafo@gmail.cm');
Insert into SYSTEM.ENSEIGNANT (IDENS,NOM,PRENOM,MAIL) values ('0','          ','          ','        ');
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TABLE1_PK" ON "SYSTEM"."ENSEIGNANT" ("IDENS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ENSEIGNANT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ENSEIGNANT" MODIFY ("IDENS" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ENSEIGNANT" MODIFY ("NOM" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ENSEIGNANT" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDENS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
