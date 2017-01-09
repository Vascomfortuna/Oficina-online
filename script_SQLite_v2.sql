-- v.1 (15.12.2016)

CREATE TABLE abastecimentos (
    IdAbastecimento INTEGER CONSTRAINT pk_IdAbastecimento PRIMARY KEY, 
    Km INTEGER NOT NULL, 
    Litros INTEGER NOT NULL ,
    IdVeiculo INTEGER NOT NULL ,
    Data TEXT NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE "bd_anomalias" (
    IdAnomalia INTEGER CONSTRAINT pk_IdAnomalia PRIMARY KEY, 
    Anomalia TEXT NOT NULL, 
    Description TEXT ,
    IdVeiculo INTEGER NOT NULL ,
    IdMecanico INTEGER NOT NULL,
    Sync INTEGER NOT NULL DEFAULT 0
)