/*Vari�vel que indica o n�mero de produtos presentes no estoque*/
DECLARE @QuantidadeProdutosDistintos int;
SELECT @QuantidadeProdutosDistintos = COUNT (DISTINCT Cd_Produto)
FROM Produto;

/*Mostra todas as pessoas f�sicas que compraram TODOS os produtos da empresa*/
SELECT Pessoa_F�sica.Nm_Nome, Pessoa_F�sica.Nm_Sobrenome
FROM Pessoa_F�sica INNER JOIN Nota_Fiscal
ON Cd_Pessoa_F�sica = Cd_Cliente
INNER JOIN Item_NF
ON Nota_Fiscal.Cd_Nota_Fiscal = Item_NF.Cd_Nota_Fiscal
GROUP BY Pessoa_F�sica.Nm_Nome, Pessoa_F�sica.Nm_Sobrenome
HAVING COUNT (DISTINCT Item_NF.Cd_Produto) = @QuantidadeProdutosDistintos;

--UNION -- Sem Union, pois Raz�o Social n�o pode e Nome da Pessoa s�o campos diferentes
--e que n�o devem ser misturados

/*Mostra todas as pessoas jur�dicas que compraram TODOS os produtos da empresa*/
SELECT Pessoa_Jur�dica.Nm_Raz�o_Social
FROM Pessoa_Jur�dica INNER JOIN Nota_Fiscal
ON Cd_Pessoa_Jur�dica = Cd_Cliente
INNER JOIN Item_NF
ON Nota_Fiscal.Cd_Nota_Fiscal = Item_NF.Cd_Nota_Fiscal
WHERE Nota_Fiscal.Ds_Natureza_Opera��o = 'Venda'
GROUP BY Pessoa_Jur�dica.Nm_Raz�o_Social
HAVING COUNT (DISTINCT Item_NF.Cd_Produto) = @QuantidadeProdutosDistintos;