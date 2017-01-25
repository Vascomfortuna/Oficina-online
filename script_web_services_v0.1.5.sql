create or replace procedure getVeiculos (id_cliente number) is

   CURSOR cursor_veiculo IS
     select v.Marca,v.Modelo,v.Matricula
     from bd_veiculos v
       INNER JOIN  bd_clientes c
         on c.idcliente = v.clientes_idcliente
     where c.idcliente = id_cliente;
  c_marca VARCHAR2(255);
  c_modelo VARCHAR2(255);
  c_matricula VARCHAR2(255);
  resultado CLOB;
  BEGIN
   -- HTP.htmlopen;
    --HTP.headopen;
   -- HTP.title('Ver Veículos');
   -- HTP.headclose;
  -- HTP.bodyopen;
   -- htp.p('<h1>Teste de grupo</h1>');
  -- htp.preOpen;
    resultado:='[';
    OPEN cursor_veiculo;
    LOOP
      exit when cursor_veiculo%notfound;
      FETCH cursor_veiculo INTO c_marca, c_modelo, c_matricula;
      resultado:=resultado || '{"Marca": "'||c_marca||'", "Modelo": "'||c_modelo||'", "Matrícula":'||c_matricula||'"},';
    END LOOP;
    CLOSE cursor_veiculo;
    resultado:=substr(resultado,0,length(resultado)-1)||']';
    htp.print(resultado);
   -- htp.preClose;
   -- HTP.bodyclose;
   -- HTP.htmlclose;
    --delete dept where deptno=60;
    --insert into dept values (60,'OLA','OLE');
    --commit;


end;

create procedure getLogin (vemail varchar2, vpassword varchar2) is

  c_idcliente VARCHAR2(255):=NULL;
  c_pnome VARCHAR2(255):=NULL;
  c_unome VARCHAR2(255):=NULL;
  resultado varchar2(10000);
  BEGIN
    select idcliente,PRIMEIRONOME,ULTIMONOME
    into c_idcliente,c_pnome,c_unome
    from BD_CLIENTES
    where email=vemail
          and password=vpassword;

    resultado:='[';
    resultado:=resultado || '{"idCliente": "'||c_idcliente||'", "primeiroNome": "'||c_pnome||'", "ultimoNome":"'||c_unome||'"}';
    htp.print(resultado);
 EXCEPTION
     WHEN no_data_found
      THEN
       c_idcliente := 0;
       c_pnome:=null;
       c_unome:=null;
      resultado:='[';
      resultado:=resultado || '{"idCliente": "'||c_idcliente||'", "primeiroNome": "'||c_pnome||'", "ultimoNome":"'||c_unome||'"}';
      htp.print(resultado);

end;

ATENÇÃO: NÃO CONSEGUI METER A FUNCIONAR!!!!
create or replace procedure WS_InsereOcorrencia
  (v_dMarcacao date,
    v_dInicio DATE,
    v_km NUMBER,
    v_obsC CLOB,
    v_obsM CLOB,
    v_idcliente NUMBER,
    v_idmecanico NUMBER,
    v_idveiculo number,
    v_estado number) is

    resultado varchar2(10000);
  BEGIN
  INSERT INTO BD_OCORRENCIAS
  (DATAMARCACAO,DATAINICIO,KM,PRECOTOTAL,OBSERVACOES_CLIENTE,OBSERVACOES_MECANICO,
  CLIENTES_IDCLIENTE,MECANICOS_IDMECANICO,VEICULOS_IDVEICULO,OCORRENCIAS_IDOCORRENCIAESTADO)
  VALUES
    (v_dMarcacao,v_dInicio,v_km,0,v_obsC,v_obsM,v_idcliente,v_idmecanico,v_idveiculo,v_estado);
    resultado:='[';
    resultado:=resultado || '{"sucesso": "'||1||'"}';
    dbms_output.put_line('xxxxx');
    htp.print(resultado);
  EXCEPTION WHEN OTHERS
    THEN
        resultado:='[';
    resultado:=resultado || '{"Erro": "'||SQLERRM||'"}';
    dbms_output.put_line('klkr');
    htp.print(resultado);

end;
