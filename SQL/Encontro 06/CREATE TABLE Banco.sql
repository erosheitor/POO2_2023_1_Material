CREATE TABLE Banco(
	CodigoBanco int IDENTITY(1,1) NOT NULL,
	CodigoBacen int NULL,
	Descricao varchar(max) NULL,
	SiteBanco varchar(max) NULL,
	Situacao bit NULL,
	DataInclusao datetime NULL DEFAULT (GETDATE()),
	CONSTRAINT PK_Banco PRIMARY KEY (CodigoBanco ASC)
)
GO