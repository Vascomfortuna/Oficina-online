-- Todos os SELECTs devem funcionar corretamente senão devem ficar registados na auditoria
audit select on bd_clientes  by access WHENEVER not successful;
audit select on bd_mecanicos  by access WHENEVER not successful;