/*Descomentar se as VIEWs j� existirem*/
DROP VIEW DUPLICATAS_VENCIDAS_PF;
DROP VIEW DUPLICATAS_VENCIDAS_PJ;

GO
/*�S� mostram duplicatas que n�o foram pagas*/

/*View de duplicatas vencidas de pessoas f�sicas*/
CREATE VIEW DUPLICATAS_VENCIDAS_PF
AS
SELECT Nm_Nome, Nm_Sobrenome
From Pessoa_F�sica
INNER JOIN Cliente
ON Pessoa_F�sica.Cd_Pessoa_F�sica = Cliente.Cd_Cliente
INNER JOIN Nota_Fiscal
ON Cliente.Cd_Cliente = Nota_Fiscal.Cd_Cliente
INNER JOIN Duplicata
ON Nota_Fiscal.Cd_Nota_Fiscal = Duplicata.Cd_Nota_Fiscal
INNER JOIN Pagamento
ON Duplicata.Cd_Duplicata <> Pagamento.Cd_Duplicata
WHERE CAST (Dt_Vencimento_Parcial AS DATE) < CAST (GETDATE() AS DATE)
AND Vl_Pagamento IS NOT NULL
GROUP BY Nm_Nome, Nm_Sobrenome;

GO

/*View de duplicatas vencidas de pessoas jur�dicas*/
CREATE VIEW DUPLICATAS_VENCIDAS_PJ
AS
SELECT Nm_Raz�o_Social 
From Pessoa_Jur�dica
INNER JOIN Cliente
ON Pessoa_Jur�dica.Cd_Pessoa_Jur�dica = Cliente.Cd_Cliente
INNER JOIN Nota_Fiscal
ON Cliente.Cd_Cliente = Nota_Fiscal.Cd_Cliente
INNER JOIN Duplicata
ON Nota_Fiscal.Cd_Nota_Fiscal = Duplicata.Cd_Nota_Fiscal
INNER JOIN Pagamento 
ON Duplicata.Cd_Duplicata <> Pagamento.Cd_Duplicata
WHERE CAST (Dt_Vencimento_Parcial AS DATE) < CAST (GETDATE() AS DATE)
AND Vl_Pagamento IS NOT NULL
GROUP BY Nm_Raz�o_Social;

GO

SELECT * FROM DUPLICATAS_VENCIDAS_PF;
SELECT * FROM DUPLICATAS_VENCIDAS_PJ;