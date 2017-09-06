/* Item 16 
   Fazer um select unindo o Cliente com Nota Fiscal
   através de um Full Join */
SELECT * FROM Cliente
FULL JOIN Nota_Fiscal ON Cliente.Cd_Cliente = Nota_Fiscal.Cd_Cliente
ORDER BY Cliente.Cd_Cliente