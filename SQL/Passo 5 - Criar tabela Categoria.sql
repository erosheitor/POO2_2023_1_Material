USE [bdAtacado]
GO

CREATE TABLE [dbo].[Categoria](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](max) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[DataInclusao] [datetime] NULL,
	CONSTRAINT [PK_Categoria] PRIMARY KEY ([Codigo] ASC)
)
GO

ALTER TABLE [dbo].[Categoria] ADD  DEFAULT (getdate()) FOR [DataInclusao]
GO
