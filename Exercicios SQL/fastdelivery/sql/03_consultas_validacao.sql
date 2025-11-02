-- Consulta 1: Entregas, cliente, motorista e veículo

SELECT 
    e.id_entrega, 
    e.id_cliente, 
    c.nome AS cliente, 
    m.nome AS motorista, 
    v.placa, 
    e.status_entrega AS status, 
    e.data_prevista_entrega AS data_prevista
FROM entregas e
JOIN clientes c   ON c.cpf_cnpj = e.id_cliente
JOIN motoristas m ON m.cpf = e.cpf_motorista
JOIN veiculos v   ON v.placa = e.placa_veiculo
WHERE e.status_entrega IN ('Pendente','Em andamento');

-- Consulta 2: Dados da(s) encomenda(s) por entrega

SELECT 
    ee.id_entrega, 
    en.id_encomenda, 
    en.descricao, 
    en.peso AS peso_kg, 
    en.dimensao AS dimensao
FROM entrega_encomenda ee
JOIN encomendas en ON en.id_encomenda = ee.id_encomenda
ORDER BY ee.id_entrega, en.id_encomenda;


-- Consulta 3: Clientes com mais de 1 endereço

SELECT 
    c.cpf_cnpj AS id_cliente, 
    c.nome AS cliente, 
    COUNT(*) AS qtd_enderecos
FROM clientes c
JOIN endereco e ON e.cpf_cnpj_cliente = c.cpf_cnpj
GROUP BY c.cpf_cnpj, c.nome
HAVING COUNT(*) > 1;

-- Consulta 4: Forma de pagamento utilizadas

SELECT 
    forma_pagamento AS forma, 
    COUNT(*) AS qtd
FROM entregas
GROUP BY forma_pagamento
ORDER BY qtd DESC;

-- Consulta 5: Verificar se foi uma pessoa física ou jurídica que realizou a compra

SELECT 
    cpf_cnpj,
    nome,
    CASE 
        WHEN LENGTH(cpf_cnpj) = 11 THEN 'PF'
        WHEN LENGTH(cpf_cnpj) = 14 THEN 'PJ'
        ELSE 'invalido'
    END AS tipo_cliente
FROM clientes;

-- Consulta 6: Quantidade de produtos por cliente 

SELECT 
    c.nome AS cliente,
    c.cpf_cnpj,
    COALESCE(SUM(ee.qntd_produto), 0) AS quantidade_total_produtos
FROM clientes c
LEFT JOIN entregas e ON e.id_cliente = c.cpf_cnpj
LEFT JOIN entrega_encomenda ee ON ee.id_entrega = e.id_entrega
GROUP BY c.nome, c.cpf_cnpj
ORDER BY quantidade_total_produtos DESC;


-- Consulta 7: Quantidade de entregas que foi feita para cada cidade

SELECT 
    end.cidade,
    COUNT(*) AS total_entregas
FROM entregas e
JOIN endereco end ON end.id_endereco = e.id_endereco
GROUP BY end.cidade
ORDER BY total_entregas DESC;







