--------------------------------------------------------
--  File created - Sexta-feira-Janeiro-20-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BD_ABASTECIMENTOS
--------------------------------------------------------

  CREATE TABLE "BD_ABASTECIMENTOS" 
   (	"IDABASTECIMENTO" NUMBER, 
	"KM" NUMBER, 
	"LITROS" NUMBER, 
	"VEICULOS_IDVEICULO" NUMBER, 
	"DATA_ABASTECIMENTO" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table BD_ANOMALIAS
--------------------------------------------------------

  CREATE TABLE "BD_ANOMALIAS" 
   (	"IDANOMALIA" NUMBER, 
	"ANOMALIA" VARCHAR2(255 BYTE), 
	"DESCRICAO" CLOB, 
	"VEICULOS_IDVEICULO" NUMBER, 
	"MECANICOS_IDMECANICO" NUMBER, 
	"DATA_ANOMALIA" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table BD_CLIENTES
--------------------------------------------------------

  CREATE TABLE "BD_CLIENTES" 
   (	"IDCLIENTE" NUMBER, 
	"PRIMIRONOME" VARCHAR2(50 BYTE), 
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

  CREATE TABLE "BD_MECANICOS" 
   (	"IDMECANICO" NUMBER, 
	"PRIMIRONOME" VARCHAR2(50 BYTE), 
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

  CREATE TABLE "BD_OCORRENCIAS" 
   (	"IDOCORRENCIA" NUMBER, 
	"DATAMARCACAO" DATE, 
	"DATAINICIO" DATE, 
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

  CREATE TABLE "BD_OCORRENCIAS_ESTADOS" 
   (	"IDOCORRENCIAESTADO" NUMBER, 
	"ESTADO" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BD_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  CREATE TABLE "BD_REPARACOES_OCORRENCIAS" 
   (	"ID_OCORRENCIAS" NUMBER, 
	"ID_REPARACAO_TIPO" NUMBER, 
	"QUANTIDADE" NUMBER, 
	"PRECO_UNITARIO" NUMBER(10,2)
   ) ;
--------------------------------------------------------
--  DDL for Table BD_REPARACOES_TIPOS
--------------------------------------------------------

  CREATE TABLE "BD_REPARACOES_TIPOS" 
   (	"IDREPARACAOTIPO" NUMBER, 
	"REPARACAO" VARCHAR2(255 BYTE), 
	"DESCRICAO" CLOB, 
	"VERSAO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table BD_VEICULOS
--------------------------------------------------------

  CREATE TABLE "BD_VEICULOS" 
   (	"IDVEICULO" NUMBER, 
	"IDMODELO" NUMBER, 
	"CLIENTES_IDCLIENTE" NUMBER, 
	"MARCA" VARCHAR2(50 BYTE), 
	"MODELO" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Sequence REPARACOES_OCORRENCIAS_REPARAC
--------------------------------------------------------

   CREATE SEQUENCE  "REPARACOES_OCORRENCIAS_REPARAC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence SEQ_VENDAS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_VENDAS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
REM INSERTING into BD_ABASTECIMENTOS
SET DEFINE OFF;
REM INSERTING into BD_ANOMALIAS
SET DEFINE OFF;
REM INSERTING into BD_CLIENTES
SET DEFINE OFF;
REM INSERTING into BD_MECANICOS
SET DEFINE OFF;
REM INSERTING into BD_OCORRENCIAS
SET DEFINE OFF;
REM INSERTING into BD_OCORRENCIAS_ESTADOS
SET DEFINE OFF;
REM INSERTING into BD_REPARACOES_OCORRENCIAS
SET DEFINE OFF;
REM INSERTING into BD_REPARACOES_TIPOS
SET DEFINE OFF;
REM INSERTING into BD_VEICULOS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index BD_ABASTECIMENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BD_ABASTECIMENTOS_PK" ON "BD_ABASTECIMENTOS" ("IDABASTECIMENTO") 
  ;
--------------------------------------------------------
--  DDL for Index BD_ANOMALIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BD_ANOMALIAS_PK" ON "BD_ANOMALIAS" ("IDANOMALIA") 
  ;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CLIENTES_PK" ON "BD_CLIENTES" ("IDCLIENTE") 
  ;
--------------------------------------------------------
--  DDL for Index MECANICOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MECANICOS_PK" ON "BD_MECANICOS" ("IDMECANICO") 
  ;
--------------------------------------------------------
--  DDL for Index OCORRENCIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OCORRENCIAS_PK" ON "BD_OCORRENCIAS" ("IDOCORRENCIA") 
  ;
--------------------------------------------------------
--  DDL for Index OCORRENCIAS_ESTADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OCORRENCIAS_ESTADOS_PK" ON "BD_OCORRENCIAS_ESTADOS" ("IDOCORRENCIAESTADO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPARACOES_OCORRENCIAS" ON "BD_REPARACOES_OCORRENCIAS" ("ID_OCORRENCIAS", "ID_REPARACAO_TIPO") 
  ;
--------------------------------------------------------
--  DDL for Index REPARACOES_TIPOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPARACOES_TIPOS_PK" ON "BD_REPARACOES_TIPOS" ("IDREPARACAOTIPO") 
  ;
--------------------------------------------------------
--  DDL for Index VEICULOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VEICULOS_PK" ON "BD_VEICULOS" ("IDVEICULO") 
  ;
--------------------------------------------------------
--  DDL for Procedure CALL_WS_IP_2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "CALL_WS_IP_2" 
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

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HOME" 
   
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

  CREATE OR REPLACE EDITIONABLE PROCEDURE "MOSTRA_VENDA" (pi_data date) is
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

  CREATE OR REPLACE EDITIONABLE PROCEDURE "PROCEDURE" 
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

  CREATE OR REPLACE EDITIONABLE PROCEDURE "WSAPPLICATION" 
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

  CREATE OR REPLACE EDITIONABLE PROCEDURE "WS_IP" 
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

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WS" as
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

  CREATE OR REPLACE EDITIONABLE PACKAGE "WS" as
procedure getCliente (id_cliente number);
procedure getCliente2 (id_cliente number);
end WS;

/
--------------------------------------------------------
--  DDL for Function VENDA_ARTIGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "VENDA_ARTIGO" (pi_artigo number, pi_qt number) 
return number
is
v_id vendas.id%type;
begin
  select seq_vendas.nextval into v_id from dual;
  insert into VENDAS (id, artigo, qt) values (v_id, pi_artigo, pi_qt);
  update ARTIGOS set stock = stock - pi_qt where id = pi_artigo;
  return v_id;
end;

/
--------------------------------------------------------
--  DDL for Function WS_IP_2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "WS_IP_2" (url VARCHAR2) 
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

  ALTER TABLE "BD_ABASTECIMENTOS" ADD CONSTRAINT "BD_ABASTECIMENTOS_PK" PRIMARY KEY ("IDABASTECIMENTO")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_ABASTECIMENTOS" MODIFY ("DATA_ABASTECIMENTO" NOT NULL ENABLE);
  ALTER TABLE "BD_ABASTECIMENTOS" MODIFY ("VEICULOS_IDVEICULO" NOT NULL ENABLE);
  ALTER TABLE "BD_ABASTECIMENTOS" MODIFY ("LITROS" NOT NULL ENABLE);
  ALTER TABLE "BD_ABASTECIMENTOS" MODIFY ("KM" NOT NULL ENABLE);
  ALTER TABLE "BD_ABASTECIMENTOS" MODIFY ("IDABASTECIMENTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_ANOMALIAS
--------------------------------------------------------

  ALTER TABLE "BD_ANOMALIAS" ADD CONSTRAINT "BD_ANOMALIAS_PK" PRIMARY KEY ("IDANOMALIA")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_ANOMALIAS" MODIFY ("DATA_ANOMALIA" NOT NULL ENABLE);
  ALTER TABLE "BD_ANOMALIAS" MODIFY ("VEICULOS_IDVEICULO" NOT NULL ENABLE);
  ALTER TABLE "BD_ANOMALIAS" MODIFY ("ANOMALIA" NOT NULL ENABLE);
  ALTER TABLE "BD_ANOMALIAS" MODIFY ("IDANOMALIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_CLIENTES
--------------------------------------------------------

  ALTER TABLE "BD_CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("IDCLIENTE")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_CLIENTES" MODIFY ("ELIMINADO" NOT NULL ENABLE);
  ALTER TABLE "BD_CLIENTES" MODIFY ("PASSWORD_ALTERADA" NOT NULL ENABLE);
  ALTER TABLE "BD_CLIENTES" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BD_CLIENTES" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BD_CLIENTES" MODIFY ("ULTIMONOME" NOT NULL ENABLE);
  ALTER TABLE "BD_CLIENTES" MODIFY ("PRIMIRONOME" NOT NULL ENABLE);
  ALTER TABLE "BD_CLIENTES" MODIFY ("IDCLIENTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_MECANICOS
--------------------------------------------------------

  ALTER TABLE "BD_MECANICOS" ADD CONSTRAINT "MECANICOS_PK" PRIMARY KEY ("IDMECANICO")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_MECANICOS" MODIFY ("VERSAO" NOT NULL ENABLE);
  ALTER TABLE "BD_MECANICOS" MODIFY ("ELIMINADO" NOT NULL ENABLE);
  ALTER TABLE "BD_MECANICOS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BD_MECANICOS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BD_MECANICOS" MODIFY ("ULTIMONOME" NOT NULL ENABLE);
  ALTER TABLE "BD_MECANICOS" MODIFY ("PRIMIRONOME" NOT NULL ENABLE);
  ALTER TABLE "BD_MECANICOS" MODIFY ("IDMECANICO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_PK" PRIMARY KEY ("IDOCORRENCIA")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_OCORRENCIAS" MODIFY ("OCORRENCIAS_IDOCORRENCIAESTADO" NOT NULL ENABLE);
  ALTER TABLE "BD_OCORRENCIAS" MODIFY ("VEICULOS_IDVEICULO" NOT NULL ENABLE);
  ALTER TABLE "BD_OCORRENCIAS" MODIFY ("CLIENTES_IDCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "BD_OCORRENCIAS" MODIFY ("DATAESTADOATUAL" NOT NULL ENABLE);
  ALTER TABLE "BD_OCORRENCIAS" MODIFY ("IDOCORRENCIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_OCORRENCIAS_ESTADOS
--------------------------------------------------------

  ALTER TABLE "BD_OCORRENCIAS_ESTADOS" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "BD_OCORRENCIAS_ESTADOS" MODIFY ("IDOCORRENCIAESTADO" NOT NULL ENABLE);
  ALTER TABLE "BD_OCORRENCIAS_ESTADOS" ADD CONSTRAINT "OCORRENCIAS_ESTADOS_PK" PRIMARY KEY ("IDOCORRENCIAESTADO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table BD_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" ADD CONSTRAINT "PK_REPARACOES_OCORRENCIAS" PRIMARY KEY ("ID_OCORRENCIAS", "ID_REPARACAO_TIPO")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" MODIFY ("PRECO_UNITARIO" NOT NULL ENABLE);
  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" MODIFY ("QUANTIDADE" NOT NULL ENABLE);
  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" MODIFY ("ID_REPARACAO_TIPO" NOT NULL ENABLE);
  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" MODIFY ("ID_OCORRENCIAS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_REPARACOES_TIPOS
--------------------------------------------------------

  ALTER TABLE "BD_REPARACOES_TIPOS" ADD CONSTRAINT "REPARACOES_TIPOS_PK" PRIMARY KEY ("IDREPARACAOTIPO")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_REPARACOES_TIPOS" MODIFY ("VERSAO" NOT NULL ENABLE);
  ALTER TABLE "BD_REPARACOES_TIPOS" MODIFY ("REPARACAO" NOT NULL ENABLE);
  ALTER TABLE "BD_REPARACOES_TIPOS" MODIFY ("IDREPARACAOTIPO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BD_VEICULOS
--------------------------------------------------------

  ALTER TABLE "BD_VEICULOS" ADD CONSTRAINT "VEICULOS_PK" PRIMARY KEY ("IDVEICULO")
  USING INDEX  ENABLE;
  ALTER TABLE "BD_VEICULOS" MODIFY ("MODELO" NOT NULL ENABLE);
  ALTER TABLE "BD_VEICULOS" MODIFY ("MARCA" NOT NULL ENABLE);
  ALTER TABLE "BD_VEICULOS" MODIFY ("CLIENTES_IDCLIENTE" NOT NULL ENABLE);
  ALTER TABLE "BD_VEICULOS" MODIFY ("IDMODELO" NOT NULL ENABLE);
  ALTER TABLE "BD_VEICULOS" MODIFY ("IDVEICULO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BD_ABASTECIMENTOS
--------------------------------------------------------

  ALTER TABLE "BD_ABASTECIMENTOS" ADD CONSTRAINT "ABASTECIMENTOS_VEICULOS_FK" FOREIGN KEY ("VEICULOS_IDVEICULO")
	  REFERENCES "BD_VEICULOS" ("IDVEICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_ANOMALIAS
--------------------------------------------------------

  ALTER TABLE "BD_ANOMALIAS" ADD CONSTRAINT "ANOMALIAS_MECANICOS_FK" FOREIGN KEY ("MECANICOS_IDMECANICO")
	  REFERENCES "BD_MECANICOS" ("IDMECANICO") ENABLE;
  ALTER TABLE "BD_ANOMALIAS" ADD CONSTRAINT "ANOMALIAS_VEICULOS_FK" FOREIGN KEY ("VEICULOS_IDVEICULO")
	  REFERENCES "BD_VEICULOS" ("IDVEICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_CLIENTES_FK" FOREIGN KEY ("CLIENTES_IDCLIENTE")
	  REFERENCES "BD_CLIENTES" ("IDCLIENTE") ENABLE;
  ALTER TABLE "BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_ESTADOS_FK" FOREIGN KEY ("OCORRENCIAS_IDOCORRENCIAESTADO")
	  REFERENCES "BD_OCORRENCIAS_ESTADOS" ("IDOCORRENCIAESTADO") ENABLE;
  ALTER TABLE "BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_MECANICOS_FK" FOREIGN KEY ("MECANICOS_IDMECANICO")
	  REFERENCES "BD_MECANICOS" ("IDMECANICO") ENABLE;
  ALTER TABLE "BD_OCORRENCIAS" ADD CONSTRAINT "OCORRENCIAS_VEICULOS_FK" FOREIGN KEY ("VEICULOS_IDVEICULO")
	  REFERENCES "BD_VEICULOS" ("IDVEICULO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_REPARACOES_OCORRENCIAS
--------------------------------------------------------

  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" ADD CONSTRAINT "FK_ID_OCORRENCIAS" FOREIGN KEY ("ID_OCORRENCIAS")
	  REFERENCES "BD_OCORRENCIAS" ("IDOCORRENCIA") ENABLE;
  ALTER TABLE "BD_REPARACOES_OCORRENCIAS" ADD CONSTRAINT "FK_ID_REPARACAO_TIPO" FOREIGN KEY ("ID_REPARACAO_TIPO")
	  REFERENCES "BD_REPARACOES_TIPOS" ("IDREPARACAOTIPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BD_VEICULOS
--------------------------------------------------------

  ALTER TABLE "BD_VEICULOS" ADD CONSTRAINT "VEICULOS_CLIENTES_FK" FOREIGN KEY ("CLIENTES_IDCLIENTE")
	  REFERENCES "BD_CLIENTES" ("IDCLIENTE") ENABLE;
