create or replace package WS as
procedure WS_VerVeiculos(id_cliente number,v_email varchar2,v_password varchar2);
procedure WS_InsereOcorrencia (v_dMarcacao date,
    v_dInicio DATE,
    v_km NUMBER,
    v_obsC CLOB,
    v_obsM CLOB,
    v_idcliente NUMBER,
    v_idmecanico NUMBER,
    v_idveiculo number,
    v_estado number,
	v_email varchar2,
	v_password varchar2);
procedure WS_RegistaVeiculo (v_idmarca number, v_idmodelo number,
  v_marca varchar2, v_modelo varchar2, v_matricula varchar2, v_idcliente number, v_email varchar2, v_password varchar2) ;
procedure WS_LOGIN (vemail varchar2, vpassword varchar2) ; 
  
end WS;

-- Body
create or replace package body WS as

procedure WS_VerVeiculos(id_cliente number,v_email varchar2,v_password varchar2) is

   CURSOR cursor_veiculo IS
     select MARCA,MODELO,MATRICULA,LITROS
     from VeiculosPorClientes
       where CLIENTES_IDCLIENTE = id_cliente;

  c_marca VARCHAR2(255);
  c_modelo VARCHAR2(255);
  c_matricula VARCHAR2(255);
  c_litros VARCHAR2(255);
  v_idcliente number;
  resultado CLOB;
  BEGIN
	select idCliente into v_idcliente from bd_clientes where email=v_email and password=v_password;
    resultado:='[';
    OPEN cursor_veiculo;
    LOOP
      exit when cursor_veiculo%notfound;
      FETCH cursor_veiculo INTO c_marca, c_modelo, c_matricula,c_litros;
      resultado:=resultado || '{"Marca": "'||c_marca||'", "Modelo": "'
                 ||c_modelo||'", "Matricula":"'||c_matricula||
                 '", "Litros":"'||c_litros||'"},';
    END LOOP;
    CLOSE cursor_veiculo;
    resultado:=substr(resultado,0,length(resultado)-1)||']';
    htp.print(resultado);
	EXCEPTION WHEN NO_DATA_FOUND  THEN
	    htp.p('Acesso Negado');
    WHEN OTHERS THEN
		  resultado:=resultado || '{"Erro": "'||SQLERRM||'"}';
		  htp.print(resultado);
end;


procedure WS_InsereOcorrencia
  (v_dMarcacao date,
    v_dInicio DATE,
    v_km NUMBER,
    v_obsC CLOB,
    v_obsM CLOB,
    v_idcliente NUMBER,
    v_idmecanico NUMBER,
    v_idveiculo number,
    v_estado number,
	v_email varchar2,
	v_password varchar2) is

    id_cliente number;
    resultado varchar2(10000);
  BEGIN

	select idCliente into id_cliente from bd_clientes where email=v_email and password=v_password;
  INSERT INTO BD_OCORRENCIAS
  (DATAMARCACAO,DATAINICIO,KM,PRECOTOTAL,OBSERVACOES_CLIENTE,OBSERVACOES_MECANICO,
  CLIENTES_IDCLIENTE,MECANICOS_IDMECANICO,VEICULOS_IDVEICULO,OCORRENCIAS_IDOCORRENCIAESTADO)
  VALUES
    (v_dMarcacao,v_dInicio,v_km,0,v_obsC,v_obsM,v_idcliente,v_idmecanico,v_idveiculo,v_estado);
    resultado:=resultado || '{"sucesso": "'||1||'"}';
    htp.print(resultado);
    EXCEPTION WHEN NO_DATA_FOUND  THEN
	    htp.p('Acesso Negado');
    WHEN OTHERS THEN
		  resultado:=resultado || '{"Erro": "'||SQLERRM||'"}';
		  htp.print(resultado);

end;


procedure WS_RegistaVeiculo (v_idmarca number, v_idmodelo number,
  v_marca varchar2, v_modelo varchar2, v_matricula varchar2, v_idcliente number, v_email varchar2, v_password varchar2) is

  id_cliente number;
  resultado varchar2(10000);
  BEGIN
	select idCliente into id_cliente from bd_clientes where email=v_email and password=v_password;
  
    INSERT INTO BD_VEICULOS (IDMARCA,IDMODELO,MARCA,MODELO,MATRICULA,CLIENTES_IDCLIENTE)
      VALUES (v_idmarca,v_idmodelo,v_marca,v_modelo,v_matricula,v_idcliente);

    resultado:='';
    resultado:=resultado || '{"Resposta": "Inserido com sucesso."}';
    htp.print(resultado);
 EXCEPTION 
 WHEN NO_DATA_FOUND  THEN
	    htp.p('Acesso Negado');
     WHEN OTHERS
      THEN
    resultado:= '{"Resposta": "Ocorreu um erro."}';
    htp.print(resultado);

end;


	procedure WS_LOGIN (vemail varchar2, vpassword varchar2) is

	  c_idcliente VARCHAR2(255):=NULL;
	  c_pnome VARCHAR2(255):=NULL;
	  c_unome VARCHAR2(255):=NULL;
	  resultado varchar2(10000);
	  BEGIN
		select IDCLIENTE,PRIMEIRONOME,ULTIMONOME
		into c_idcliente,c_pnome,c_unome
		from LOGINCLIENTES
		where email=vemail
			  and password=vpassword;

		resultado:='{"idCliente": "'||c_idcliente
					||'", "primeiroNome": "'||c_pnome
					||'", "ultimoNome": "'||c_unome
					||'", "email": "'||vemail
					||'", "password": "'||vpassword
					||'"}';
		htp.print(resultado);
	 EXCEPTION
		 WHEN no_data_found
		  THEN
		   c_idcliente := 0;
		   c_pnome:='0';
		   c_unome:='0';
			  resultado:='{"idCliente": "'||c_idcliente
					||'", "primeiroNome": "'||c_pnome
					||'", "ultimoNome": "'||c_unome
					||'"}';
		  htp.print(resultado);

	end;



end WS;

-- grant execute on WS_LOGIN TO SCOTT;
-- grant execute on WS_RegistaVeiculo TO SCOTT;
-- grant execute on WS_VerVeiculos TO SCOTT;