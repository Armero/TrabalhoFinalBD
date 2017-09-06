/*Cria o Cursor para os produtos Faturados*/
DECLARE ITENS_PRODUTOS_FATURADOS CURSOR FOR
	SELECT Nota_Fiscal.Cd_Nota_Fiscal, Produto.Nm_Produto, Item_NF.Qt_Produto, Duplicata.Dt_Vencimento_Parcial
	FROM Nota_Fiscal INNER JOIN Item_NF
	ON Nota_FIscal.Cd_Nota_Fiscal = Item_NF.Cd_Nota_Fiscal
	INNER JOIN Produto
	ON Item_NF.Cd_Produto = Produto.Cd_Produto
	INNER JOIN Duplicata
	ON Nota_Fiscal.Cd_Nota_Fiscal = Duplicata.Cd_Nota_Fiscal
	INNER JOIN Pagamento
	ON Duplicata.Cd_Duplicata = Pagamento.Cd_Duplicata
	WHERE CAST (Duplicata.Dt_Vencimento_Parcial AS DATE) < CAST (GETDATE() AS DATE)
	AND Pagamento.Dt_Pagamento IS NOT NULL 
	GROUP BY Nota_Fiscal.Cd_Nota_Fiscal, Item_NF.Qt_Produto, Produto.Nm_Produto, Duplicata.Dt_Vencimento_Parcial;

/*Variáveis que recebem os valores do cursor*/
DECLARE @NumeroNota int, @NomeProduto char(60), @QuantidadeProduto int, @DataProduto date;

/*Variáveis auxiliares*/
DECLARE @texto char(120), @anterior int;
 
/*Abre o cursor e obtem o primeiro item*/
OPEN ITENS_PRODUTOS_FATURADOS
FETCH ITENS_PRODUTOS_FATURADOS INTO @NumeroNota, @NomeProduto, @QuantidadeProduto, @DataProduto


/*Printa o valores enquanto houver nota fiscal*/
SELECT @anterior = 0
WHILE @@FETCH_STATUS = 0
BEGIN
	/*Printa o nome da nota fiscal somente uma vez*/
	IF @anterior <> @NumeroNota
	BEGIN
	    /*Insere quebra-linha caso não seja a primeira linha*/
		IF @anterior <> 0
		BEGIN
			SELECT @texto = CHAR(13)
			PRINT @texto
		END
		SELECT @texto = 'Nota Fiscal: ' + CAST(@NumeroNota AS CHAR)
		PRINT @texto
		SELECT @texto = 'QUANTIDADE                   PRODUTO FATURADO                                          DATA DA FATURA:'
		PRINT @texto
	END

	/*Mostra os produtos faturados em cada nos fiscal e as respectivas quantidades*/
	SELECT @anterior = @NumeroNota
	SELECT @texto = CAST(@QuantidadeProduto AS CHAR)+ @NomeProduto + CAST (@DataProduto AS CHAR)
	PRINT @texto
	FETCH ITENS_PRODUTOS_FATURADOS INTO @NumeroNota, @NomeProduto, @QuantidadeProduto, @DataProduto
END

/*Fecha e desaloca o cursor*/
CLOSE ITENS_PRODUTOS_FATURADOS
DEALLOCATE ITENS_PRODUTOS_FATURADOS