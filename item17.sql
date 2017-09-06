ALTER TABLE Produto
ADD CONSTRAINT LIMITADOR_PRECOS
CHECK (Vl_Produto_Sem_Imposto < 1000)

INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto ) 
VALUES(6, 'Impressora Laser colorida', 0, 0 ,0, 10, 8, 100, 1200.00);

INSERT INTO Produto (Cd_Produto, Nm_Produto, Vl_ICMS, Vl_Seguro, Vl_Frete, Vl_Peso_Bruto, Vl_Peso_Liquido, Qt_Estoque, Vl_Produto_Sem_Imposto )  
VALUES(7, 'Compasso', 0, 0 ,0, 0.70, 0.50, 50, 2.00);

SELECT * FROM Produto;
DROP TABLE Produto;