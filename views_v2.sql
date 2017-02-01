create or replace view SOMALITROS as
SELECT v.IDVEICULO, sum(a.LITROS) litros
from BD_VEICULOS v full JOIN  BD_ABASTECIMENTOS a on v.IDVEICULO = a.VEICULOS_IDVEICULO
group by v.IDVEICULO with READ ONLY ;

create or replace view VEICULOSPORCLIENTES AS
select v.MARCA,v.MODELO,v.MATRICULA,v.CLIENTES_IDCLIENTE,s.litros
from BD_VEICULOS v join SomaLitros s on v.IDVEICULO = s.IDVEICULO
with READ ONLY ;

  
create OR REPLACE view LOGINCLIENTES AS
  select PRIMEIRONOME,ULTIMONOME,EMAIL,PASSWORD,IDCLIENTE from BD_CLIENTES WITH READ ONLY;
  
  
grant select on SOMALITROS to scott;  
grant select on VEICULOSPORCLIENTES to scott;
grant select on LOGINCLIENTES to scott;