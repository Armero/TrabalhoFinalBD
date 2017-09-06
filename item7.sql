--REVERT;
--GO
--CREATE ROLE UsuarioComum;
--GO
--CREATE USER UsuarioDeTeste WITHOUT LOGIN;
--GO
EXEC sp_addrolemember @rolename = 'UsuarioComum', @membername = 'UsuarioDeTeste';
GO
DENY DELETE ON OBJECT::dbo.Pessoa_Física TO UsuarioComum;
GO
EXECUTE AS USER = 'UsuarioDeTeste';
GO
DELETE  dbo.Pessoa_Física;