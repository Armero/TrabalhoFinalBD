
/*Descomentar caso já exista o procedimento e se deseje compilar novamente o mesmo*/
--DROP PROCEDURE MOSTRAR_PRODUTOS_MAIS_VENDIDOS;

--GO

CREATE PROCEDURE MOSTRAR_PRODUTOS_MAIS_VENDIDOS
AS
BEGIN
	SELECT TOP 3 Produto.Nm_Produto, COUNT(*) as Nu_Vendas
	FROM Produto INNER JOIN Item_NF
	ON Item_NF.Cd_Produto = Produto.Cd_Produto
	GROUP BY Produto.Nm_Produto
	ORDER BY Nu_Vendas DESC;
END

GO

EXECUTE MOSTRAR_PRODUTOS_MAIS_VENDIDOS;