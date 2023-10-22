-- Crear una nueva base de datos
CREATE DATABASE sistema_geograficovolcan2;

-- Usar la base de datos
USE sistema_geografico;

-- Tabla para representar los países
CREATE TABLE Pais (
    PaisID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    ExtensionTerritorial DECIMAL(10, 2),
    Poblacion INT,
    LenguaOficial VARCHAR(50)
);

-- Tabla para representar los ríos
CREATE TABLE Rio (
    RioID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Extension DECIMAL(10, 2),
    Caudal DECIMAL(10, 2),
    PaisID INT,
    FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

-- Tabla para representar los volcanes
CREATE TABLE Volcan (
    VolcanID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Altura DECIMAL(10, 2),
    UltimaErupcion DATE,
    PaisID INT,
    FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

-- Tabla para representar las islas
CREATE TABLE Isla (
    IslaID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Extension DECIMAL(10, 2),
    PaisID INT,
    FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

-- Tabla para representar los lagos y mares
CREATE TABLE LagoMar (
    LagoMarID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo ENUM('Agua salada', 'Agua dulce'),
    Extension DECIMAL(10, 2),
    PaisID INT,
    FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

-- Tabla para representar las penínsulas
CREATE TABLE Peninsula (
    PeninsulaID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    PaisID INT,
    FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);
CREATE TABLE isla2 (
id_isla int primary key,
nombre nvarchar(100),
pais nvarchar(100),
oceano nvarchar(100)
);

CREATE TABLE lagos2 (
id_lagos int primary key,
nombre nvarchar(100), 
pais nvarchar(100)
);

CREATE TABLE paises2 (
id_paises int primary key,
nombre nvarchar(100),
idioma nvarchar(100),
poblacion int 
);

CREATE TABLE peninsulas2 (
id_peninsulas int primary key,
nombre nvarchar(100),
extencion int,
pais nvarchar(100)
);

CREATE TABLE rios2 (
id_rios int primary key,
nombre nvarchar(100),
pais nvarchar(100),
longitud int
);

CREATE TABLE valles2 (
id_valles int primary key,
nombre nvarchar(100),
pais nvarchar(100),
extension int
);

CREATE TABLE volcan2 (
id_valcan int primary key,
nombre nvarchar(100),
altura int,
pais nvarchar(100)
);


