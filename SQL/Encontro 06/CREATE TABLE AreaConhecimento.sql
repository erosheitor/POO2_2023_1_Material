CREATE TABLE AreaConhecimento(
	CodigoArea int IDENTITY(1,1) NOT NULL,
	Descricao varchar(max) NULL,
	Situacao bit NULL,
	DataInclusao datetime NULL DEFAULT (GETDATE()),
	CONSTRAINT PK_AreaConhecimento PRIMARY KEY (CodigoArea ASC)
)
GO
