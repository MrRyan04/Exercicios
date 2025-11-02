FastDelivery Express — Banco de Dados 

Este repositório mostra a criação de um banco de dados relacional para a situação problema abaixo.

A FastDelivery Express atua no transporte de encomendas de pequeno e médio porte, 
atendendo tanto clientes residenciais quanto empresas em todo o território nacional. 

A equipe administrativa deseja organizar melhor as informações de clientes, motoristas, 
veículos, entregas e pagamentos, substituindo o uso de planilhas e anotações soltas. 
Atualmente, cada cliente pode solicitar várias entregas durante o ano. Há clientes que são 
pessoas físicas, com dados como nome, CPF, telefone, e-mail e endereço. Outros são 
empresas, com razão social, CNPJ, telefone, e-mail e endereço. 

Em alguns casos, o mesmo cliente pode ter mais de um endereço para coleta e entrega. 
Cada entrega possui um código identificador, data de solicitação, prazo previsto e status. Em uma entrega, pode haver várias encomendas com descrição, peso, 
dimensões e valor declarado. O transporte é feito por motoristas com nome, CPF, CNH, 
telefone e e-mail, utilizando veículos de diferentes tipos. Uma entrega pode ter vários pagamentos vinculados. 

MySQL 8.0 Command Line Client

COMO EXECUTAR:

1. Crie o banco fast_delivery com o seguinte comando:

CREATE DATABASE fast_delivery;

2. Navegue até o banco com o seguinte comando:

USE DATABASE fast_delivery;

3. Crie as tabelas com o comando localizado no arquivo "01_ddl_criacao.sql".

4. Preencha as tabelas com dados do script "02_dml_carga.sql".

5. Finalize com as consultas de validação localizadas em "03_consultas_validacao.sql".

4. Caso deseje remover os dados para inserir novamente, remova com os comandos localizados em "04_deletar_tabela".


Estrutura de pastas:

/fast_delivery
    /docs (Relatorio.pdf, DER.png)
    /sql (01_ddl_criacao.sql, 02_dml_carga.sql, 03_consultas_validacao.sql, 04_deletar_tabela.sql)
    /model (DER.drawio) 


Conceitos explorados neste desafio:

Modelagem de um banco de dados, utilizando-se das 3 formas normais;
Utilização da linguagem SQL para criação e inserção de dados;
Diagrama DER;
Consultas;