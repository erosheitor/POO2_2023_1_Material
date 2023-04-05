SET IDENTITY_INSERT Estado ON
GO

INSERT INTO Estado(CodigoEstado, Nome, UF, CodigoRegiao) VALUES
(1, 'RONDÔNIA', 'RO', 3),
(2, 'ACRE', 'AC', 3),
(3, 'AMAZONAS', 'AM', 3),
(4, 'RORAIMA', 'RR', 3),
(5, 'PARÁ', 'PA', 3),
(6, 'AMAPÁ', 'AP', 3),
(7, 'TOCANTINS', 'TO', 3),
(8, 'MARANHÃO', 'MA', 5),
(9, 'PIAUÍ', 'PI', 5),
(10, 'CEARÁ', 'CE', 5),
(11, 'RIO GRANDE DO NORTE', 'RN', 5),
(12, 'PARAÍBA', 'PB', 5),
(13, 'PERNAMBUCO', 'PE', 5),
(14, 'ALAGOAS', 'AL', 5),
(15, 'SERGIPE', 'SE', 5),
(16, 'BAHIA', 'BA', 5),
(17, 'MINAS GERAIS', 'MG', 2),
(18, 'ESPÍRITO SANTOS', 'ES', 2),
(19, 'RIO DE JANEIRO', 'RJ', 2),
(20, 'SÃO PAULO', 'SP', 2),
(21, 'PARANÁ', 'PR', 1),
(22, 'SANTA CATARINA', 'SC', 1),
(23, 'RIO GRANDE DO SUL', 'RS', 1),
(24, 'MATO GROSSO DO SUL', 'MS', 4),
(25, 'MATO GROSSO', 'MT', 4),
(26, 'GOIÁS', 'GO', 4),
(27, 'DISTRITO FEDERAL', 'DF', 4)
GO

SET IDENTITY_INSERT Estado OFF
GO