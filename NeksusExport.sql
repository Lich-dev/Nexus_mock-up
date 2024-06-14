--------------------------------------------------------
--  File created - Pátek-èervna-14-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_N_CHANGELOG_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_CHANGELOG_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 29 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_COMMENT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_COMMENT_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 24 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_FILE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_FILE_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_GAME_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_GAME_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_IMAGE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_IMAGE_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 19 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_MOD_DEPENDENCY_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_MOD_DEPENDENCY_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_MOD_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_MOD_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 24 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_NEWS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_NEWS_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_TRACKED_MOD_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_TRACKED_MOD_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_N_VIDEO_ID
--------------------------------------------------------

   CREATE SEQUENCE  "NEKSUSDB"."SEQ_N_VIDEO_ID"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table N_CHANGELOG
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_CHANGELOG" 
   (	"DESCRIPTION" VARCHAR2(500 BYTE), 
	"VERSION" VARCHAR2(10 BYTE), 
	"CHANGELOG_ID" NUMBER(15,0), 
	"MOD_ID" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_COMMENT
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_COMMENT" 
   (	"DATE_COMMENTED" DATE, 
	"PARENT_COMMENT" NUMBER(15,0), 
	"COMMENT_TEXT" NVARCHAR2(500), 
	"COMMENT_ID" NUMBER(15,0), 
	"MOD_ID" NUMBER(12,0), 
	"USER_ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_EMPLOYEE" 
   (	"FIRST_NAME" VARCHAR2(30 BYTE), 
	"LAST_NAME" VARCHAR2(30 BYTE), 
	"PHONE_NUMBER" VARCHAR2(15 BYTE), 
	"CITY" VARCHAR2(50 BYTE), 
	"COUNTRY" VARCHAR2(50 BYTE), 
	"STREET" VARCHAR2(50 BYTE), 
	"HOUSE_NUMBER" VARCHAR2(50 BYTE), 
	"POSTAL_CODE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_FILE
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_FILE" 
   (	"DESCRIPTION" NVARCHAR2(200), 
	"FILE_PATH" VARCHAR2(300 BYTE), 
	"RELEASE_DATE" DATE, 
	"VERSION" VARCHAR2(10 BYTE), 
	"FILE_ID" NUMBER(15,0), 
	"MOD_ID" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_GAME
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_GAME" 
   (	"RELEASE_DATE" DATE, 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"DEVELOPER" VARCHAR2(50 BYTE), 
	"GAME_NAME" VARCHAR2(50 BYTE), 
	"IMAGE_PATH" VARCHAR2(300 BYTE), 
	"GAME_ID" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_IMAGE
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_IMAGE" 
   (	"IMAGE_PATH" VARCHAR2(300 BYTE), 
	"IMAGE_ID" NUMBER(15,0), 
	"MOD_ID" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_MOD
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_MOD" 
   (	"DATE_PUBLISHED" DATE, 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"MOD_NAME" VARCHAR2(50 BYTE), 
	"THUMBNAIL_IMAGE_ID" NUMBER(15,0), 
	"TRACK_COUNT" NUMBER(12,0), 
	"MOD_ID" NUMBER(12,0), 
	"GAME_ID" NUMBER(8,0), 
	"AUTHOR" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_MOD_DEPENDENCY
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" 
   (	"CHILD_MOD_ID" NUMBER(12,0), 
	"PARENT_MOD_ID" NUMBER(12,0), 
	"MOD_DEPENDENCY_ID" NUMBER(15,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_NEWS
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_NEWS" 
   (	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"HEADLINE" VARCHAR2(30 BYTE), 
	"IMAGE_PATH" VARCHAR2(300 BYTE), 
	"IS_PINNED" CHAR(1 BYTE), 
	"RELEASE_DATE" DATE, 
	"NEWS_ID" NUMBER(8,0), 
	"GAME_ID" NUMBER(8,0), 
	"MOD_ID" NUMBER(10,0), 
	"AUTHOR" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_TRACKED_MOD
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_TRACKED_MOD" 
   (	"TRACKED_MOD_ID" NUMBER(12,0), 
	"MOD_ID" NUMBER(12,0), 
	"USER_ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_USER
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_USER" 
   (	"IS_BANNED" CHAR(1 BYTE), 
	"IS_ADMIN" CHAR(1 BYTE), 
	"USERNAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(60 BYTE), 
	"REGISTER_DATE" DATE, 
	"EMAIL" VARCHAR2(50 BYTE), 
	"EMPLOYEE_ID" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table N_VIDEO
--------------------------------------------------------

  CREATE TABLE "NEKSUSDB"."N_VIDEO" 
   (	"VIDEO_PATH" VARCHAR2(300 BYTE), 
	"VIDEO_ID" NUMBER(14,0), 
	"MOD_ID" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View U_AKTUALNE_OBJEDNANE_ZBOZI
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NEKSUSDB"."U_AKTUALNE_OBJEDNANE_ZBOZI" ("ZAKAZNIK", "REGION", "OBJEDNANE_ZBOZI", "OBJEDNANE_MNOZSTVI_KS", "ID_OBJEDNAVKY", "ZBOZI_NA_SKLADE", "DOSTUPNY_POCET_KS") AS 
  (
select
  wm_concat(unique kli.nazev) as zakaznik,
  wm_concat(unique reg.nazev) as region,
  wm_concat(unique zbo.nazev) as OBJEDNANE_ZBOZI,
  sum(unique oz.mnozstvi) as OBJEDNANE_MNOZSTVI_KS, 
  obj.id as ID_OBJEDNAVKY,
  wm_concat(unique adr.mesto) as zbozi_na_sklade,
  wm_concat(unique dp.cat) as dostupny_pocet_ks

from u_objednavka obj
inner join u_objednavka_zbozi oz
on obj.id = oz.objednavka_id
and obj.DATUM_DODANI is null
inner join u_zbozi zbo
on zbo.ID = oz.ZBOZI_ID
and oz.odeslano is null
inner join u_zbozi_skladiste zs
on zbo.id = zs.ZBOZI_ID
inner join (select zbozi_id, sum(uskladnene_mnozstvi) 
  as cat from u_zbozi_skladiste group by zbozi_id) dp
on dp.zbozi_id = zbo.id
inner join u_skladiste skl
on skl.id = zs.skladiste_id
inner join u_adresa adr
on skl.adresa_id = adr.id
inner join u_region reg
on reg.id = adr.region_id
inner join u_klient kli
on kli.id = obj.klient_id
group by obj.id
);
--------------------------------------------------------
--  DDL for View U_CELKOVE_TRZBY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NEKSUSDB"."U_CELKOVE_TRZBY" ("REGION", "TRZBA_V_MIL") AS 
  (
select reg.nazev as region,
  (case when sum(oz.cat)is not null
  then (concat(sum(oz.cat),reg.mena))
  ELSE null end)as TRZBA_v_mil
from u_region reg
left outer join u_adresa adr
on reg.id = adr.region_id
left outer join u_klient kli
on adr.id = kli.adresa_id
left outer join u_objednavka obj
on obj.klient_id = kli.id
left outer join (select objednavka_id, sum(stanovena_cena)
  as cat from u_objednavka_zbozi group by objednavka_id) oz
on oz.objednavka_id = obj.id
group by reg.nazev,reg.mena);
--------------------------------------------------------
--  DDL for View U_VLASTNI_POHLED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NEKSUSDB"."U_VLASTNI_POHLED" ("REGION", "ZBOZI", "USKLADNENE_MNOZSTVI", "DOPORUCENE_MNOZSTVI", "JE_TREBA_DOPLNIT") AS 
  (
select reg.nazev as region,
wm_concat(zbo.nazev) as zbozi,
wm_concat(zs.uskladnene_mnozstvi) as uskladnene_mnozstvi,
wm_concat(zs.doporucene_mnozstvi) as doporucene_mnozstvi,
wm_concat(case when zs.doporucene_mnozstvi *0.5>zs.uskladnene_mnozstvi
then 'ano' else 'ne' end)as je_treba_doplnit
from u_region reg
inner join u_adresa adr
on adr.REGION_ID = reg.id
inner join u_skladiste skl
on adr.id = skl.ADRESA_ID
inner join U_ZBOZI_SKLADISTE zs
on zs.SKLADISTE_ID = skl.id
inner join u_zbozi zbo
on zbo.id = zs.ZBOZI_ID
group by reg.nazev);
REM INSERTING into NEKSUSDB.N_CHANGELOG
SET DEFINE OFF;
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','22','19');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','1','1');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','2','2');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','3','3');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','4','4');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','5','5');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','6','6');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','26','21');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','28','23');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('release','1.0.0','25','20');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','27','22');
Insert into NEKSUSDB.N_CHANGELOG (DESCRIPTION,VERSION,CHANGELOG_ID,MOD_ID) values ('mod was announced','initial','23','20');
REM INSERTING into NEKSUSDB.N_COMMENT
SET DEFINE OFF;
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'asd','1','1','test@test.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'asdasd','9','1','test@test.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'test','13','1','test@test.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'asdasd','3','1','test@test.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'345','11','1','test@test.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'weq','5','4','test@test.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'ahoj','15','2','runuk305@seznam.cz');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('23.04.24','DD.MM.RR'),null,'yay','19','3','schlang.ster@gmail.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('24.04.24','DD.MM.RR'),null,'yay','21','6','test@gmail.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('24.04.24','DD.MM.RR'),null,'gm','23','6','admin@neksus.com');
Insert into NEKSUSDB.N_COMMENT (DATE_COMMENTED,PARENT_COMMENT,COMMENT_TEXT,COMMENT_ID,MOD_ID,USER_ID) values (to_date('11.05.23','DD.MM.RR'),null,'test','7','1','test@test.com');
REM INSERTING into NEKSUSDB.N_EMPLOYEE
SET DEFINE OFF;
Insert into NEKSUSDB.N_EMPLOYEE (FIRST_NAME,LAST_NAME,PHONE_NUMBER,CITY,COUNTRY,STREET,HOUSE_NUMBER,POSTAL_CODE) values ('Karel','Kralik','123789456','Hradec Kralove','Czech Republic','Karlova','358','456-05-789');
Insert into NEKSUSDB.N_EMPLOYEE (FIRST_NAME,LAST_NAME,PHONE_NUMBER,CITY,COUNTRY,STREET,HOUSE_NUMBER,POSTAL_CODE) values ('Radek','Boruvka','789789789','Pardubice','Czech Republic','Karouskova','02','456-455-10');
Insert into NEKSUSDB.N_EMPLOYEE (FIRST_NAME,LAST_NAME,PHONE_NUMBER,CITY,COUNTRY,STREET,HOUSE_NUMBER,POSTAL_CODE) values ('Boris','Burian','453129684','Praha','Czech Republic','Cizrnova','4521','952-00-001');
REM INSERTING into NEKSUSDB.N_FILE
SET DEFINE OFF;
Insert into NEKSUSDB.N_FILE (DESCRIPTION,FILE_PATH,RELEASE_DATE,VERSION,FILE_ID,MOD_ID) values ('First release','https://www.curseforge.com/api/v1/mods/238222/files/4516729/download',to_date('11.05.23','DD.MM.RR'),'1.0.0','2','1');
Insert into NEKSUSDB.N_FILE (DESCRIPTION,FILE_PATH,RELEASE_DATE,VERSION,FILE_ID,MOD_ID) values ('file','/img/userContent/Files/195410363Seminární projekty UUI - formuláø + instrukce.docx',to_date('08.06.23','DD.MM.RR'),'1.0','4','1');
Insert into NEKSUSDB.N_FILE (DESCRIPTION,FILE_PATH,RELEASE_DATE,VERSION,FILE_ID,MOD_ID) values ('test','/img/userContent/Files/13785897PrePrint_pers_diff_sex_ori.pdf',to_date('24.04.24','DD.MM.RR'),'1.0.2','5','6');
REM INSERTING into NEKSUSDB.N_GAME
SET DEFINE OFF;
Insert into NEKSUSDB.N_GAME (RELEASE_DATE,DESCRIPTION,DEVELOPER,GAME_NAME,IMAGE_PATH,GAME_ID) values (to_date('17.12.15','DD.MM.RR'),'Skyrim reimagines and revolutionizes the open-world fantasy epic, bringing to life a complete virtual world open for you to explore any way you choose.','Bethesda','Skyrim','https://cdn.cloudflare.steamstatic.com/steam/apps/489830/capsule_616x353.jpg?t=1650909796','1');
Insert into NEKSUSDB.N_GAME (RELEASE_DATE,DESCRIPTION,DEVELOPER,GAME_NAME,IMAGE_PATH,GAME_ID) values (to_date('29.04.02','DD.MM.RR'),'Featuring stunning 3D graphics, open-ended gameplay, and an incredible level of detail and interactivity, Morrowind offers a gameplay experience like no other.','Bethesda','Morrowind','https://cdn.akamai.steamstatic.com/steam/apps/22320/capsule_616x353.jpg?t=1569959880','2');
Insert into NEKSUSDB.N_GAME (RELEASE_DATE,DESCRIPTION,DEVELOPER,GAME_NAME,IMAGE_PATH,GAME_ID) values (to_date('20.03.13','DD.MM.RR'),'A free-roaming squad based RPG focusing on open-ended sandbox gameplay features rather than a linear story.','Lo-Fi Games','Kenshi','https://cdn.cloudflare.steamstatic.com/steam/apps/233860/capsule_616x353.jpg?t=16524','3');
Insert into NEKSUSDB.N_GAME (RELEASE_DATE,DESCRIPTION,DEVELOPER,GAME_NAME,IMAGE_PATH,GAME_ID) values (to_date('04.11.13','DD.MM.RR'),'A sci-fi colony sim driven by an intelligent AI storyteller. Generates stories by simulating psychology, ecology, gunplay, melee combat, climate, biomes, ...','Ludeon Studios','Rimworld','https://cdn.cloudflare.steamstatic.com/steam/apps/294100/capsule_616x353.jpg?t=1676391313','4');
REM INSERTING into NEKSUSDB.N_IMAGE
SET DEFINE OFF;
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://www.legendarymage.com/wp-content/uploads/2021/11/Weapons-of-the-Third-Era-SSE-1024x640.jpg','1','1');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://www.gamersnexus.net/images/media/2011/skyrim/skyrim-mod-hd-tex.jpg','2','2');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://static.fandomspot.com/images/02/5297/24-mages-robes-retextures-mod.jpg','3','3');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://www.pcgamesn.com/wp-content/sites/pcgamesn/legacy/morrowindoverhaul680-550x309.jpg','4','4');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://digideutsche.com/wp-content/uploads/2020/12/rimworld-mods-save-our-ship-2.jpg','5','5');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://gamerempire.net/wp-content/uploads/2023/03/RimWorld-Best-Mods.jpg','6','6');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('/img/userContent/Images/705607954image333.png','12','19');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('/img/userContent/Images/937254529Understanding the Cycle of Nature - Gardening is the  Way.png','15','21');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://static.fandomspot.com/images/02/5297/24-mages-robes-retextures-mod.jpg','7','2');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://static.fandomspot.com/images/02/5297/24-mages-robes-retextures-mod.jpg','8','2');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://images.saymedia-content.com/.image/t_share/MTc2MjcyMzMyNDYwMDc0MTU3/the-best-skyrim-weapon-mods-available-to-both-improve-the-graphics-of-weapons-and-to-add-new-weapon-sets.jpg','14','1');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('/img/userContent/Images/748430680lifecyclebutterflycolor.png__2400x1500_q85_crop_subsampling-2_upscale-1798230985.png','18','23');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('/img/userContent/Images/801949754oblivion.png','16','22');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('https://images.saymedia-content.com/.image/t_share/MTc2MjcyMzMyNDYwMDc0MTU3/the-best-skyrim-weapon-mods-available-to-both-improve-the-graphics-of-weapons-and-to-add-new-weapon-sets.jpg','17','1');
Insert into NEKSUSDB.N_IMAGE (IMAGE_PATH,IMAGE_ID,MOD_ID) values ('/img/userContent/Images/527778038oblivion.png','13','20');
REM INSERTING into NEKSUSDB.N_MOD
SET DEFINE OFF;
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('08.06.23','DD.MM.RR'),'gaga','ba','12','0','19','2','admin@neksus.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('09.05.23','DD.MM.RR'),'Spice up your fights with some cool new weapons inspired by LOTR','Skyrim Weapons Remastered','1','1','1','1','timmy027@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('09.05.23','DD.MM.RR'),'A mod bringing in a new and fresh look','HD Textures','2','0','2','1','timmy027@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('09.05.23','DD.MM.RR'),'Tired of your old look? wish you could spice up your zazz with something new? Well look no further!','Skyrim Better Clothing','3','0','3','1','timmy027@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('09.05.23','DD.MM.RR'),'A modern remaster to a classic game','Morroving Total Overhaul','4','0','4','2','radek.boruvka@seznam.cz');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('09.05.23','DD.MM.RR'),'The stars are calling, do you heed their call?','Rimworld Space Program','5','0','5','4','kellog.borg@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('09.05.23','DD.MM.RR'),'A mod adding a little bit of everything from Star Wars to Rimworld','Star Wars Redux','6','0','6','4','kellog.borg@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('24.04.24','DD.MM.RR'),'test','Mod test','15','0','21','3','schlang.ster@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('24.04.24','DD.MM.RR'),'This mod adds immersive stuff','Enlarged cities mod','16','0','22','1','bakam@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('24.04.24','DD.MM.RR'),'djdlkùfd','Mod test','18','0','23','1','test@gmail.com');
Insert into NEKSUSDB.N_MOD (DATE_PUBLISHED,DESCRIPTION,MOD_NAME,THUMBNAIL_IMAGE_ID,TRACK_COUNT,MOD_ID,GAME_ID,AUTHOR) values (to_date('28.02.24','DD.MM.RR'),'text','mod example','13','0','20','1','admin@neksus.com');
REM INSERTING into NEKSUSDB.N_MOD_DEPENDENCY
SET DEFINE OFF;
Insert into NEKSUSDB.N_MOD_DEPENDENCY (CHILD_MOD_ID,PARENT_MOD_ID,MOD_DEPENDENCY_ID) values ('6','5','0');
REM INSERTING into NEKSUSDB.N_NEWS
SET DEFINE OFF;
Insert into NEKSUSDB.N_NEWS (DESCRIPTION,HEADLINE,IMAGE_PATH,IS_PINNED,RELEASE_DATE,NEWS_ID,GAME_ID,MOD_ID,AUTHOR) values ('Finally got to finish the skyrim HD texture project, hope you will enjoy it just as I enjoyed making it!','Skyrim HD Finally Out!','https://www.gamersnexus.net/images/media/2011/skyrim/skyrim-mod-hd-tex.jpg','N',to_date('10.05.23','DD.MM.RR'),'2','1','2','timmy027@gmail.com');
Insert into NEKSUSDB.N_NEWS (DESCRIPTION,HEADLINE,IMAGE_PATH,IS_PINNED,RELEASE_DATE,NEWS_ID,GAME_ID,MOD_ID,AUTHOR) values ('Dobré ráno','Test ','https://img.goodfon.com/wallpaper/nbig/1/e9/cat-kot-koshka-trava-chernyy.webp','N',to_date('24.04.24','DD.MM.RR'),'6',null,null,'admin@neksus.com');
REM INSERTING into NEKSUSDB.N_TRACKED_MOD
SET DEFINE OFF;
Insert into NEKSUSDB.N_TRACKED_MOD (TRACKED_MOD_ID,MOD_ID,USER_ID) values ('5','1','schlang.ster@gmail.com');
REM INSERTING into NEKSUSDB.N_USER
SET DEFINE OFF;
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','Y','admin','$2a$10$rGlMC4U2o6gqSVgLK6dCD.yvNlVOyddP.cGwtKvQ5HXlYfNhpqH/.',to_date('09.05.23','DD.MM.RR'),'admin@neksus.com','453129684');
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','pakogako','$2a$10$ipj7bfKim2rBk8QjbEqHtOgk1/1/iQ2fNNQsDGVdYVuvfx0SZRWo6',to_date('12.04.24','DD.MM.RR'),'pako@kako.cz',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','Timmy','$2a$10$ztaZtBGFcp.mtTjcLYMQj.pVG1EWbi9K4XzRFS7DSw.ZXFwAGUQMC',to_date('09.05.23','DD.MM.RR'),'timmy027@gmail.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','Y','RADAX','$2a$10$ztaZtBGFcp.mtTjcLYMQj.pVG1EWbi9K4XzRFS7DSw.ZXFwAGUQMC',to_date('09.05.23','DD.MM.RR'),'radek.boruvka@seznam.cz','789789789');
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','Kellog','$2a$10$ztaZtBGFcp.mtTjcLYMQj.pVG1EWbi9K4XzRFS7DSw.ZXFwAGUQMC',to_date('09.05.23','DD.MM.RR'),'kellog.borg@gmail.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','Author','$2a$10$ztaZtBGFcp.mtTjcLYMQj.pVG1EWbi9K4XzRFS7DSw.ZXFwAGUQMC',to_date('09.05.23','DD.MM.RR'),'schlang.ster@gmail.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','asd','$2a$10$fJdrCjUAntnXxyZ8StU78uY1nYxmcAfOuUrQuxJGjy2gBo1U0DA.K',to_date('09.05.23','DD.MM.RR'),'asd@asd.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','test@test.com','$2a$10$keu4zoCX9nZZn.lFuTNLt.2b84XNi63rb4hWP34XInbhO1ETZLidm',to_date('09.05.23','DD.MM.RR'),'fra@fra.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','auth','$2a$10$86OxXsyJIWKqOcLg43A16.JmE0XguNFSmAfZ22u.3IqS0PN27gXI6',to_date('09.05.23','DD.MM.RR'),'auth@auth.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','Merhern','$2a$10$fXFxR4.fGK3rkUjD.hTiB.2FAUP8lWGQ3aHNUnnIshZ26pAQUJmK2',to_date('11.05.23','DD.MM.RR'),'red@hat.red',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','Merhern','$2a$10$iOyJTyDvtJwmFWrL62yoPu/EtUItldxNcHmIX1k955BC/.Q0Ufi.S',to_date('11.05.23','DD.MM.RR'),'runuk305@seznam.cz',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','lingus','$2a$10$0m6StdnnQxm3IY.vrhMNP.1967WBDI//N6yfQjHjSJQgI46lMKUPC',to_date('08.06.23','DD.MM.RR'),'lingus@mail.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','krejzma','$2a$10$Sl2OIR3GPJlm5JX0JyRscu.o3g3OivAoX8QCokN/ysI97cdH.0Bau',to_date('23.04.24','DD.MM.RR'),'test@gmail.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','bakamitai','$2a$10$MnvparjfsiRhimWH9XPyu.ow1TsyO7ZKH.Sd4a8Sex0LxUc.td1uy',to_date('23.04.24','DD.MM.RR'),'bakam@gmail.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','test@test.com','$2a$10$p9Fx4TDG2N9lslbFoqOeYezudZe43f/0YyyWkTMDyjEEAsT/LA.9O',to_date('10.05.23','DD.MM.RR'),'alo@alo.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','test','$2a$10$wB7Wivj9Q3RTJKyjkJQBaOnotDUt/raU11uyt1RslFFBGiGrabwS.',to_date('09.05.23','DD.MM.RR'),'test@test.com',null);
Insert into NEKSUSDB.N_USER (IS_BANNED,IS_ADMIN,USERNAME,PASSWORD,REGISTER_DATE,EMAIL,EMPLOYEE_ID) values ('N','N','limch','$2a$10$gn/2P6r9PKZG5SogB1c9QedFoNAXaD28HBILjOOKc5GS3KKe6J/FW',to_date('10.04.24','DD.MM.RR'),'limch@uhk.cz',null);
REM INSERTING into NEKSUSDB.N_VIDEO
SET DEFINE OFF;
Insert into NEKSUSDB.N_VIDEO (VIDEO_PATH,VIDEO_ID,MOD_ID) values ('https://www.youtube.com/watch?v=aM7zd24AH7Q','1','1');
Insert into NEKSUSDB.N_VIDEO (VIDEO_PATH,VIDEO_ID,MOD_ID) values ('https://www.youtube.com/watch?v=IrWfhbqURC4','7','1');
Insert into NEKSUSDB.N_VIDEO (VIDEO_PATH,VIDEO_ID,MOD_ID) values ('https://www.youtube.com/watch?v=bgfyxc1NN58','11','2');
--------------------------------------------------------
--  DDL for Index IXFK_COMMENT_COMMENT
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_COMMENT_COMMENT" ON "NEKSUSDB"."N_COMMENT" ("PARENT_COMMENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_COMMENT_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_COMMENT_N_MOD" ON "NEKSUSDB"."N_COMMENT" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_COMMENT_N_USER
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_COMMENT_N_USER" ON "NEKSUSDB"."N_COMMENT" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_FILE_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_FILE_N_MOD" ON "NEKSUSDB"."N_FILE" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_CHANGELOG_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_CHANGELOG_N_MOD" ON "NEKSUSDB"."N_CHANGELOG" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_IMAGE_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_IMAGE_N_MOD" ON "NEKSUSDB"."N_IMAGE" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_MOD_N_GAME
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_MOD_N_GAME" ON "NEKSUSDB"."N_MOD" ("GAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_NEWS_N_GAME
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_NEWS_N_GAME" ON "NEKSUSDB"."N_NEWS" ("GAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_MODDEPENDENCY_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_MODDEPENDENCY_N_MOD" ON "NEKSUSDB"."N_MOD_DEPENDENCY" ("PARENT_MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_MODDEPENDENCY_M02
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_MODDEPENDENCY_M02" ON "NEKSUSDB"."N_MOD_DEPENDENCY" ("CHILD_MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_NEWS_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_NEWS_N_MOD" ON "NEKSUSDB"."N_NEWS" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_N_VIDEO_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_N_VIDEO_N_MOD" ON "NEKSUSDB"."N_VIDEO" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_TRACKEDN_MOD_N_MOD
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_TRACKEDN_MOD_N_MOD" ON "NEKSUSDB"."N_TRACKED_MOD" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IXFK_TRACKEDN_MOD_N_USER
--------------------------------------------------------

  CREATE INDEX "NEKSUSDB"."IXFK_TRACKEDN_MOD_N_USER" ON "NEKSUSDB"."N_TRACKED_MOD" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COMMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_COMMENT" ON "NEKSUSDB"."N_COMMENT" ("COMMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_FILE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_FILE" ON "NEKSUSDB"."N_FILE" ("FILE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_CHANGELOG
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_CHANGELOG" ON "NEKSUSDB"."N_CHANGELOG" ("CHANGELOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_EMPLOYEE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_EMPLOYEE" ON "NEKSUSDB"."N_EMPLOYEE" ("PHONE_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_GAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_GAME" ON "NEKSUSDB"."N_GAME" ("GAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_IMAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_IMAGE" ON "NEKSUSDB"."N_IMAGE" ("IMAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_MOD
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_MOD" ON "NEKSUSDB"."N_MOD" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_MODDEPENDENCY
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_MODDEPENDENCY" ON "NEKSUSDB"."N_MOD_DEPENDENCY" ("MOD_DEPENDENCY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_NEWS
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_NEWS" ON "NEKSUSDB"."N_NEWS" ("NEWS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_USER" ON "NEKSUSDB"."N_USER" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_VIDEO
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_N_VIDEO" ON "NEKSUSDB"."N_VIDEO" ("VIDEO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TRACKEDN_MOD
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEKSUSDB"."PK_TRACKEDN_MOD" ON "NEKSUSDB"."N_TRACKED_MOD" ("TRACKED_MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table N_CHANGELOG
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_CHANGELOG" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_CHANGELOG" MODIFY ("CHANGELOG_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_CHANGELOG" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_CHANGELOG" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_CHANGELOG" ADD CONSTRAINT "PK_N_CHANGELOG" PRIMARY KEY ("CHANGELOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_COMMENT
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_COMMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_COMMENT" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_COMMENT" MODIFY ("COMMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_COMMENT" MODIFY ("COMMENT_TEXT" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_COMMENT" ADD CONSTRAINT "PK_COMMENT" PRIMARY KEY ("COMMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("POSTAL_CODE" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("HOUSE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("STREET" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_EMPLOYEE" ADD CONSTRAINT "PK_N_EMPLOYEE" PRIMARY KEY ("PHONE_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_FILE
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_FILE" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_FILE" MODIFY ("FILE_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_FILE" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_FILE" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_FILE" ADD CONSTRAINT "PK_FILE" PRIMARY KEY ("FILE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_GAME
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_GAME" MODIFY ("GAME_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_GAME" MODIFY ("IMAGE_PATH" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_GAME" MODIFY ("GAME_NAME" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_GAME" MODIFY ("DEVELOPER" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_GAME" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_GAME" ADD CONSTRAINT "PK_N_GAME" PRIMARY KEY ("GAME_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_IMAGE
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_IMAGE" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_IMAGE" MODIFY ("IMAGE_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_IMAGE" MODIFY ("IMAGE_PATH" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_IMAGE" ADD CONSTRAINT "PK_N_IMAGE" PRIMARY KEY ("IMAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_MOD
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_MOD" MODIFY ("AUTHOR" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD" MODIFY ("GAME_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD" MODIFY ("TRACK_COUNT" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD" MODIFY ("MOD_NAME" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD" ADD CONSTRAINT "PK_N_MOD" PRIMARY KEY ("MOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_MOD_DEPENDENCY
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" MODIFY ("MOD_DEPENDENCY_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" MODIFY ("PARENT_MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" MODIFY ("CHILD_MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" ADD CONSTRAINT "PK_N_MODDEPENDENCY" PRIMARY KEY ("MOD_DEPENDENCY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_NEWS
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_NEWS" MODIFY ("AUTHOR" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_NEWS" MODIFY ("NEWS_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_NEWS" MODIFY ("IS_PINNED" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_NEWS" MODIFY ("HEADLINE" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_NEWS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_NEWS" ADD CONSTRAINT "PK_N_NEWS" PRIMARY KEY ("NEWS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_TRACKED_MOD
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_TRACKED_MOD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_TRACKED_MOD" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_TRACKED_MOD" MODIFY ("TRACKED_MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_TRACKED_MOD" ADD CONSTRAINT "PK_TRACKEDN_MOD" PRIMARY KEY ("TRACKED_MOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_USER
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_USER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_USER" MODIFY ("IS_ADMIN" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_USER" MODIFY ("IS_BANNED" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_USER" ADD CONSTRAINT "PK_N_USER" PRIMARY KEY ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table N_VIDEO
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_VIDEO" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_VIDEO" MODIFY ("VIDEO_ID" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_VIDEO" MODIFY ("VIDEO_PATH" NOT NULL ENABLE);
  ALTER TABLE "NEKSUSDB"."N_VIDEO" ADD CONSTRAINT "PK_N_VIDEO" PRIMARY KEY ("VIDEO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_CHANGELOG
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_CHANGELOG" ADD CONSTRAINT "FK_N_CHANGELOG_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_COMMENT
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_COMMENT" ADD CONSTRAINT "FK_COMMENT_COMMENT" FOREIGN KEY ("PARENT_COMMENT")
	  REFERENCES "NEKSUSDB"."N_COMMENT" ("COMMENT_ID") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_COMMENT" ADD CONSTRAINT "FK_COMMENT_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_COMMENT" ADD CONSTRAINT "FK_COMMENT_N_USER" FOREIGN KEY ("USER_ID")
	  REFERENCES "NEKSUSDB"."N_USER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_FILE
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_FILE" ADD CONSTRAINT "FK_FILE_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_IMAGE
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_IMAGE" ADD CONSTRAINT "FK_N_IMAGE_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_MOD
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_MOD" ADD CONSTRAINT "FK_N_MOD_AUTHOR" FOREIGN KEY ("AUTHOR")
	  REFERENCES "NEKSUSDB"."N_USER" ("EMAIL") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_MOD" ADD CONSTRAINT "FK_N_MOD_N_GAME" FOREIGN KEY ("GAME_ID")
	  REFERENCES "NEKSUSDB"."N_GAME" ("GAME_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_MOD_DEPENDENCY
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" ADD CONSTRAINT "FK_DEPENDENCYCHILD_N_MOD" FOREIGN KEY ("CHILD_MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_MOD_DEPENDENCY" ADD CONSTRAINT "FK_DEPENDENCYPARENT_N_MOD" FOREIGN KEY ("PARENT_MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_NEWS
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_NEWS" ADD CONSTRAINT "FK_N_NEWS_AUTHOR" FOREIGN KEY ("AUTHOR")
	  REFERENCES "NEKSUSDB"."N_USER" ("EMAIL") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_NEWS" ADD CONSTRAINT "FK_N_NEWS_N_GAME" FOREIGN KEY ("GAME_ID")
	  REFERENCES "NEKSUSDB"."N_GAME" ("GAME_ID") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_NEWS" ADD CONSTRAINT "FK_N_NEWS_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_TRACKED_MOD
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_TRACKED_MOD" ADD CONSTRAINT "FK_TRACKEDN_MOD_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
  ALTER TABLE "NEKSUSDB"."N_TRACKED_MOD" ADD CONSTRAINT "FK_TRACKEDN_MOD_N_USER" FOREIGN KEY ("USER_ID")
	  REFERENCES "NEKSUSDB"."N_USER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_USER
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_USER" ADD CONSTRAINT "FK_N_USER_N_EMPLOYEE" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "NEKSUSDB"."N_EMPLOYEE" ("PHONE_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N_VIDEO
--------------------------------------------------------

  ALTER TABLE "NEKSUSDB"."N_VIDEO" ADD CONSTRAINT "FK_N_VIDEO_N_MOD" FOREIGN KEY ("MOD_ID")
	  REFERENCES "NEKSUSDB"."N_MOD" ("MOD_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger N_COMMENTDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."N_COMMENTDATE" 
     BEFORE INSERT
     ON N_Comment
     FOR EACH ROW
     BEGIN
         SELECT SYSDATE()
         INTO :NEW.DATE_COMMENTED
         FROM dual;
     END;
/
ALTER TRIGGER "NEKSUSDB"."N_COMMENTDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N_FILERELEASE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."N_FILERELEASE" 
     BEFORE INSERT
     ON N_File
     FOR EACH ROW
     BEGIN
         SELECT SYSDATE()
         INTO :NEW.RELEASE_DATE
         FROM dual;
     END;
/
ALTER TRIGGER "NEKSUSDB"."N_FILERELEASE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N_MODRELEASE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."N_MODRELEASE" 
     BEFORE INSERT
     ON N_Mod
     FOR EACH ROW
     BEGIN
         SELECT SYSDATE()
         INTO :NEW.DATE_PUBLISHED
         FROM dual;
     END;
/
ALTER TRIGGER "NEKSUSDB"."N_MODRELEASE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N_NEWSRELEASE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."N_NEWSRELEASE" 
     BEFORE INSERT
     ON N_News
     FOR EACH ROW
     BEGIN
         SELECT SYSDATE()
         INTO :NEW.RELEASE_DATE
         FROM dual;
     END;
/
ALTER TRIGGER "NEKSUSDB"."N_NEWSRELEASE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N_USERREGISTER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."N_USERREGISTER" 
    BEFORE INSERT
    ON N_User
    FOR EACH ROW
    BEGIN
        SELECT SYSDATE()
        INTO :NEW.Register_Date
        FROM dual;
    END;
/
ALTER TRIGGER "NEKSUSDB"."N_USERREGISTER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_CHANGELOG_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_CHANGELOG_ID" 
	BEFORE INSERT 
	ON N_CHANGELOG 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_CHANGELOG_ID.NEXTVAL
		INTO :NEW.CHANGELOG_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_CHANGELOG_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_COMMENT_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_COMMENT_ID" 
	BEFORE INSERT 
	ON N_COMMENT 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_COMMENT_ID.NEXTVAL
		INTO :NEW.COMMENT_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_COMMENT_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_FILE_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_FILE_ID" 
	BEFORE INSERT 
	ON N_FILE 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_FILE_ID.NEXTVAL
		INTO :NEW.FILE_ID
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_FILE_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_GAME_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_GAME_ID" 
	BEFORE INSERT 
	ON N_GAME 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_GAME_ID.NEXTVAL
		INTO :NEW.GAME_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_GAME_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_IMAGE_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_IMAGE_ID" 
	BEFORE INSERT 
	ON N_IMAGE 
	FOR EACH ROW 
	BEGIN
	    IF :NEW.IMAGE_ID IS NULL
	    THEN
		    SELECT SEQ_N_IMAGE_ID.NEXTVAL
		    INTO :NEW.IMAGE_ID
		    FROM DUAL;
		END IF;
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_IMAGE_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_MOD_DEPENDENCY_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_MOD_DEPENDENCY_ID" 
	BEFORE INSERT 
	ON N_MOD_DEPENDENCY 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_MOD_DEPENDENCY_ID.NEXTVAL 
		INTO :NEW.MOD_DEPENDENCY_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_MOD_DEPENDENCY_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_MOD_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_MOD_ID" 
	BEFORE INSERT 
	ON N_MOD 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_MOD_ID.NEXTVAL
		INTO :NEW.MOD_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_MOD_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_NEWS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_NEWS_ID" 
	BEFORE INSERT 
	ON N_NEWS 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_NEWS_ID.NEXTVAL
		INTO :NEW.NEWS_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_NEWS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_TRACKED_MOD_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_TRACKED_MOD_ID" 
	BEFORE INSERT 
	ON N_TRACKED_MOD 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_TRACKED_MOD_ID.NEXTVAL
		INTO :NEW.TRACKED_MOD_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_TRACKED_MOD_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_N_VIDEO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NEKSUSDB"."TRG_N_VIDEO_ID" 
	BEFORE INSERT 
	ON N_VIDEO 
	FOR EACH ROW 
	BEGIN 
		SELECT SEQ_N_VIDEO_ID.NEXTVAL
		INTO :NEW.VIDEO_ID 
		FROM DUAL; 
	END;
/
ALTER TRIGGER "NEKSUSDB"."TRG_N_VIDEO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Procedure N_MODPUBLISH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NEKSUSDB"."N_MODPUBLISH" (
pdescription N_MOD.DESCRIPTION%TYPE,
pname N_MOD.MOD_NAME%TYPE,
pauthor N_MOD.AUTHOR%TYPE,
pipath N_IMAGE.IMAGE_PATH%TYPE,
pggameid N_GAME.GAME_ID%TYPE
)AS 
BEGIN
  insert into n_mod(n_mod.DESCRIPTION,n_mod.MOD_NAME,n_mod.THUMBNAIL_IMAGE_ID,n_mod.TRACK_COUNT,n_mod.GAME_ID,n_mod.AUTHOR)
  values(pdescription,pname,SEQ_N_IMAGE_ID.NEXTVAL,0,pggameid,pauthor);
  
  insert into n_image(image_path,mod_id,IMAGE_ID)
  values(pipath,SEQ_N_MOD_ID.CURRVAL,SEQ_N_IMAGE_ID.CURRVAL);
  
  insert into n_changelog(N_CHANGELOG.DESCRIPTION,n_changelog.version,n_changelog.mod_id)
  values('mod was announced','initial',SEQ_N_MOD_ID.CURRVAL);
END N_MODPUBLISH;

/
--------------------------------------------------------
--  DDL for Procedure N_TRACKMOD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NEKSUSDB"."N_TRACKMOD" (
pemail N_USER.EMAIL%TYPE,
pmodid N_MOD.MOD_ID%TYPE,
action VARCHAR2
)AS 
BEGIN
  IF action = 'Y'
  THEN
    insert into n_tracked_mod(mod_id,user_id)
    values(pmodid,pemail);
    
    update n_mod
    set n_mod.TRACK_COUNT = n_mod.track_count+1
    where MOD_ID = pmodid;
  ELSE
    delete from n_tracked_mod
    where n_tracked_mod.MOD_ID = pmodid and USER_ID = pemail;
    
    update n_mod
    set n_mod.TRACK_COUNT = n_mod.track_count-1
    where MOD_ID = pmodid;
  END IF;
END N_TRACKMOD;

/
--------------------------------------------------------
--  DDL for Procedure N_USERHIRE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NEKSUSDB"."N_USERHIRE" (
pemail N_USER.EMAIL%TYPE,
pfirst N_EMPLOYEE.FIRST_NAME%TYPE,
plast N_EMPLOYEE.LAST_NAME%TYPE,
pphone N_EMPLOYEE.PHONE_NUMBER%TYPE,
pcity N_EMPLOYEE.CITY%TYPE,
pcountry N_EMPLOYEE.COUNTRY%TYPE,
pstreet N_EMPLOYEE.STREET%TYPE,
phouse N_EMPLOYEE.HOUSE_NUMBER%TYPE,
ppostal N_EMPLOYEE.POSTAL_CODE%TYPE
)AS 
BEGIN
  insert into N_employee(first_name,last_name,phone_number,city,country,street,house_number,postal_code)
  values(pfirst,plast,pphone,pcity,pcountry,pstreet,phouse,ppostal);
  
  update n_user
  set employee_id = pphone,
  n_user.is_admin = 'Y'
  where n_user.email = pemail;
END N_USERHIRE;

/
--------------------------------------------------------
--  DDL for Procedure N_USERREGISTER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NEKSUSDB"."N_USERREGISTER" (
pusername n_user.username%TYPE,
ppassword n_user.password%TYPE,
pemail n_user.email%TYPE
)AS 
BEGIN
  insert into n_user(username,n_user.PASSWORD,email,n_user.IS_BANNED,n_user.IS_ADMIN)
  values (pusername,ppassword,pemail,'N','N');
END;

/
