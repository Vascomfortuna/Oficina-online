--------------------------------------------------------
--  File created - Sexta-feira-Janeiro-20-2017   
--------------------------------------------------------
DROP TABLE "BDA_1010985"."BD_ABASTECIMENTOS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_ANOMALIAS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_CLIENTES" cascade constraints;
DROP TABLE "BDA_1010985"."BD_MECANICOS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_OCORRENCIAS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_REPARACOES_TIPOS" cascade constraints;
DROP TABLE "BDA_1010985"."BD_VEICULOS" cascade constraints;
DROP SEQUENCE "BDA_1010985"."REPARACOES_OCORRENCIAS_REPARAC";
DROP SEQUENCE "BDA_1010985"."SEQ_IDABASTECIMENTO";
DROP SEQUENCE "BDA_1010985"."SEQ_IDANOMALIA";
DROP SEQUENCE "BDA_1010985"."SEQ_IDCLIENTE";
DROP SEQUENCE "BDA_1010985"."SEQ_IDMECANICO";
DROP SEQUENCE "BDA_1010985"."SEQ_IDOCORRENCIA";
DROP SEQUENCE "BDA_1010985"."SEQ_IDOCORRENCIAESTADO";
DROP SEQUENCE "BDA_1010985"."SEQ_IDREPARACAOTIPO";
DROP SEQUENCE "BDA_1010985"."SEQ_IDVEICULO";
DROP SEQUENCE "BDA_1010985"."SEQ_VENDAS";
DROP PROCEDURE "BDA_1010985"."CALL_WS_IP_2";
DROP PROCEDURE "BDA_1010985"."HOME";
DROP PROCEDURE "BDA_1010985"."MOSTRA_VENDA";
DROP PROCEDURE "BDA_1010985"."PROCEDURE";
DROP PROCEDURE "BDA_1010985"."WSAPPLICATION";
DROP PROCEDURE "BDA_1010985"."WS_IP";
DROP PACKAGE BODY "BDA_1010985"."WS";
DROP PACKAGE "BDA_1010985"."WS";
DROP FUNCTION "BDA_1010985"."WS_IP_2";
--------------------------------------------------------
--  DDL for Table BD_ABASTECIMENTOS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_ABASTECIMENTOS" 
   (	"IDABASTECIMENTO" NUMBER, 
	"KM" NUMBER, 
	"LITROS" NUMBER, 
	"VEICULOS_IDVEICULO" NUMBER, 
	"DATA_ABASTECIMENTO" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table BD_ANOMALIAS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_ANOMALIAS" 
   (	"IDANOMALIA" NUMBER, 
	"ANOMALIA" VARCHAR2(255 BYTE), 
	"DESCRICAO" CLOB, 
	"VEICULOS_IDVEICULO" NUMBER, 
	"MECANICOS_IDMECANICO" NUMBER, 
	"DATA_ANOMALIA" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table BD_CLIENTES
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_CLIENTES" 
   (	"IDCLIENTE" NUMBER, 
	"PRIMEIRONOME" VARCHAR2(50 BYTE), 
	"ULTIMONOME" VARCHAR2(50 BYTE), 
	"TELEMOVEL" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(255 BYTE), 
	"PASSWORD_ALTERADA" NUMBER(1,0) DEFAULT 0, 
	"ELIMINADO" NUMBER(1,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table BD_MECANICOS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_MECANICOS" 
   (	"IDMECANICO" NUMBER, 
	"PRIMEIRONOME" VARCHAR2(50 BYTE), 
	"ULTIMONOME" VARCHAR2(50 BYTE), 
	"TELEMOVEL" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(255 BYTE), 
	"ELIMINADO" NUMBER(1,0) DEFAULT 0, 
	"VERSAO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BD_OCORRENCIAS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_OCORRENCIAS" 
   (	"IDOCORRENCIA" NUMBER, 
	"DATAMARCACAO" DATE, 
	"DATAINICIO" DATE DEFAULT sysdate, 
	"DATAESTADOATUAL" DATE, 
	"KM" NUMBER, 
	"PRECOTOTAL" NUMBER(10,2), 
	"OBSERVACOES_CLIENTE" CLOB, 
	"OBSERVACOES_MECANICO" CLOB, 
	"CLIENTES_IDCLIENTE" NUMBER, 
	"MECANICOS_IDMECANICO" NUMBER, 
	"VEICULOS_IDVEICULO" NUMBER, 
	"OCORRENCIAS_IDOCORRENCIAESTADO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BD_OCORRENCIAS_ESTADOS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" 
   (	"IDOCORRENCIAESTADO" NUMBER, 
	"ESTADO" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BD_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" 
   (	"ID_OCORRENCIAS" NUMBER, 
	"ID_REPARACAO_TIPO" NUMBER, 
	"QUANTIDADE" NUMBER, 
	"PRECO_UNITARIO" NUMBER(10,2)
   ) ;
--------------------------------------------------------
--  DDL for Table BD_REPARACOES_TIPOS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_REPARACOES_TIPOS" 
   (	"IDREPARACAOTIPO" NUMBER, 
	"REPARACAO" VARCHAR2(255 BYTE), 
	"DESCRICAO" CLOB, 
	"VERSAO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BD_VEICULOS
--------------------------------------------------------

  CREATE TABLE "BDA_1010985"."BD_VEICULOS" 
   (	"IDVEICULO" NUMBER, 
	"IDMODELO" NUMBER, 
	"CLIENTES_IDCLIENTE" NUMBER, 
	"MARCA" VARCHAR2(50 BYTE), 
	"MODELO" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Sequence REPARACOES_OCORRENCIAS_REPARAC
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."REPARACOES_OCORRENCIAS_REPARAC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDABASTECIMENTO
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDABASTECIMENTO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDANOMALIA
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDANOMALIA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDCLIENTE
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDCLIENTE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDMECANICO
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDMECANICO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDOCORRENCIA
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDOCORRENCIA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDOCORRENCIAESTADO
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDOCORRENCIAESTADO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDREPARACAOTIPO
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDREPARACAOTIPO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IDVEICULO
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_IDVEICULO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_VENDAS
--------------------------------------------------------

   CREATE SEQUENCE  "BDA_1010985"."SEQ_VENDAS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
REM INSERTING into BDA_1010985.BD_ABASTECIMENTOS
SET DEFINE OFF;
Insert into BDA_1010985.BD_ABASTECIMENTOS (IDABASTECIMENTO,KM,LITROS,VEICULOS_IDVEICULO,DATA_ABASTECIMENTO) values ('1','123809','45','1',to_date('17.01.20','RR.MM.DD'));
Insert into BDA_1010985.BD_ABASTECIMENTOS (IDABASTECIMENTO,KM,LITROS,VEICULOS_IDVEICULO,DATA_ABASTECIMENTO) values ('2','98345','60','2',to_date('17.01.20','RR.MM.DD'));
Insert into BDA_1010985.BD_ABASTECIMENTOS (IDABASTECIMENTO,KM,LITROS,VEICULOS_IDVEICULO,DATA_ABASTECIMENTO) values ('3','68123','30','3',to_date('17.01.20','RR.MM.DD'));
REM INSERTING into BDA_1010985.BD_ANOMALIAS
SET DEFINE OFF;
Insert into BDA_1010985.BD_ANOMALIAS (IDANOMALIA,ANOMALIA,VEICULOS_IDVEICULO,MECANICOS_IDMECANICO,DATA_ANOMALIA) values ('1','Barulho','1','2',to_date('17.01.20','RR.MM.DD'));
Insert into BDA_1010985.BD_ANOMALIAS (IDANOMALIA,ANOMALIA,VEICULOS_IDVEICULO,MECANICOS_IDMECANICO,DATA_ANOMALIA) values ('2','Pintura danificada','3','1',to_date('17.01.20','RR.MM.DD'));
REM INSERTING into BDA_1010985.BD_CLIENTES
SET DEFINE OFF;
Insert into BDA_1010985.BD_CLIENTES (IDCLIENTE,PRIMEIRONOME,ULTIMONOME,TELEMOVEL,EMAIL,PASSWORD,PASSWORD_ALTERADA,ELIMINADO) values ('1','João','Delgado','961236819','joaoTeste@gmail.com','apenas teste','0','0');
Insert into BDA_1010985.BD_CLIENTES (IDCLIENTE,PRIMEIRONOME,ULTIMONOME,TELEMOVEL,EMAIL,PASSWORD,PASSWORD_ALTERADA,ELIMINADO) values ('2','Sandro','Marques','961125622','sandroTeste@gmail.com','apenas teste','0','0');
Insert into BDA_1010985.BD_CLIENTES (IDCLIENTE,PRIMEIRONOME,ULTIMONOME,TELEMOVEL,EMAIL,PASSWORD,PASSWORD_ALTERADA,ELIMINADO) values ('3','Vasco','Fortuna','961531819','vascoTeste@gmail.com','apenas teste','0','0');
REM INSERTING into BDA_1010985.BD_MECANICOS
SET DEFINE OFF;
Insert into BDA_1010985.BD_MECANICOS (IDMECANICO,PRIMEIRONOME,ULTIMONOME,TELEMOVEL,EMAIL,PASSWORD,ELIMINADO,VERSAO) values ('1','Ricardo','Reis','961678354','reisTeste@oficina.pt','blabla','0','1');
Insert into BDA_1010985.BD_MECANICOS (IDMECANICO,PRIMEIRONOME,ULTIMONOME,TELEMOVEL,EMAIL,PASSWORD,ELIMINADO,VERSAO) values ('2','Alberto','Caeiro','961687654','caeiroTeste@oficina.pt','blabla','0','1');
Insert into BDA_1010985.BD_MECANICOS (IDMECANICO,PRIMEIRONOME,ULTIMONOME,TELEMOVEL,EMAIL,PASSWORD,ELIMINADO,VERSAO) values ('3','Alvaro','Campos','961678354','camposTeste@oficina.pt','blabla','0','1');
REM INSERTING into BDA_1010985.BD_OCORRENCIAS
SET DEFINE OFF;
Insert into BDA_1010985.BD_OCORRENCIAS (IDOCORRENCIA,DATAMARCACAO,DATAINICIO,DATAESTADOATUAL,KM,PRECOTOTAL,CLIENTES_IDCLIENTE,MECANICOS_IDMECANICO,VEICULOS_IDVEICULO,OCORRENCIAS_IDOCORRENCIAESTADO) values ('1',null,to_date('17.01.20','RR.MM.DD'),null,'152352',null,'1','2','1','1');
REM INSERTING into BDA_1010985.BD_OCORRENCIAS_ESTADOS
SET DEFINE OFF;
Insert into BDA_1010985.BD_OCORRENCIAS_ESTADOS (IDOCORRENCIAESTADO,ESTADO) values ('1','EM APROVAÇÂO');
Insert into BDA_1010985.BD_OCORRENCIAS_ESTADOS (IDOCORRENCIAESTADO,ESTADO) values ('2','PRONTO');
Insert into BDA_1010985.BD_OCORRENCIAS_ESTADOS (IDOCORRENCIAESTADO,ESTADO) values ('3','EM ARRANJO');
REM INSERTING into BDA_1010985.BD_REPARACOES_OCORRENCIAS
SET DEFINE OFF;
Insert into BDA_1010985.BD_REPARACOES_OCORRENCIAS (ID_OCORRENCIAS,ID_REPARACAO_TIPO,QUANTIDADE,PRECO_UNITARIO) values ('1','1','3','5,5');
REM INSERTING into BDA_1010985.BD_REPARACOES_TIPOS
SET DEFINE OFF;
Insert into BDA_1010985.BD_REPARACOES_TIPOS (IDREPARACAOTIPO,REPARACAO,VERSAO) values ('1','Mudança Óleo','1');
Insert into BDA_1010985.BD_REPARACOES_TIPOS (IDREPARACAOTIPO,REPARACAO,VERSAO) values ('2','Mudança Pneus','1');
Insert into BDA_1010985.BD_REPARACOES_TIPOS (IDREPARACAOTIPO,REPARACAO,VERSAO) values ('3','Revisao de inspeção','1');
REM INSERTING into BDA_1010985.BD_VEICULOS
SET DEFINE OFF;
Insert into BDA_1010985.BD_VEICULOS (IDVEICULO,IDMODELO,CLIENTES_IDCLIENTE,MARCA,MODELO) values ('1','1','1','Ferrari','360 Modena');
Insert into BDA_1010985.BD_VEICULOS (IDVEICULO,IDMODELO,CLIENTES_IDCLIENTE,MARCA,MODELO) values ('2','2','2','Lamborguini','Aventadoro');
Insert into BDA_1010985.BD_VEICULOS (IDVEICULO,IDMODELO,CLIENTES_IDCLIENTE,MARCA,MODELO) values ('3','3','3','Bentley','Continental');
--------------------------------------------------------
--  DDL for Index BD_ABASTECIMENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."BD_ABASTECIMENTOS_PK" ON "BDA_1010985"."BD_ABASTECIMENTOS" ("IDABASTECIMENTO") 
  ;
--------------------------------------------------------
--  DDL for Index BD_ANOMALIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."BD_ANOMALIAS_PK" ON "BDA_1010985"."BD_ANOMALIAS" ("IDANOMALIA") 
  ;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."CLIENTES_PK" ON "BDA_1010985"."BD_CLIENTES" ("IDCLIENTE") 
  ;
--------------------------------------------------------
--  DDL for Index MECANICOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."MECANICOS_PK" ON "BDA_1010985"."BD_MECANICOS" ("IDMECANICO") 
  ;
--------------------------------------------------------
--  DDL for Index OCORRENCIAS_ESTADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."OCORRENCIAS_ESTADOS_PK" ON "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" ("IDOCORRENCIAESTADO") 
  ;
--------------------------------------------------------
--  DDL for Index OCORRENCIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."OCORRENCIAS_PK" ON "BDA_1010985"."BD_OCORRENCIAS" ("IDOCORRENCIA") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."PK_REPARACOES_OCORRENCIAS" ON "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" ("ID_OCORRENCIAS", "ID_REPARACAO_TIPO") 
  ;
--------------------------------------------------------
--  DDL for Index REPARACOES_TIPOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."REPARACOES_TIPOS_PK" ON "BDA_1010985"."BD_REPARACOES_TIPOS" ("IDREPARACAOTIPO") 
  ;
--------------------------------------------------------
--  DDL for Index VEICULOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BDA_1010985"."VEICULOS_PK" ON "BDA_1010985"."BD_VEICULOS" ("IDVEICULO") 
  ;
--------------------------------------------------------
--  DDL for Trigger T_IDABASTECIMENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDABASTECIMENTO" 
  BEFORE INSERT ON BD_ABASTECIMENTOS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDABASTECIMENTO.nextval
    INTO :new.IDABASTECIMENTO
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDABASTECIMENTO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDANOMALIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDANOMALIA" 
  BEFORE INSERT ON BD_ANOMALIAS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDANOMALIA.nextval
    INTO :new.IDANOMALIA
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDANOMALIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDCLIENTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDCLIENTE" 
  BEFORE INSERT ON BD_CLIENTES
  FOR EACH ROW
BEGIN
  SELECT seq_idCliente.nextval
    INTO :new.IDCLIENTE
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDCLIENTE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDMECANICO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDMECANICO" 
  BEFORE INSERT ON BD_MECANICOS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDMECANICO.nextval
    INTO :new.IDMECANICO
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDMECANICO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDOCORRENCIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDOCORRENCIA" 
  BEFORE INSERT ON BD_OCORRENCIAS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDOCORRENCIA.nextval
    INTO :new.IDOCORRENCIA
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDOCORRENCIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDOCORRENCIAESTADO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDOCORRENCIAESTADO" 
  BEFORE INSERT ON BD_OCORRENCIAS_ESTADOS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDOCORRENCIAESTADO.nextval
    INTO :new.IDOCORRENCIAESTADO
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDOCORRENCIAESTADO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDREPARACAOTIPO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDREPARACAOTIPO" 
  BEFORE INSERT ON BD_REPARACOES_TIPOS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDREPARACAOTIPO.nextval
    INTO :new.IDREPARACAOTIPO
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDREPARACAOTIPO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_IDVEICULO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BDA_1010985"."T_IDVEICULO" 
  BEFORE INSERT ON BD_VEICULOS
  FOR EACH ROW
BEGIN
  SELECT SEQ_IDVEICULO.nextval
    INTO :new.IDVEICULO
    FROM dual;
END;
/
ALTER TRIGGER "BDA_1010985"."T_IDVEICULO" ENABLE;
--------------------------------------------------------
--  DDL for Procedure CALL_WS_IP_2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BDA_1010985"."CALL_WS_IP_2" 
IS
v_url VARCHAR2(32767);
resposta VARCHAR(32767);
BEGIN
v_url := 'http://ip.jsontest.com/';
resposta := WS_IP_2(v_url);
DBMS_OUTPUT.PUT_LINE(resposta);
END;

/
--------------------------------------------------------
--  DDL for Procedure HOME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BDA_1010985"."HOME" 
   
  AS
    l_dadNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrValues DBMS_EPG.VARCHAR2_TABLE;
  BEGIN
    HTP.htmlopen;
    HTP.headopen;
    HTP.title('This is a test page :) !!!');
    HTP.headclose;
    HTP.bodyopen;
    htp.p('<h1>Test Page</h1>');
    htp.preOpen;
    htp.p('<b>Username:</b> '||USER);
    htp.p('<b>Time Now:</b> '||TO_CHAR(SYSTIMESTAMP));
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>OWA Variables</h1>');
    htp.p('<b>------------------------------</b>');
    FOR i IN 1..owa.num_cgi_vars
    LOOP
      htp.p('<b>'||owa.cgi_var_name(i)||' :</b> '||owa.cgi_var_val(i));
    END LOOP;
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>DAD Attributes</h1>');
    htp.p('<b>------------------------------</b>');
    DBMS_EPG.GET_DAD_LIST(l_dadNames);
    FOR d IN 1..l_dadNames.COUNT
    LOOP
      htp.p('<b>DAD Name:</b> '||l_dadNames(d));
      DBMS_EPG.GET_ALL_DAD_ATTRIBUTES(l_dadNames(d),l_attrNames,l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>'||l_attrNames(a)||':</b> '||l_attrValues(a));
      END LOOP;
      DBMS_EPG.GET_ALL_DAD_MAPPINGS(l_dadNames(d),l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>Mapping</b>: '||l_attrValues(a));
      END LOOP;
      htp.p('<b>User ID</b>: '||owa_sec.get_user_id);
      htp.p('<b>Password</b>: '||owa_sec.get_password);
      /*
      FOR a IN ( SELECT username FROM dba_epg_dad_authorization WHERE dad_name = l_dadNames(d) ) LOOP
      htp.p('-  '||RPAD('authorized',25)||' : '||a.username);
      END LOOP;
      */
    END LOOP;
    htp.preClose;
    HTP.bodyclose;
    HTP.htmlclose;
    --delete dept where deptno=60;
    --insert into dept values (60,'OLA','OLE');
    --commit;
  END home;

/
--------------------------------------------------------
--  DDL for Procedure MOSTRA_VENDA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BDA_1010985"."MOSTRA_VENDA" (pi_data date) is
  cursor c_venda is --1º declarar o cursor
  select nome, qt, total from artigos, vendas where artigos.id = vendas.ARTIGO and trunc(vendas.data) = pi_data;
  v_rec_venda c_venda%rowtype; -- vai buscar o tipo de dados do 'nome, qt , total'
  v_total vendas.total%type := 0;
begin
  open c_venda; --2º abrir o cursor
  loop
  fetch c_venda into v_rec_venda; --3º ler os valores de uma linha do cursor
  exit when c_venda%notfound;
  v_total := v_total + v_rec_venda.total;
  dbms_output.put_line(v_rec_venda.nome || ' ' || v_rec_venda.qt || ' ' || v_rec_venda.total);
  end loop;
  dbms_output.put_line('Total: ' || v_total);
  close c_venda; --4º fechar o cursor
end;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BDA_1010985"."PROCEDURE" 
home
  AS
    l_dadNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrValues DBMS_EPG.VARCHAR2_TABLE;
  BEGIN
    HTP.htmlopen;
    HTP.headopen;
    HTP.title('This is a test page!');
    HTP.headclose;
    HTP.bodyopen;
    htp.p('<h1>Test Page</h1>');
    htp.preOpen;
    htp.p('<b>Username:</b> '||USER);
    htp.p('<b>Time Now:</b> '||TO_CHAR(SYSTIMESTAMP));
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>OWA Variables</h1>');
    htp.p('<b>------------------------------</b>');
    FOR i IN 1..owa.num_cgi_vars
    LOOP
      htp.p('<b>'||owa.cgi_var_name(i)||' :</b> '||owa.cgi_var_val(i));
    END LOOP;
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>DAD Attributes</h1>');
    htp.p('<b>------------------------------</b>');
    DBMS_EPG.GET_DAD_LIST(l_dadNames);
    FOR d IN 1..l_dadNames.COUNT
    LOOP
      htp.p('<b>DAD Name:</b> '||l_dadNames(d));
      DBMS_EPG.GET_ALL_DAD_ATTRIBUTES(l_dadNames(d),l_attrNames,l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>'||l_attrNames(a)||':</b> '||l_attrValues(a));
      END LOOP;
      DBMS_EPG.GET_ALL_DAD_MAPPINGS(l_dadNames(d),l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>Mapping</b>: '||l_attrValues(a));
      END LOOP;
      htp.p('<b>User ID</b>: '||owa_sec.get_user_id);
      htp.p('<b>Password</b>: '||owa_sec.get_password);
      /*
      FOR a IN ( SELECT username FROM dba_epg_dad_authorization WHERE dad_name = l_dadNames(d) ) LOOP
      htp.p('-  '||RPAD('authorized',25)||' : '||a.username);
      END LOOP;
      */
    END LOOP;
    htp.preClose;
    HTP.bodyclose;
    HTP.htmlclose;
    --delete dept where deptno=60;
    --insert into dept values (60,'OLA','OLE');
    --commit;
  END home;

/
--------------------------------------------------------
--  DDL for Procedure WSAPPLICATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BDA_1010985"."WSAPPLICATION" 
IS
v_request_handle utl_http.req;
v_response_handle utl_http.resp;
lv_response_line VARCHAR2 (32767);
v_url VARCHAR2(2000);
v_request VARCHAR2(2000);
v_request_length INTEGER;
BEGIN
v_url := 'http://bd.ipg.pt:8080/ws_test/!ws.WSApplication/';
v_request_handle := UTL_HTTP.BEGIN_REQUEST (v_url,'POST','HTTP/1.0');
v_request := '<?xml version="1.0" encoding="utf-8"?>
<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/">
<env:Body>
<ns2:getDBResult xmlns:ns2="http://oracleaccess.me.org/">
<SQLQuery>select empno||'' - ''||ename from emp order by empno</SQLQuery>
</ns2:getDBResult>
</env:Body>
</env:Envelope>';
v_request_length := LENGTH(v_request);
UTL_HTTP.SET_HEADER (r => v_request_handle,name => 'Content-Length',value
=>TO_CHAR(v_request_length));
UTL_HTTP.WRITE_TEXT (r => v_request_handle, data => v_request);
v_response_handle := UTL_HTTP.GET_RESPONSE (v_request_handle);
LOOP
UTL_HTTP.READ_LINE (v_response_handle, lv_response_line, TRUE);
dbms_output.put_line (lv_response_line);
END LOOP;
EXCEPTION
WHEN UTL_HTTP.END_OF_BODY OR UTL_HTTP.TOO_MANY_REQUESTS THEN
UTL_HTTP.END_RESPONSE (v_response_handle);
dbms_output.put_line(UTL_HTTP.GET_DETAILED_SQLERRM());
END;

/
--------------------------------------------------------
--  DDL for Procedure WS_IP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BDA_1010985"."WS_IP" 
IS
v_request_handle UTL_HTTP.REQ;
v_response_handle UTL_HTTP.RESP;
lv_response_line VARCHAR2 (32767);
v_url VARCHAR2(2000);
v_request VARCHAR2(2000);
v_request_length INTEGER;
BEGIN
v_url := 'http://ip.jsontest.com/';
--v_request_handle := UTL_HTTP.BEGIN_REQUEST (v_url,'GET','HTTP/1.0');
v_request_handle := UTL_HTTP.BEGIN_REQUEST (v_url);
v_request := '';
v_request_length := LENGTH(v_request);
--UTL_HTTP.SET_HEADER (r => v_request_handle,name => 'Content-Length',value=>TO_CHAR(v_request_length));
UTL_HTTP.SET_HEADER(v_request_handle, 'User-Agent', 'Mozilla/4.0');
--UTL_HTTP.WRITE_TEXT (r => v_request_handle, data => v_request);
v_response_handle := UTL_HTTP.GET_RESPONSE (v_request_handle);
LOOP
UTL_HTTP.READ_LINE (v_response_handle, lv_response_line, TRUE);
dbms_output.put_line (lv_response_line);
END LOOP;
EXCEPTION
WHEN UTL_HTTP.END_OF_BODY OR UTL_HTTP.TOO_MANY_REQUESTS THEN
UTL_HTTP.END_RESPONSE (v_response_handle);
dbms_output.put_line(UTL_HTTP.GET_DETAILED_SQLERRM());
END;

/
--------------------------------------------------------
--  DDL for Package Body WS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "BDA_1010985"."WS" as
procedure getCliente (id_cliente number) is

  v_primeiro_nome BD_CLIENTES.PRIMIRONOME%type;

    l_dadNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrValues DBMS_EPG.VARCHAR2_TABLE;
  BEGIN
  
    select primironome into v_primeiro_nome from bd_clientes where IDCLIENTE = id_cliente;
    
    HTP.htmlopen;
    HTP.headopen;
    HTP.title('This is a test page :) !!!');
    HTP.headclose;
    HTP.bodyopen;
    htp.p('<h1>Teste de grupo</h1>');
    htp.preOpen;
    
    htp.p('<b>Número X:</b> '||id_cliente);
    htp.p('<b>v_primeiro_nome:</b> '||v_primeiro_nome);
    
    htp.p('<b>Username:</b> '||USER);
    htp.p('<b>Time Now:</b> '||TO_CHAR(SYSTIMESTAMP));
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>OWA Variables</h1>');
    htp.p('<b>------------------------------</b>');
    FOR i IN 1..owa.num_cgi_vars
    LOOP
      htp.p('<b>'||owa.cgi_var_name(i)||' :</b> '||owa.cgi_var_val(i));
    END LOOP;
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>DAD Attributes</h1>');
    htp.p('<b>------------------------------</b>');
    DBMS_EPG.GET_DAD_LIST(l_dadNames);
    FOR d IN 1..l_dadNames.COUNT
    LOOP
      htp.p('<b>DAD Name:</b> '||l_dadNames(d));
      DBMS_EPG.GET_ALL_DAD_ATTRIBUTES(l_dadNames(d),l_attrNames,l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>'||l_attrNames(a)||':</b> '||l_attrValues(a));
      END LOOP;
      DBMS_EPG.GET_ALL_DAD_MAPPINGS(l_dadNames(d),l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>Mapping</b>: '||l_attrValues(a));
      END LOOP;
      htp.p('<b>User ID</b>: '||owa_sec.get_user_id);
      htp.p('<b>Password</b>: '||owa_sec.get_password);
      /*
      FOR a IN ( SELECT username FROM dba_epg_dad_authorization WHERE dad_name = l_dadNames(d) ) LOOP
      htp.p('-  '||RPAD('authorized',25)||' : '||a.username);
      END LOOP;
      */
    END LOOP;
    htp.preClose;
    HTP.bodyclose;
    HTP.htmlclose;
    --delete dept where deptno=60;
    --insert into dept values (60,'OLA','OLE');
    --commit;


end;


procedure getCliente2 (id_cliente number) is

  v_primeiro_nome BD_CLIENTES.PRIMIRONOME%type;

    l_dadNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrNames DBMS_EPG.VARCHAR2_TABLE;
    l_attrValues DBMS_EPG.VARCHAR2_TABLE;
  BEGIN
  
    select primironome into v_primeiro_nome from bd_clientes where IDCLIENTE = id_cliente;
    
    HTP.htmlopen;
    HTP.headopen;
    HTP.title('This is a test page :) !!!');
    HTP.headclose;
    HTP.bodyopen;
    htp.p('<h1>Teste de grupo</h1>');
    htp.preOpen;
    
    htp.p('<b>Número X:</b> '||id_cliente);
    htp.p('<b>v_primeiro_nome:</b> '||v_primeiro_nome);
    
    htp.p('<b>Username:</b> '||USER);
    htp.p('<b>Time Now:</b> '||TO_CHAR(SYSTIMESTAMP));
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>OWA Variables</h1>');
    htp.p('<b>------------------------------</b>');
    FOR i IN 1..owa.num_cgi_vars
    LOOP
      htp.p('<b>'||owa.cgi_var_name(i)||' :</b> '||owa.cgi_var_val(i));
    END LOOP;
    htp.p('<b>------------------------------</b>');
    htp.p('<h1>DAD Attributes</h1>');
    htp.p('<b>------------------------------</b>');
    DBMS_EPG.GET_DAD_LIST(l_dadNames);
    FOR d IN 1..l_dadNames.COUNT
    LOOP
      htp.p('<b>DAD Name:</b> '||l_dadNames(d));
      DBMS_EPG.GET_ALL_DAD_ATTRIBUTES(l_dadNames(d),l_attrNames,l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>'||l_attrNames(a)||':</b> '||l_attrValues(a));
      END LOOP;
      DBMS_EPG.GET_ALL_DAD_MAPPINGS(l_dadNames(d),l_attrValues);
      FOR a IN 1..l_attrValues.COUNT
      LOOP
        htp.p('<b>Mapping</b>: '||l_attrValues(a));
      END LOOP;
      htp.p('<b>User ID</b>: '||owa_sec.get_user_id);
      htp.p('<b>Password</b>: '||owa_sec.get_password);
      /*
      FOR a IN ( SELECT username FROM dba_epg_dad_authorization WHERE dad_name = l_dadNames(d) ) LOOP
      htp.p('-  '||RPAD('authorized',25)||' : '||a.username);
      END LOOP;
      */
    END LOOP;
    htp.preClose;
    HTP.bodyclose;
    HTP.htmlclose;
    --delete dept where deptno=60;
    --insert into dept values (60,'OLA','OLE');
    --commit;


end ;
end WS;

/
--------------------------------------------------------
--  DDL for Package WS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "BDA_1010985"."WS" as
procedure getCliente (id_cliente number);
procedure getCliente2 (id_cliente number);
end WS;

/
--------------------------------------------------------
--  DDL for Function WS_IP_2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "BDA_1010985"."WS_IP_2" (url VARCHAR2) 
return VARCHAR2 AS
v_request_handle UTL_HTTP.REQ;
v_response_handle UTL_HTTP.RESP;
lv_response_line VARCHAR2 (32767);
v_url VARCHAR2(2000);
v_request VARCHAR2(2000);
v_request_length INTEGER;
BEGIN
v_url := 'http://ip.jsontest.com/';
--v_request_handle := UTL_HTTP.BEGIN_REQUEST (v_url,'GET','HTTP/1.0');
v_request_handle := UTL_HTTP.BEGIN_REQUEST (v_url);
v_request := '';
v_request_length := LENGTH(v_request);
--UTL_HTTP.SET_HEADER (r => v_request_handle,name => 'Content-Length',value=>TO_CHAR(v_request_length));
UTL_HTTP.SET_HEADER(v_request_handle, 'User-Agent', 'Mozilla/4.0');
--UTL_HTTP.WRITE_TEXT (r => v_request_handle, data => v_request);
v_response_handle := UTL_HTTP.GET_RESPONSE (v_request_handle);
LOOP
UTL_HTTP.READ_LINE (v_response_handle, lv_response_line, TRUE);
dbms_output.put_line (lv_response_line);
END LOOP;
EXCEPTION
WHEN UTL_HTTP.END_OF_BODY OR UTL_HTTP.TOO_MANY_REQUESTS THEN
UTL_HTTP.END_RESPONSE (v_response_handle);
return UTL_HTTP.GET_DETAILED_SQLERRM();
END;

/
--------------------------------------------------------
--  Constraints for Table BD_ABASTECIMENTOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_ABASTECIMENTOS" ADD CONSTRAINT "BD_ABASTECIMENTOS_PK" PRIMARY KEY ("IDABASTECIMENTO")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_ABASTECIMENTOS" MODIFY ("VEICULOS_IDVEICULO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_ABASTECIMENTOS" MODIFY ("LITROS" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_ABASTECIMENTOS" MODIFY ("KM" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_ABASTECIMENTOS" MODIFY ("IDABASTECIMENTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_ANOMALIAS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_ANOMALIAS" ADD CONSTRAINT "BD_ANOMALIAS_PK" PRIMARY KEY ("IDANOMALIA")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_ANOMALIAS" MODIFY ("VEICULOS_IDVEICULO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_ANOMALIAS" MODIFY ("ANOMALIA" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_ANOMALIAS" MODIFY ("IDANOMALIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_CLIENTES
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("IDCLIENTE")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("ELIMINADO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("PASSWORD_ALTERADA" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("ULTIMONOME" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("PRIMEIRONOME" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_CLIENTES" MODIFY ("IDCLIENTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_MECANICOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_MECANICOS" ADD CONSTRAINT "MECANICOS_PK" PRIMARY KEY ("IDMECANICO")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("VERSAO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("ELIMINADO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("ULTIMONOME" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("PRIMEIRONOME" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_MECANICOS" MODIFY ("IDMECANICO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_PK" PRIMARY KEY ("IDOCORRENCIA")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" MODIFY ("OCORRENCIAS_IDOCORRENCIAESTADO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" MODIFY ("VEICULOS_IDVEICULO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" MODIFY ("CLIENTES_IDCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" MODIFY ("IDOCORRENCIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_OCORRENCIAS_ESTADOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" ADD CONSTRAINT "OCORRENCIAS_ESTADOS_PK" PRIMARY KEY ("IDOCORRENCIAESTADO")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" MODIFY ("IDOCORRENCIAESTADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" ADD CONSTRAINT "PK_REPARACOES_OCORRENCIAS" PRIMARY KEY ("ID_OCORRENCIAS", "ID_REPARACAO_TIPO")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" MODIFY ("PRECO_UNITARIO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" MODIFY ("QUANTIDADE" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" MODIFY ("ID_REPARACAO_TIPO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" MODIFY ("ID_OCORRENCIAS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_REPARACOES_TIPOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_REPARACOES_TIPOS" ADD CONSTRAINT "REPARACOES_TIPOS_PK" PRIMARY KEY ("IDREPARACAOTIPO")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_TIPOS" MODIFY ("VERSAO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_TIPOS" MODIFY ("REPARACAO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_TIPOS" MODIFY ("IDREPARACAOTIPO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_VEICULOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_VEICULOS" ADD CONSTRAINT "VEICULOS_PK" PRIMARY KEY ("IDVEICULO")
  USING INDEX  ENABLE;
  ALTER TABLE "BDA_1010985"."BD_VEICULOS" MODIFY ("MODELO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_VEICULOS" MODIFY ("MARCA" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_VEICULOS" MODIFY ("CLIENTES_IDCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_VEICULOS" MODIFY ("IDMODELO" NOT NULL ENABLE);
  ALTER TABLE "BDA_1010985"."BD_VEICULOS" MODIFY ("IDVEICULO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BD_ABASTECIMENTOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_ABASTECIMENTOS" ADD CONSTRAINT "ABASTECIMENTOS_VEICULOS_FK" FOREIGN KEY ("VEICULOS_IDVEICULO")
	  REFERENCES "BDA_1010985"."BD_VEICULOS" ("IDVEICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_ANOMALIAS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_ANOMALIAS" ADD CONSTRAINT "ANOMALIAS_MECANICOS_FK" FOREIGN KEY ("MECANICOS_IDMECANICO")
	  REFERENCES "BDA_1010985"."BD_MECANICOS" ("IDMECANICO") ENABLE;
  ALTER TABLE "BDA_1010985"."BD_ANOMALIAS" ADD CONSTRAINT "ANOMALIAS_VEICULOS_FK" FOREIGN KEY ("VEICULOS_IDVEICULO")
	  REFERENCES "BDA_1010985"."BD_VEICULOS" ("IDVEICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_CLIENTES_FK" FOREIGN KEY ("CLIENTES_IDCLIENTE")
	  REFERENCES "BDA_1010985"."BD_CLIENTES" ("IDCLIENTE") ENABLE;
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_ESTADOS_FK" FOREIGN KEY ("OCORRENCIAS_IDOCORRENCIAESTADO")
	  REFERENCES "BDA_1010985"."BD_OCORRENCIAS_ESTADOS" ("IDOCORRENCIAESTADO") ENABLE;
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_MECANICOS_FK" FOREIGN KEY ("MECANICOS_IDMECANICO")
	  REFERENCES "BDA_1010985"."BD_MECANICOS" ("IDMECANICO") ENABLE;
  ALTER TABLE "BDA_1010985"."BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_VEICULOS_FK" FOREIGN KEY ("VEICULOS_IDVEICULO")
	  REFERENCES "BDA_1010985"."BD_VEICULOS" ("IDVEICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" ADD CONSTRAINT "FK_ID_OCORRENCIAS" FOREIGN KEY ("ID_OCORRENCIAS")
	  REFERENCES "BDA_1010985"."BD_OCORRENCIAS" ("IDOCORRENCIA") ENABLE;
  ALTER TABLE "BDA_1010985"."BD_REPARACOES_OCORRENCIAS" ADD CONSTRAINT "FK_ID_REPARACAO_TIPO" FOREIGN KEY ("ID_REPARACAO_TIPO")
	  REFERENCES "BDA_1010985"."BD_REPARACOES_TIPOS" ("IDREPARACAOTIPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_VEICULOS
--------------------------------------------------------

  ALTER TABLE "BDA_1010985"."BD_VEICULOS" ADD CONSTRAINT "VEICULOS_CLIENTES_FK" FOREIGN KEY ("CLIENTES_IDCLIENTE")
	  REFERENCES "BDA_1010985"."BD_CLIENTES" ("IDCLIENTE") ENABLE;
