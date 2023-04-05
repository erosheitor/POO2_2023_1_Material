CREATE TABLE Estado(
	CodigoEstado bigint IDENTITY(1,1) NOT NULL,
	Nome varchar(100) NOT NULL,
	UF char(2) NOT NULL,
	CodigoRegiao bigint NOT NULL
	CONSTRAINT PK_Estado PRIMARY KEY (CodigoEstado ASC),
	CONSTRAINT FK_Estado_Regiao FOREIGN KEY(CodigoRegiao) REFERENCES Regiao (CodigoRegiao)
)
GO