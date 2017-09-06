/*Descomentar se as VIEWs já existirem*/
DROP VIEW DUPLICATAS_VENCIDAS_PF;
DROP VIEW DUPLICATAS_VENCIDAS_PJ;

GO
/*´Só mostram duplicatas que não foram pagas*/

/*View de duplicatas vencidas de pessoas físicas*/
CREATE VIEW DUPLICATAS_VENCIDAS_PF
AS
SELECT Nm_Nome, Nm_Sobrenome
From Pessoa_Física
INNER JOIN Cliente
ON Pessoa_Física.Cd_Pessoa_Física = Cliente.Cd_Cliente
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

/*View de duplicatas vencidas de pessoas jurídicas*/
CREATE VIEW DUPLICATAS_VENCIDAS_PJ
AS
SELECT Nm_Razão_Social 
From Pessoa_Jurídica
INNER JOIN Cliente
ON Pessoa_Jurídica.Cd_Pessoa_Jurídica = Cliente.Cd_Cliente
INNER JOIN Nota_Fiscal
ON Cliente.Cd_Cliente = Nota_Fiscal.Cd_Cliente
INNER JOIN Duplicata
ON Nota_Fiscal.Cd_Nota_Fiscal = Duplicata.Cd_Nota_Fiscal
INNER JOIN Pagamento 
ON Duplicata.Cd_Duplicata <> Pagamento.Cd_Duplicata
WHERE CAST (Dt_Vencimento_Parcial AS DATE) < CAST (GETDATE() AS DATE)
AND Vl_Pagamento IS NOT NULL
GROUP BY Nm_Razão_Social;

GO

SELECT * FROM DUPLICATAS_VENCIDAS_PF;
SELECT * FROM DUPLICATAS_VENCIDAS_PJ;