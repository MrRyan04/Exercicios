INSERT INTO clientes (cpf_cnpj, nome, email) VALUES
('04395182015', 'Carlos Silva', 'carlos.silva@gmail.com'),
('10438276000155', 'Construtora Alfa SA', 'contato@alfasa.com'),
('15632487097', 'Pedro Souza', 'pedro.souza@gmail.com'),
('28694537000103', 'Nova Impressao Grafica EIRELI', 'contato@novagraf.com'),
('28751096032', 'Ana Pereira', 'aninhaotaka125@gmail.com'),
('47960950000112', 'LogTech LTDA', 'contato@logtech.com'),
('51873924061', 'João Almeida', 'joao.almeida@hotmail.com'),
('70926835084', 'Fernanda Costa', 'fernanda.25042001@gmail.com'),
('91827364000180', 'Beta Eletronicos Comercio ME', 'contato@betaeletronicos.com'),
('93472158002', 'Maria Oliveira', 'mariaoliveira144@yahoo.com');

INSERT INTO motoristas (cpf, nome, cnh, telefone, email) VALUES
('70123456789', 'Rafael Lima', 'CNH000001', '11988880001', 'rafael@email.com'),
('70234567890', 'Marcelo Dias', 'CNH000002', '11988880002', 'marcelo@email.com'),
('70345678901', 'Juliana Souza', 'CNH000003', '11988880003', 'juliana@email.com'),
('70456789012', 'Paulo Henrique', 'CNH000004', '11988880004', 'paulo@email.com'),
('70567890123', 'Clara Mendes', 'CNH000005', '11988880005', 'clara@email.com'),
('70678901234', 'Andre Gomes', 'CNH000006', '11988880006', 'andre@email.com'),
('70789012345', 'Lucas Ferreira', 'CNH000007', '11988880007', 'lucas@email.com'),
('70890123456', 'Bianca Azevedo', 'CNH000008', '11988880008', 'bianca@email.com'),
('70901234567', 'Eduardo Silva', 'CNH000009', '11988880009', 'eduardo@email.com'),
('71012345678', 'Camila Rocha', 'CNH000010', '11988880010', 'camila@email.com');

INSERT INTO veiculos (placa, modelo, ano, cor) VALUES
('ABC1A23', 'Moto Honda CG 160', 2020, 'Preta'),
('BCD0J22', 'Caminhao Mercedes Accelo', 2019, 'Branco'),
('DEF2B34', 'Moto Yamaha YBR 150', 2019, 'Vermelha'),
('GHI3C45', 'Fiat Fiorino', 2021, 'Branca'),
('JKL4D56', 'Renault Kangoo', 2020, 'Branca'),
('MNO5E67', 'VW Saveiro', 2018, 'Prata'),
('PQR6F78', 'Chevrolet Montana', 2019, 'Preta'),
('STU7G89', 'Mercedes Sprinter Van', 2022, 'Branca'),
('VWX8H90', 'Iveco Daily Van', 2021, 'Cinza'),
('YZA9I11', 'Caminhao VW Delivery', 2020, 'Azul');

INSERT INTO encomendas (descricao, dimensao, peso) VALUES
('Coleção de livros de programação (Java e Python)', '35x25x20cm', 12.00),
('Placa-mãe ASUS, processador Intel i7 e 16GB RAM', '45x35x15cm', 8.50),
('Drone profissional DJI com câmera 4K', '50x50x25cm', 5.00),
('Mesa de escritório desmontada em MDF carvalho', '120x60x30cm', 25.00),
('Conjunto de chaves e ferramentas pneumáticas industriais', '80x60x40cm', 40.00),
('Fantasia infantil completa de pirata', '60x40x20cm', 3.00),
('Paquímetro digital Mitutoyo de alta precisão', '40x20x10cm', 1.50),
('Pneu aro 18 para SUV', '90x30x90cm', 30.00),
('Bisturi elétrico portátil para clínica veterinária', '60x40x30cm', 10.00),
('Máquina de solda portátil a arco com regulagem digital', '80x50x50cm', 35.00);

INSERT INTO endereco (rua, numero, bairro, cidade, logradouro, complemento, cpf_cnpj_cliente, cep) VALUES
('Rua das Flores', 100, 'Centro', 'Sao Paulo', 'Rua', 'Apto 12', '04395182015', '06512598'),
('Av. Paulista', 1500, 'Bela Vista', 'Sao Paulo', 'Avenida', 'Conj. 301', '28751096032', '01547865'),
('Rua Afonso Pena', 200, 'Boa Vista', 'Campinas', 'Rua', 'Casa', '51873924061', '05469872'),
('Rua Goias', 55, 'Industrial', 'Santo Andre', 'Rua', NULL, '70926835084', '08521684'),
('Rua Bahia', 87, 'Jardim', 'Sao Paulo', 'Rua', 'Fundos', '15632487097', '08625843'),
('Av. Brasil', 1200, 'Centro', 'Rio de Janeiro', 'Avenida', 'Bloco B', '93472158002', '75246925'),
('Rua Parana', 300, 'Vila Nova', 'Curitiba', 'Rua', NULL, '47960950000112', '02786932'),
('Rua Ceara', 77, 'Norte', 'Fortaleza', 'Rua', 'Prox. mercado', '10438276000155', '08743251'),
('Av. das Nacoes', 4000, 'Centro', 'Brasilia', 'Avenida', 'Ed. Omega', '28694537000103', '04578125'),
('Rua Nova Esperança', 150, 'Vila Rica', 'Sao Paulo', 'Rua', 'Apto 21', '04395182015', '06512999'),
('Av. do Sol', 500, 'Centro', 'Rio de Janeiro', 'Avenida', 'Sala 302', '93472158002', '75246000'),
('Rua das Acácias', 200, 'Jardim Europa', 'Curitiba', 'Rua', 'Casa', '47960950000112', '02786999'),
('Rua Projetada', 999, 'Industrial', 'Belo Horizonte', 'Rua', NULL, '91827364000180', '02456821');

INSERT INTO entregas (id_cliente, id_endereco, placa_veiculo, cpf_motorista, data_solicitacao, data_prevista_entrega, status_entrega, valor_entrega, forma_pagamento) VALUES
('04395182015', 1, 'ABC1A23', '70123456789', '2025-08-01', '2025-08-02', 'Em andamento', 45.50, 'debito'),
('28751096032', 2, 'DEF2B34', '70234567890', '2025-08-01', '2025-08-03', 'Pendente', 80.00, 'pix'),
('51873924061', 3, 'GHI3C45', '70345678901', '2025-08-02', '2025-08-04', 'Em andamento', 120.75, 'credito'),
('70926835084', 4, 'JKL4D56', '70456789012', '2025-08-02', '2025-08-05', 'Pendente', 35.00, 'debito'),
('15632487097', 5, 'MNO5E67', '70567890123', '2025-08-03', '2025-08-05', 'Entregue', 60.90, 'pix'),
('93472158002', 6, 'PQR6F78', '70678901234', '2025-08-03', '2025-08-06', 'Entregue', 95.20, 'credito'),
('47960950000112', 7, 'STU7G89', '70789012345', '2025-08-04', '2025-08-07', 'Pendente', 150.00, 'debito'),
('10438276000155', 8, 'VWX8H90', '70890123456', '2025-08-04', '2025-08-07', 'Em andamento', 75.35, 'pix'),
('28694537000103', 9, 'YZA9I11', '70901234567', '2025-08-05', '2025-08-09', 'Entregue', 210.00, 'credito'),
('91827364000180', 10, 'BCD0J22', '71012345678', '2025-08-05', '2025-08-10', 'Pendente', 40.50, 'debito');

INSERT INTO entrega_encomenda (id_entrega, id_encomenda, qntd_produto) VALUES
(1, 1, 2), (1, 2, 1),
(2, 3, 1),
(3, 4, 1), (3, 5, 2),
(4, 6, 3),
(5, 7, 1), (5, 8, 1), (5, 9, 2),
(6, 10, 1),
(7, 1, 1), (7, 2, 2),
(8, 3, 1),
(9, 4, 1), (9, 5, 1),
(10, 6, 1);

INSERT INTO telefones (numero_telefone, cpf_cnpj_cliente) VALUES
('11990010001', '04395182015'),
('1130007002', '10438276000155'),
('11990010005', '15632487097'),
('1130007003', '28694537000103'),
('11990010002', '28751096032'),
('1130007001', '47960950000112'),
('11990010003', '51873924061'),
('11990010004', '70926835084'),
('1130007004', '91827364000180'),
('11990010006', '93472158002');