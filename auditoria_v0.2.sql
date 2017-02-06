-- Auditoria v.0.2 (06.02.2017)

-- audit select on bd_abastecimentos by access WHENEVER not successful;
-- audit select on bd_anomalias by access WHENEVER not successful;
-- audit select on bd_clientes by access WHENEVER not successful;
-- audit select on bd_veiculos by access WHENEVER not successful;
-- audit select on bd_mecanicos by access WHENEVER not successful;
-- audit select on bd_repacacoes_tipos by access WHENEVER not successful;
-- audit select on bd_ocorrencias by access WHENEVER not successful;
-- audit select on bd_ocorrencias_estados by access WHENEVER not successful;
-- audit select on bd__reparacoes_ocorrencias by access WHENEVER not successful;

-- Auditoria para as queries mais críticas
-- Operações que modificam a base de dados

audit INSERT on bd_abastecimentos by access WHENEVER successful;
audit INSERT on bd_anomalias by access WHENEVER successful;
audit INSERT on bd_clientes by access WHENEVER successful;
audit INSERT on bd_veiculos by access WHENEVER successful;
audit INSERT on bd_mecanicos by access WHENEVER successful;
audit INSERT on bd_repacacoes_tipos by access WHENEVER successful;
audit INSERT on bd_ocorrencias by access WHENEVER successful;
audit INSERT on bd_ocorrencias_estados by access WHENEVER successful;
audit INSERT on bd__reparacoes_ocorrencias by access WHENEVER successful;

audit UPDATE on bd_abastecimentos by access WHENEVER successful;
audit UPDATE on bd_anomalias by access WHENEVER successful;
audit UPDATE on bd_clientes by access WHENEVER successful;
audit UPDATE on bd_veiculos by access WHENEVER successful;
audit UPDATE on bd_mecanicos by access WHENEVER successful;
audit UPDATE on bd_repacacoes_tipos by access WHENEVER successful;
audit UPDATE on bd_ocorrencias by access WHENEVER successful;
audit UPDATE on bd_ocorrencias_estados by access WHENEVER successful;
audit UPDATE on bd__reparacoes_ocorrencias by access WHENEVER successful;

audit DELETE on bd_abastecimentos by access WHENEVER successful;
audit DELETE on bd_anomalias by access WHENEVER successful;
audit DELETE on bd_clientes by access WHENEVER successful;
audit DELETE on bd_veiculos by access WHENEVER successful;
audit DELETE on bd_mecanicos by access WHENEVER successful;
audit DELETE on bd_repacacoes_tipos by access WHENEVER successful;
audit DELETE on bd_ocorrencias by access WHENEVER successful;
audit DELETE on bd_ocorrencias_estados by access WHENEVER successful;
audit DELETE on bd__reparacoes_ocorrencias by access WHENEVER successful;
