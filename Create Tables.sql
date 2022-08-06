-- CREATES DE TABELA --

-- CREATE Table Genero:

CREATE TABLE Genero
(
id_Genero INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nome_Genero VARCHAR(30) UNIQUE NOT NULL,
);

-- CREATE Table Distribuidora:

CREATE TABLE Distribuidora
(
id_Distribuidora INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nome_Distribuidora VARCHAR (100) UNIQUE NOT NULL
);

-- CREATE Table Loja:

CREATE TABLE Loja
(
id_Jogo INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nome_Jogo VARCHAR(40) UNIQUE NOT NULL,
Valor DECIMAL NOT NULL,
Nome_Genero VARCHAR(30) FOREIGN KEY REFERENCES Genero(Nome_Genero),
Nome_Distribuidora VARCHAR (100) FOREIGN KEY REFERENCES Distribuidora(Nome_Distribuidora)
);

-- CREATE Table Usuário:

CREATE TABLE Usuario
(
id_Usuario INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Username VARCHAR(20) UNIQUE NOT NULL,
Nome_Exibição VARCHAR(20) NOT NULL,
Carteira DECIMAL NOT NULL
);

-- CREATE Table Biblioteca:

CREATE TABLE Biblioteca
(
	Username VARCHAR(20) FOREIGN KEY REFERENCES Usuario(Username),
	Game VARCHAR (40) FOREIGN KEY REFERENCES Loja(Nome_Jogo),
);

-- CREATE Table Amigos:

CREATE TABLE Amigos
(
Username VARCHAR(20) FOREIGN KEY REFERENCES Usuario(Username) NOT NULL,
Friend VARCHAR(20) FOREIGN KEY REFERENCES Usuario(Username) NOT NULL
);