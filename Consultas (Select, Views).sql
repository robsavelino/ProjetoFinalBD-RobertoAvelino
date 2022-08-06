
DROP VIEW dbo.Jogos_Comum

-- View contendo Usuários com Jogos de valor acima de R$ 100,00:

CREATE VIEW Usuario_com_Jogos_Acima_de_100_Reais AS
(
SELECT DISTINCT Username FROM Biblioteca b
INNER JOIN Loja l ON b.Game = l.Nome_Jogo
WHERE l.Valor > 100
);

-- Criando view do valor total do dinheiro do usuário

CREATE VIEW Valor_Total 
AS 
SELECT SUM(Carteira) AS Valortotal
FROM Usuario 

SELECT * from Valor_Total

-- SELECTS Gerais das Tables para consulta:

SELECT * FROM Amigos
SELECT * FROM Loja
SELECT * FROM Biblioteca
SELECT * FROM Genero
SELECT * FROM Usuario
SELECT * FROM Distribuidora





