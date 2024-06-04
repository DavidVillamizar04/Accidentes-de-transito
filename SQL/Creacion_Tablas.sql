CREATE DATABASE Accidentes_transito;

USE Accidentes_transito;

CREATE TABLE hechos_homicidios (
	ID_hecho VARCHAR (50) NOT NULL,
	N_VICTIMAS INT,
    FECHA DATE,
    HH INT,
    CRUCE VARCHAR (50),
    COMUNA INT,
    LONGITUD VARCHAR (50),
    LATITUD VARCHAR (50),
    VICTIMA VARCHAR (50),
    ACUSADO VARCHAR (50),
    
    PRIMARY KEY (ID_hecho)
);

SELECT * FROM hechos_homicidios;

CREATE TABLE hechos_victimas (
	ID INT NOT NULL AUTO_INCREMENT,
	ID_hecho VARCHAR (50) NOT NULL,
    FECHA DATE,
    ROL VARCHAR (50),
    VICTIMA VARCHAR (50),
    SEXO VARCHAR (50),
    EDAD VARCHAR (50),
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_hecho) REFERENCES hechos_homicidios(ID_hecho)
);

SELECT * FROM hechos_victimas;
