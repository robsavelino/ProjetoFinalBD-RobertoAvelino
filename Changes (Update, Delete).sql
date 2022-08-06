-- ALTERAÇÕES EM DADOS EXISTENTES -- 

-- Alterar o Nome_Exibição de um usuário existente:

UPDATE Usuario
SET Nome_Exibição = 'Matte abk'
WHERE Username = 'matheus.alencastro';

-- Alterando a propriedade da coluna Carteira na Table Usuário

ALTER TABLE Usuario 
ADD Carteira DECIMAL(6,2) NOT NULL; 

-- Alterando valor de saldo em Carteira do Usuário:

UPDATE Usuario
SET Carteira = 1100.15
WHERE Username = 'matheus.alencastro'

--DELETAR RELAÇÃO DE AMIZADE ENTRE USUÁRIOS

DELETE FROM Amigos
WHERE Username = 'matheus.alencastro' AND Friend = 'carlos.henrique'
