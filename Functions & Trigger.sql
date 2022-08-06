-- FUNCTIONS -- 


-- Apresentar média de preço dos Jogos por gênero:

CREATE FUNCTION Preco_Medio (@p_genero VARCHAR(30))
RETURNS DECIMAL (6,2)
AS 
BEGIN
	DECLARE @v_media DECIMAL(6,2)

	SELECT @v_media = AVG(Valor)
	FROM Loja
	WHERE Nome_Genero = @p_genero

	RETURN @v_media
END

SELECT dbo.Preco_Medio('Desporto')

-- Valor investido em jogos por Player:

CREATE FUNCTION Valor_Total_Biblioteca(@p_username VARCHAR (20))
RETURNS DECIMAL (6,2)
AS
BEGIN
	DECLARE @v_total DECIMAL (6,2)

	SELECT @v_total = SUM(Valor) 
		FROM Loja 
		WHERE Nome_Jogo IN (SELECT Game FROM Biblioteca 
							WHERE Username = @p_username)
	RETURN @v_total
END

SELECT dbo. Valor_Total_Biblioteca ('rob.avelino')


-- Listar jogos em comum entre players que você escolher:

CREATE FUNCTION Common_Games (@p_username VARCHAR (20), @p_username2 VARCHAR (20))
RETURNS @Jogos_em_Comum TABLE (Username VARCHAR(20) NOT NULL, Friend VARCHAR(20) NOT NULL, Game VARCHAR(20))
AS
BEGIN
	DECLARE @games_common VARCHAR(20);
	SET @games_common = (SELECT Game
						FROM Biblioteca
						WHERE  Username IN (@p_username,@p_username2)
						GROUP BY Game
						HAVING COUNT(distinct Username) = 2)

	INSERT INTO @Jogos_em_Comum
	VALUES (@p_username, @p_username2, @games_common)
RETURN
END

SELECT * FROM dbo.Common_Games('lugan.thierry','rob.avelino')


-- TRIGGERS --

-- Adicionar gênero e distribuidoras novas, quando o usuário for adicionar um jogo

CREATE TRIGGER AdicionarNovoGeneroNovaDistribuidora
ON Loja
INSTEAD OF INSERT
AS 
BEGIN
	DECLARE @comando VARCHAR(20)
	SET @comando = CASE

		WHEN (SELECT Nome_Jogo FROM Inserted) NOT IN (SELECT Nome_Jogo FROM Loja)
			THEN 'NovoJogo'

		ELSE NULL

	END

	IF @comando = 'NovoJogo'

		BEGIN
			INSERT INTO Distribuidora (Nome_Distribuidora) 
			SELECT i.Nome_Distribuidora
			FROM inserted AS i
			WHERE i.Nome_Distribuidora NOT IN (SELECT Nome_Distribuidora FROM Distribuidora)
		END
		
		BEGIN
			INSERT INTO Genero (Nome_Genero) 
			SELECT i.Nome_Genero
			FROM inserted AS i
			WHERE i.Nome_Genero NOT IN (SELECT Nome_Genero FROM Genero)
		END

		BEGIN
			INSERT INTO Loja
			SELECT i.Nome_Jogo, i.Valor, i.Nome_Genero, i.Nome_Distribuidora
			FROM inserted AS i
		END

END






