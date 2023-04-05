USE [bdAtacado]
GO

CREATE TABLE [dbo].[Subcategoria](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCategoria] [int] NOT NULL,
	[Descricao] [varchar](max) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[DataInclusao] [datetime] NULL,
	CONSTRAINT [PK_Subcategoria] PRIMARY KEY ([Codigo] ASC)
)
GO

ALTER TABLE [dbo].[Subcategoria] ADD  DEFAULT (getdate()) FOR [DataInclusao]
GO

ALTER TABLE [dbo].[Subcategoria]  WITH CHECK ADD  CONSTRAINT [FK_Subcategoria_Categoria] FOREIGN KEY([CodigoCategoria])
REFERENCES [dbo].[Categoria] ([Codigo])
GO

ALTER TABLE [dbo].[Subcategoria] CHECK CONSTRAINT [FK_Subcategoria_Categoria]
GO
