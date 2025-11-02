CREATE TABLE clientes (
    cpf_cnpj VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE motoristas (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnh VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE veiculos (
    placa VARCHAR(10) PRIMARY KEY,
    modelo VARCHAR(50),
    ano INT,
    cor VARCHAR(30)
);

CREATE TABLE encomendas (
    id_encomenda INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200),
    dimensao VARCHAR(50),
    peso DECIMAL(10,2) NOT NULL
);

CREATE TABLE endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(100),
    numero INT,
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    logradouro VARCHAR(50),
    complemento VARCHAR(100),
    cpf_cnpj_cliente VARCHAR(20),
    cep VARCHAR(8),
    FOREIGN KEY (cpf_cnpj_cliente) REFERENCES clientes(cpf_cnpj)
);

CREATE TABLE entregas (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente VARCHAR(20),
    id_endereco INT,
    placa_veiculo VARCHAR(10),
    cpf_motorista VARCHAR(11),
    data_solicitacao DATE NOT NULL,
    data_prevista_entrega DATE NOT NULL,
    status_entrega VARCHAR(50) NOT NULL,
    valor_entrega DECIMAL(10,2) NOT NULL,
    forma_pagamento VARCHAR(10),
    FOREIGN KEY (id_cliente) REFERENCES clientes(cpf_cnpj),
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco),
    FOREIGN KEY (placa_veiculo) REFERENCES veiculos(placa),
    FOREIGN KEY (cpf_motorista) REFERENCES motoristas(cpf)
);

CREATE TABLE entrega_encomenda (
    id_entrega INT,
    id_encomenda INT,
    qntd_produto INT DEFAULT 1,
    PRIMARY KEY (id_entrega, id_encomenda),
    FOREIGN KEY (id_entrega) REFERENCES entregas(id_entrega),
    FOREIGN KEY (id_encomenda) REFERENCES encomendas(id_encomenda)
);

CREATE TABLE telefones (
    numero_telefone VARCHAR(20) PRIMARY KEY,
    cpf_cnpj_cliente VARCHAR(20),
    FOREIGN KEY (cpf_cnpj_cliente) REFERENCES clientes(cpf_cnpj)
);