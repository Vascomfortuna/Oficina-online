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