create OR REPLACE view VeiculosPorClientes AS
  select MARCA,MODELO,MATRICULA,CLIENTES_IDCLIENTE from BD_VEICULOS WITH READ ONLY;
  
create OR REPLACE view LoginClientes AS
  select PRIMEIRONOME,ULTIMONOME,EMAIL,PASSWORD,IDCLIENTE from BD_CLIENTES WITH READ ONLY;
  
grant select on VeiculosPorClientes to scott;
grant select on LoginClientes to scott;