-- ALTERA��ES EM DADOS EXISTENTES -- 

-- Alterar o Nome_Exibi��o de um usu�rio existente:

UPDATE Usuario
SET Nome_Exibi��o = 'Matte abk'
WHERE Username = 'matheus.alencastro';

-- Alterando a propriedade da coluna Carteira na Table Usu�rio

ALTER TABLE Usuario 
ADD Carteira DECIMAL(6,2) NOT NULL; 

-- Alterando valor de saldo em Carteira do Usu�rio:

UPDATE Usuario
SET Carteira = 1100.15
WHERE Username = 'matheus.alencastro'

--DELETAR RELA��O DE AMIZADE ENTRE USU�RIOS

DELETE FROM Amigos
WHERE Username = 'matheus.alencastro' AND Friend = 'carlos.henrique'
