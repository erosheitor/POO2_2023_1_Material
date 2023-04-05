USE bdAtacado
GO

SET IDENTITY_INSERT categoria ON

INSERT INTO Categoria (Codigo, Descricao, Ativo) VALUES
(1, 'Alimento Infantil',0),
(2, 'Suplementos',0),
(3, 'Bebidas',0),
(4, 'Biscoitos, Bolos e Bolachas',0),
(5, 'Carnes',0),
(6, 'Congelados',0),
(7, 'Conservas',0),
(8, 'Doces, Balas, Chocolates e Cia',0),
(9, 'Farinhas, Cereais e Complementos',0),
(10,'Fast-Food, Aperitivos e Petiscos',0),
(11,'Frios e Embutidos',0),
(12,'Frutas',0),
(13,'Legumes, Verduras e Grãos',0),
(14,'Massas',0),
(15,'Molhos, Caldos e Condimentos',0),
(16,'Ovos, Leite, Queijo e Cia',0),
(17,'Pães',0),
(18,'Sopas & Cremes',0),
(19,'Diversos',0)

SET IDENTITY_INSERT categoria OFF
GO
