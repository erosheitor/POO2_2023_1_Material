CREATE TABLE Regiao(
	CodigoRegiao bigint IDENTITY(1,1) NOT NULL,
	Nome varchar(100) NOT NULL,
	CONSTRAINT PK_Regiao PRIMARY KEY (CodigoRegiao ASC)
)
GO