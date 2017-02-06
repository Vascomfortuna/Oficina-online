CREATE role role_clientes;
grant CREATE,SELECT,DELETE on BD_OCORRENCIAS to role_clientes;
grant SELECT on BD_OCORRENCIAS_ESTADOS to role_clientes;
grant CREATE,SELECT,ALTER,DELETE on BD_REPARACOES_OCORRENCIAS to role_clientes;
grant SELECT on BD_REPARACOES_TIPOS to role_clientes;
grant CREATE,SELECT,DELETE on BD_VEICULOS to role_clientes;
grant SELECT,ALTER on BD_CLIENTES to role_clientes;
grant SELECT,ALTER on BD_MECANICOS to role_clientes;
grant CREATE,SELECT,ALTER,DELETE on BD_ANOMALIAS to role_clientes;
grant CREATE,SELECT,ALTER,DELETE on BD_ABASTECIMENTOS to role_clientes;

CREATE role role_mecanicos;
grant CREATE,SELECT,ALTER,DELETE on BD_OCORRENCIAS to role_mecanicos;
grant SELECT on BD_OCORRENCIAS_ESTADOS to role_mecanicos;
grant CREATE,SELECT,ALTER,DELETE on BD_REPARACOES_OCORRENCIAS to role_mecanicos;
grant CREATE,SELECT,ALTER,DELETE on BD_REPARACOES_TIPOS to role_mecanicos
grant CREATE,SELECT,DELETE on BD_VEICULOS to role_mecanicos;
grant SELECT,ALTER on BD_CLIENTES to role_mecanicos;
grant SELECT,ALTER on BD_MECANICOS to role_mecanicos;
grant CREATE,SELECT,ALTER,DELETE on BD_ANOMALIAS to role_mecanicos;
grant CREATE,SELECT,ALTER,DELETE on BD_ABASTECIMENTOS to role_mecanicos;

CREATE role role_admin;
grant all on BD_OCORRENCIAS to role_admin;
grant all on BD_OCORRENCIAS_ESTADOS to role_admin;
grant all on BD_REPARACOES_OCORRENCIAS to role_admin;
grant all on BD_REPARACOES_TIPOS to role_admin
grant all on BD_VEICULOS to role_admin;
grant all on BD_CLIENTES to role_admin;
grant all on BD_MECANICOS to role_admin;
grant all on BD_ANOMALIAS to role_admin;
grant all on BD_ABASTECIMENTOS to role_admin;