CREATE TRIGGER ATUALiZAR_DATA_PAGAMENTO
ON Pagamento
AFTER UPDATE
AS
BEGIN
	IF UPDATE (Vl_Pagamento)
	BEGIN
		UPDATE Pagamento
		SET Dt_Pagamento = CAST (GETDATE() AS DATE)
		FROM INSERTED i
		WHERE i.Dt_Pagamento = Pagamento.Dt_Pagamento
	END	
END

GO

/*EXEMPLO*/
UPDATE Pagamento
SET Vl_Pagamento = 30
WHERE Cd_Pagamento = 1;