-- INSERTS --

-- Inserts na tabela gênero:

INSERT INTO Genero 
VALUES ('Ação'); 
INSERT INTO Genero 
VALUES ('Aventura'); 
INSERT INTO Genero 
VALUES ('Casual'); 
INSERT INTO Genero 
VALUES ('Corridas'); 
INSERT INTO Genero 
VALUES ('Desporto'); 
INSERT INTO Genero 
VALUES ('Estratégia'); 
INSERT INTO Genero 
VALUES ('Indie'); 
INSERT INTO Genero 
VALUES ('RPG'); 
INSERT INTO Genero 
VALUES ('Simulação'); 
INSERT INTO Genero 
VALUES ('Sobrevivência');

-- Inserts na tabela Usuário:

INSERT INTO Usuario
VALUES ('lugan.thierry', 'Wolve', 500.00);
INSERT INTO Usuario
VALUES ('rob.avelino', 'Betinho Delas', 1000.50);
INSERT INTO Usuario
VALUES ('matheus.alencastro', 'Matte', 950.45);
INSERT INTO Usuario
VALUES ('neymar.jr', 'Menino do Hexa', 9999.99);
INSERT INTO Usuario
VALUES ('gabriel.jesus', 'Homem Biscoito', 100.00);
INSERT INTO Usuario
VALUES ('carlos.henrique', 'Casemiro', 50.20);
INSERT INTO Usuario
VALUES ('tiago.leifert', 'Ex-BBB', 360.30);
INSERT INTO Usuario
VALUES ('miraildes.mota', 'Formiga', 850.80);
INSERT INTO Usuario
VALUES ('larissa.machado', 'Anitta', 5200.00);
INSERT INTO Usuario
VALUES ('joao.pedro', 'Pedroca', 82.75);
INSERT INTO Usuario
VALUES ('ana.sofia', 'Aninha', 150.00);
INSERT INTO Usuario
VALUES ('maria.lurdes', 'Lurda', 489.40);
INSERT INTO Usuario
VALUES ('beatriz.silva', 'Bia', 640.20);
INSERT INTO Usuario
VALUES ('jose.santos', 'Zezé', 300.00);
INSERT INTO Usuario
VALUES ('rafaela.vilasboas', 'Rafa', 3500.00);

-- Insert na tabela Distribuidora

INSERT INTO Distribuidora
VALUES ('Rockstar'); 
INSERT INTO Distribuidora
VALUES ('Isomniac Games'); 
INSERT INTO Distribuidora
VALUES ('BlueTwelve Studio'); 
INSERT INTO Distribuidora
VALUES ('Shiro Games'); 
INSERT INTO Distribuidora
VALUES ('Bandai Namco'); 
INSERT INTO Distribuidora
VALUES ('Bohemia Interactive'); 
INSERT INTO Distribuidora
VALUES ('Eletronic Arts'); 
INSERT INTO Distribuidora
VALUES ('SCS Software'); 
INSERT INTO Distribuidora
VALUES ('Endnight Games Ltd'); 
INSERT INTO Distribuidora
VALUES ('Innersloth'); 
INSERT INTO Distribuidora
VALUES ('Ninja Kiwi'); 
INSERT INTO Distribuidora
VALUES ('Nicalis Inc'); 
INSERT INTO Distribuidora
VALUES ('Supergiant Games'); 
INSERT INTO Distribuidora
VALUES ('Playstation Pc LLC'); 
INSERT INTO Distribuidora
VALUES ('Kunos Simulazioni'); 
INSERT INTO Distribuidora
VALUES ('Valve'); 
INSERT INTO Distribuidora
VALUES ('Warner Bros.Games'); 

-- Inserts na tabela Loja

INSERT INTO Loja 
VALUES ('GTA V', 88.89,	'RPG', 'Rockstar');
INSERT INTO Loja 
VALUES ('Spider Man Remastered', 249.90, 'Ação', 'Isomniac Games');
INSERT INTO Loja 
VALUES ('Stray', 63.79,	'Aventura',	'BlueTwelve Studio');
INSERT INTO Loja 
VALUES ('Northgard', 57.99, 'Estratégia', 'Shiro Games');
INSERT INTO Loja 
VALUES ('Digimon Survive', 299.90, 'Estratégia', 'Bandai Namco');
INSERT INTO Loja 
VALUES ('Day Z', 119.99, 'Sobrevivência', 'Bohemia Interactive');
INSERT INTO Loja 
VALUES ('Fifa 23', 299.00, 'Desporto', 'Eletronic Arts');
INSERT INTO Loja 
VALUES ('Euro Truck Simulator 2', 49.99, 'Simulação', 'SCS Software');
INSERT INTO Loja 
VALUES ('The Forest', 37.99, 'Sobrevivência', 'Endnight Games Ltd');
INSERT INTO Loja 
VALUES ('Among Us', 10.89, 'Casual', 'Innersloth');
INSERT INTO Loja 
VALUES ('Bloons TD 6', 20.69, 'Casual', 'Ninja Kiwi');
INSERT INTO Loja 
VALUES ('F1 2022', 249.00, 'Corridas', 'Eletronic Arts');
INSERT INTO Loja 
VALUES ('The Binding of Isaac Rebirth', 27.99, 'Indie', 'Nicalis Inc');
INSERT INTO Loja 
VALUES ('Hades', 47.99, 'Indie', 'Supergiant Games');
INSERT INTO Loja 
VALUES ('God of War', 199.90, 'Ação', 'Playstation Pc LLC');
INSERT INTO Loja 
VALUES ('It Takes Two', 199.00, 'Aventura', 'Eletronic Arts');
INSERT INTO Loja 
VALUES ('Asseto Corsa', 37.99,	'Corridas', 'Kunos Simulazioni');
INSERT INTO Loja 
VALUES ('Garrys Mode', 25.99, 'Ação', 'Valve');
INSERT INTO Loja 
VALUES ('Counter Strike Global Offensive', 71.99, 'Ação', 'Valve');
INSERT INTO Loja 
VALUES ('Mortal Kombat 11', 159.99, 'Desporto', 'Warner Bros.Games');

-- Inserts na tabela Amigos

INSERT INTO Amigos 
VALUES 
	('lugan.thierry', 'matheus.alencastro'),
	('lugan.thierry', 'rob.avelino'),
	('lugan.thierry', 'neymar.jr'),
	('lugan.thierry', 'larissa.machado'),
	('lugan.thierry', 'carlos.henrique'),
	('lugan.thierry', 'maria.lurdes'),
	('rob.avelino', 'matheus.alencastro'),
	('rob.avelino', 'lugan.thierry'),
	('rob.avelino', 'neymar.jr'),
	('rob.avelino', 'carlos.henrique'),
	('rob.avelino', 'gabriel.jesus'),
	('rob.avelino', 'joao.pedro'),
	('matheus.alencastro', 'lugan.thierry'),
	('matheus.alencastro', 'rob.avelino'),
	('matheus.alencastro', 'neymar.jr'),
	('matheus.alencastro', 'gabriel.jesus'),
	('matheus.alencastro', 'carlos.henrique'),
	('matheus.alencastro', 'miraildes.mota'),
	('joao.pedro', 'carlos.henrique'),
	('joao.pedro', 'neymar.jr'),	
	('maria.lurdes', 'carlos.henrique'),
	('maria.lurdes', 'neymar.jr'),
	('jose.santos', 'carlos.henrique'),
	('jose.santos', 'neymar.jr'),
	('carlos.henrique', 'neymar.jr'),
	('carlos.henrique', 'gabriel.jesus'),
	('carlos.henrique', 'rob.avelino'),
	('carlos.henrique', 'lugan.thierry'),
	('carlos.henrique', 'matheus.alencastro'),
	('neymar.jr', 'larissa.machado'),
	('neymar.jr', 'carlos.henrique'),
	('neymar.jr', 'gabriel.jesus'),
	('neymar.jr', 'miraildes.mota');

-- Inserts na tabela Biblioteca

INSERT INTO Biblioteca
VALUES
	('lugan.thierry',	'GTA V'),
	('lugan.thierry',	'God of War'),
	('lugan.thierry',	'Mortal Kombat 11'),
	('rob.avelino',	'GTA V'),
	('rob.avelino',	'Stray'),
	('rob.avelino',	'Counter Strike Global Offensive'),
	('rob.avelino',	'Bloons TD 6'),
	('rob.avelino',	'Day Z'),
	('rob.avelino',	'The Forest'),
	('matheus.alencastro',	'Counter Strike Global Offensive'),
	('matheus.alencastro',	'F1 2022'),
	('matheus.alencastro',	'Fifa 23'),
	('matheus.alencastro',	'GTA V'),
	('neymar.jr',	'Counter Strike Global Offensive'),
	('neymar.jr',	'Mortal Kombat 11'),
	('neymar.jr',	'Fifa 23'),
	('neymar.jr',	'Asseto Corsa'),
	('gabriel.jesus',	'Fifa 23'),
	('gabriel.jesus',	'Mortal Kombat 11'),
	('gabriel.jesus',	'Spider Man Remastered'),
	('carlos.henrique',	'GTA V'),
	('carlos.henrique', 'Euro Truck Simulator 2'),
	('carlos.henrique',	'God of War'),
	('carlos.henrique',	'Garrys Mode'),
	('carlos.henrique',	'Digimon Survive'),
	('tiago.leifert',	'Fifa 23'),
	('tiago.leifert',	'F1 2022'),
	('miraildes.mota',	'Fifa 23'),
	('miraildes.mota',	'Stray'),
	('larissa.machado',	'Among Us'),
	('joao.pedro',	'It Takes Two'),
	('ana.sofia',	'Asseto Corsa'),
	('maria.lurdes',	'Garrys Mode'),
	('beatriz.silva',	'Counter Strike Global Offensive'),
	('jose.santos',	'Mortal Kombat 11'),
	('rafaela.vilasboas',	'Digimon Survive');
