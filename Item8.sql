/*Variável que indica o número de produtos presentes no estoque*/
DECLARE @QuantidadeProdutosDistintos int;
SELECT @QuantidadeProdutosDistintos = COUNT (DISTINCT Cd_Produto)
FROM Produto;

/*Mostra todas as pessoas físicas que compraram TODOS os produtos da empresa*/
SELECT Pessoa_Física.Nm_Nome, Pessoa_Física.Nm_Sobrenome
FROM Pessoa_Física INNER JOIN Nota_Fiscal
ON Cd_Pessoa_Física = Cd_Cliente
INNER JOIN Item_NF
ON Nota_Fiscal.Cd_Nota_Fiscal = Item_NF.Cd_Nota_Fiscal
GROUP BY Pessoa_Física.Nm_Nome, Pessoa_Física.Nm_Sobrenome
HAVING COUNT (DISTINCT Item_NF.Cd_Produto) = @QuantidadeProdutosDistintos;

--UNION -- Sem Union, pois Razão Social não pode e Nome da Pessoa são campos diferentes
--e que não devem ser misturados

/*Mostra todas as pessoas jurídicas que compraram TODOS os produtos da empresa*/
SELECT Pessoa_Jurídica.Nm_Razão_Social
FROM Pessoa_Jurídica INNER JOIN Nota_Fiscal
ON Cd_Pessoa_Jurídica = Cd_Cliente
INNER JOIN Item_NF
ON Nota_Fiscal.Cd_Nota_Fiscal = Item_NF.Cd_Nota_Fiscal
WHERE Nota_Fiscal.Ds_Natureza_Operação = 'Venda'
GROUP BY Pessoa_Jurídica.Nm_Razão_Social
HAVING COUNT (DISTINCT Item_NF.Cd_Produto) = @QuantidadeProdutosDistintos;