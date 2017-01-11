-- v.3.0 (11.01.2017)

DROP TABLE IF EXISTS "bd_anomalias";
CREATE TABLE "bd_abastecimentos" (
    IdAbastecimento INTEGER CONSTRAINT pk_IdAbastecimento PRIMARY KEY, 
    Km INTEGER NOT NULL, 
    Litros INTEGER NOT NULL ,
    IdVeiculo INTEGER NOT NULL ,
    Data TEXT NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "bd_anomalias";
CREATE TABLE "bd_anomalias" (
    IdAnomalia INTEGER CONSTRAINT pk_IdAnomalia PRIMARY KEY, 
    Anomalia TEXT NOT NULL, 
    Description TEXT ,
    IdVeiculo INTEGER NOT NULL ,
    IdMecanico INTEGER NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0
)

DROP TABLE IF EXISTS "bd_clientes";
CREATE TABLE "bd_clientes" (
    IdCliente INTEGER CONSTRAINT pk_IdCliente PRIMARY KEY, 
    PrimeiroNome TEXT NOT NULL,    
    UltimoNome TEXT NOT NULL,
    Telemovel TEXT NOT NULL,
    Email TEXT NOT NULL,
    Password TEXT NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS "bd_mecanicos";
CREATE TABLE "bd_mecanicos" (
    IdMecanico INTEGER CONSTRAINT pk_IdMecanico PRIMARY KEY, 
    PrimeiroNome TEXT NOT NULL,    
    UltimoNome TEXT NOT NULL,
    Telemovel TEXT NOT NULL,
    Email TEXT NOT NULL,
    Versao INTEGER
);
