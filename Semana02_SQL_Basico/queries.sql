/*
===========================================================
Projeto: Análise de Vendas com SQL
Dataset: Northwind Database
Banco: SQL Server
Semana: 2 – SQL Básico
Arquivo: queries.sql
Descrição: Queries exploratórias e validações iniciais (Dia 1)
===========================================================
*/

-----------------------------------------------------------
-- 1. VISUALIZAÇÃO INICIAL DAS TABELAS
-----------------------------------------------------------

-- Visualizar primeiras linhas da tabela orders
SELECT TOP 10
    order_id,
    customer_id,
    employee_id,
    order_date,
    freight,
    ship_country
FROM orders;

-- Visualizar primeiras linhas da tabela order_details
SELECT TOP 10
    order_id,
    product_id,
    unit_price,
    quantity,
    discount
FROM order_details;

-----------------------------------------------------------
-- 2. CONTAGEM DE REGISTROS
-----------------------------------------------------------

-- Total de pedidos
SELECT
    COUNT(*) AS total_orders
FROM orders;

-- Total de itens vendidos (linhas da order_details)
SELECT
    COUNT(*) AS total_order_items
FROM order_details;

-----------------------------------------------------------
-- 3. PERÍODO DOS DADOS
-----------------------------------------------------------

-- Data inicial e final dos pedidos
SELECT
    MIN(order_date) AS data_inicial, 
    MAX(order_date) AS data_final
FROM orders;

-----------------------------------------------------------
-- 4. VALIDAÇÃO DO RELACIONAMENTO ENTRE AS TABELAS
-----------------------------------------------------------

-- Teste de JOIN entre orders e order_details
SELECT TOP 10
    o.order_id,
    o.order_date,
    od.product_id,
    od.quantity,
    od.unit_price
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id;

-----------------------------------------------------------
-- 5. QUANTIDADE DE ITENS POR PEDIDO (VALIDAÇÃO)
-----------------------------------------------------------

-- Verificar se pedidos possuem múltiplos itens
SELECT TOP 10
    o.order_id,
    COUNT(od.product_id) AS quantidade_itens
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.order_id
ORDER BY quantidade_itens DESC;

-----------------------------------------------------------
-- 6. VERIFICAÇÃO DE POSSÍVEIS PROBLEMAS DE INTEGRIDADE
-----------------------------------------------------------

-- Pedidos sem itens (Esperado zero registros)
SELECT
    o.order_id
FROM orders o
LEFT JOIN order_details od
    ON o.order_id = od.order_id
WHERE od.order_id IS NULL;
-----------------------------------------------------------

/*
===========================================================
SEMANA 2 – DIA 2
Tópicos: SELECT, WHERE, ORDER BY
Objetivo: Criar consultas básicas com intenção analítica
===========================================================
*/

-----------------------------------------------------------
-- 7. CONSULTAS BÁSICAS COM SELECT
-----------------------------------------------------------

-- Visão geral dos pedidos (colunas relevantes)
SELECT
    order_id,
    customer_id,
    order_date,
    freight,
    ship_country
FROM orders;

-----------------------------------------------------------
-- 8. FILTROS COM WHERE
-----------------------------------------------------------

-- Pedidos de um cliente específico
SELECT
    order_id,
    customer_id,
    order_date,
    freight
FROM orders
WHERE customer_id = 'VINET';

-- Pedidos dentro de um intervalo de datas
SELECT
    order_id,
    customer_id,
    order_date,
    freight
FROM orders
WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31';

-----------------------------------------------------------
-- 9. ORDENAÇÃO COM ORDER BY
-----------------------------------------------------------

-- Pedidos ordenados pelo maior valor de frete
SELECT
    order_id,
    customer_id,
    order_date,
    freight
FROM orders
ORDER BY freight DESC;

-- Top 10 pedidos com maior valor de frete
SELECT TOP 10
    order_id,
    customer_id,
    order_date,
    freight
FROM orders
ORDER BY freight DESC;

-----------------------------------------------------------
-- 10. COMBINAÇÃO: SELECT + WHERE + ORDER BY
-----------------------------------------------------------

-- Pedidos a partir de 1997 ordenados por maior frete
SELECT
    order_id,
    customer_id,
    order_date,
    freight
FROM orders
WHERE order_date >= '1997-01-01'
ORDER BY freight DESC;

-----------------------------------------------------------
/*
===========================================================
SEMANA 2 – DIA 3
Tópicos: INNER JOIN e LEFT JOIN
Objetivo: Relacionar pedidos e itens vendidos
===========================================================
*/

-----------------------------------------------------------
-- 11. INNER JOIN: PEDIDOS E ITENS VENDIDOS
-----------------------------------------------------------

-- Relação entre pedidos e seus respectivos itens
SELECT TOP 10
    o.order_id,
    o.order_date,
    od.product_id,
    od.quantity,
    od.unit_price
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id;

-----------------------------------------------------------
-- 12. INNER JOIN COM FILTRO
-----------------------------------------------------------

-- Itens vendidos em um pedido específico
SELECT
    o.order_id,
    o.order_date,
    od.product_id,
    od.quantity,
    od.unit_price
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
WHERE o.order_id = 10248;

-----------------------------------------------------------
-- 13. LEFT JOIN: VALIDAÇÃO DE CONSISTÊNCIA
-----------------------------------------------------------

-- Verificar se existem pedidos sem itens (esperado: zero registros)
SELECT
    o.order_id
FROM orders o
LEFT JOIN order_details od
    ON o.order_id = od.order_id
WHERE od.order_id IS NULL;

-----------------------------------------------------------
-- 14. QUANTIDADE DE ITENS POR PEDIDO
-----------------------------------------------------------

-- Contagem de itens vendidos por pedido
SELECT
    o.order_id,
    COUNT(od.product_id) AS quantidade_itens
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.order_id
ORDER BY quantidade_itens DESC;

-----------------------------------------------------------
-- FIM DO DIA 3
-- Próximo passo: Funções agregadas (COUNT, SUM, AVG, GROUP BY)
-----------------------------------------------------------