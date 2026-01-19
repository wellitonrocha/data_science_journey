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

-- Total de pedidos = 830
SELECT
    COUNT(*) AS total_orders
FROM orders;

-- Total de itens vendidos (linhas da order_details = 2155)
SELECT
    COUNT(*) AS total_order_items
FROM order_details;

-----------------------------------------------------------
-- 3. PERÍODO DOS DADOS
-----------------------------------------------------------

-- Data inicial(1996-07-04) e final(1998-05-06) dos pedidos
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

-- Pedidos sem itens (zero registros)
SELECT
    o.order_id
FROM orders o
LEFT JOIN order_details od
    ON o.order_id = od.order_id
WHERE od.order_id IS NULL;

-----------------------------------------------------------
-- FIM DO DIA 1
-- Próximo passo: SELECT, WHERE e ORDER BY (Dia 2)
-----------------------------------------------------------
