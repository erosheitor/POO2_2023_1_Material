USE [bdAtacado]
GO

CREATE TABLE [dbo].[Produto](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoSubcategoria] [int] NOT NULL,
	[Descricao] [varchar](max) NOT NULL,
	[Valor] [decimal](7, 2) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[DataInclusao] [datetime] NULL,
	CONSTRAINT [PK_Produto] PRIMARY KEY ([Codigo] ASC)
)
GO

ALTER TABLE [dbo].[Produto] ADD  DEFAULT (getdate()) FOR [DataInclusao]
GO

ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Subcategoria] FOREIGN KEY([CodigoSubcategoria])
REFERENCES [dbo].[Subcategoria] ([Codigo])
GO

ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Subcategoria]
GO
