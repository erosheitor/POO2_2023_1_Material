CREATE TABLE Cidade(
	CodigoCidade bigint IDENTITY(1,1) NOT NULL,
	Nome varchar(100) NOT NULL,
	CodigoIBGE7 bigint NOT NULL,
	UF char(2) NOT NULL,
	CodigoEstado bigint NOT NULL,
	CONSTRAINT PK_Cidade PRIMARY KEY (CodigoCidade ASC),
	CONSTRAINT FK_Cidade_Estado FOREIGN KEY(CodigoEstado) REFERENCES Estado (CodigoEstado)
)
GO

