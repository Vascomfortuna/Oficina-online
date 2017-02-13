-- SQLite | oficina.db v.4.2.2 (13.02.2017)
-- Campo desnormalizado, Media_Combustivel -> bd_abastecimentos.

DROP TABLE IF EXISTS "bd_abastecimentos";
CREATE TABLE "bd_abastecimentos" (
    _id INTEGER CONSTRAINT pk_IdAbastecimento PRIMARY KEY,
    DSVDKm INTEGER NOT NULL,
    Litros INTEGER NOT NULL ,
    IdVeiculo INTEGER NOT NULL ,
    Data TEXT NOT NULL,
    Media_Combustivel REAL NULL
    Sync INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "bd_anomalias";
CREATE TABLE "bd_anomalias" (
    _id INTEGER CONSTRAINT pk_IdAnomalia PRIMARY KEY,
    Anomalia TEXT NOT NULL,
    Description TEXT ,
    IdVeiculo INTEGER NOT NULL ,
    IdMecanico INTEGER NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0
)

DROP TABLE IF EXISTS "bd_clientes";
CREATE TABLE "bd_clientes" (
    _id INTEGER CONSTRAINT pk_IdCliente PRIMARY KEY,
    PrimeiroNome TEXT NOT NULL,
    UltimoNome TEXT NOT NULL,
    Telemovel TEXT NOT NULL,
    Email TEXT NOT NULL,
    Password TEXT NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0,
    Genero TEXT
);

DROP TABLE IF EXISTS "bd_veiculos";
CREATE TABLE "bd_veiculos" (
    _id INTEGER CONSTRAINT pk_IdVeiculo PRIMARY KEY,
    IdMarca INTEGER NOT NULL,
    IdModelo INTEGER NOT NULL,
    IdCliente INTEGER NOT NULL,
    Matricula TEXT NOT NULL,
    Marca TEXT NOT NULL,
    Modelo TEXT NOT NULL
);

DROP TABLE IF EXISTS "bd_mecanicos";
CREATE TABLE "bd_mecanicos" (
    _id INTEGER CONSTRAINT pk_IdMecanico PRIMARY KEY,
    PrimeiroNome TEXT NOT NULL,
    UltimoNome TEXT NOT NULL,
    Telemovel TEXT NOT NULL,
    Email TEXT NOT NULL,
    Versao INTEGER
);

DROP TABLE IF EXISTS "bd_reparacoes_tipos";
CREATE TABLE "bd_reparacoes_tipos" (
    _id INTEGER CONSTRAINT pk_IdReparacaoTipo PRIMARY KEY,
    Reparacao TEXT NOT NULL,
    Descricao TEXT NOT NULL,
    Versao INTEGER
);

DROP TABLE IF EXISTS "bd_ocorrencias";
CREATE TABLE "bd_ocorrencias" (
    _id INTEGER CONSTRAINT pk_IdOcorrecia PRIMARY KEY,
    DataMarcacao TEXT ,
    DataInicio TEXT ,
    DataEstadoAtual TEXT NOT NULL,
    KM INTEGER ,
    PrecoTotal TEXT ,
    ObsCliente TEXT,
    ClientesIdClientes INTEGER NOT NULL ,
    MecanicosIdMecanicos INTEGER ,
    VeículosIdVeiculo INTEGER NOT NULL,V
    OcorrenciasIdOcorrenciasEstado INTEGER NOT NULL
);

DROP TABLE IF EXISTS "bd_ocorrencias_estados";
CREATE TABLE "bd_ocorrencias_estados" (
    _id INTEGER CONSTRAINT pk_IdOcorrenciaEstado PRIMARY KEY,
    Estado TEXT NOT NULL
);

DROP TABLE IF EXISTS "bd_reparacoes_ocorrencias";
CREATE TABLE "bd_reparacoes_ocorrencias" (
    IdOcorrencias INTEGER CONSTRAINT pk_IdOcorrencias PRIMARY KEY,
    IdReparacaoTipo INTEGER NOT NULL ,
    Quantidade INTEGER NOT NULL ,
    PrecoUnitario TEXT NOT NULL
);
