/*Mostrando o valor inicial*/
SELECT Cd_Logradouro, Nm_Logradouro
FROM Logradouro
WHERE Cd_Logradouro = 1


/*Mostrando que a funcionalidade do ROLLBACK ao voltar ao valor anterior*/
BEGIN TRANSACTION
UPDATE Logradouro 
SET Nm_Logradouro = 'Avenida do Banco'
WHERE Cd_Logradouro = 1;

SELECT Cd_Logradouro, Nm_Logradouro
FROM Logradouro
WHERE Cd_Logradouro = 1
ROLLBACK TRANSACTION

SELECT Cd_Logradouro, Nm_Logradouro
FROM Logradouro
WHERE Cd_Logradouro = 1


/*Mostrando a funcionalidade do COMMIT ao modificar o valor da tabela*/
BEGIN TRANSACTION
UPDATE Logradouro 
SET Nm_Logradouro = 'Estrada do Banco'
WHERE Nm_Logradouro = 'Rua do Banco';

COMMIT TRANSACTION

SELECT Cd_Logradouro, Nm_Logradouro
FROM Logradouro
WHERE Cd_Logradouro = 1;


/*Reiniciando a tabela para o valor original*/
BEGIN TRANSACTION
UPDATE Logradouro 
SET Nm_Logradouro = 'Avenida do Banco'
WHERE Cd_Logradouro = 1;
COMMIT TRANSACTION