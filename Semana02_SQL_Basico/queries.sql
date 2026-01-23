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

/*
===========================================================
Exercícios práticos de fixação – JOINs
===========================================================
*/

-----------------------------------------------------------
-- EXERCÍCIO 1
-- Listar os 20 primeiros itens vendidos
-----------------------------------------------------------

SELECT TOP 20
    o.order_id,
    o.order_date,
    od.product_id,
    od.quantity
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id;

-----------------------------------------------------------
-- EXERCÍCIO 2
-- Pedidos realizados a partir de 1997-01-01
-----------------------------------------------------------

SELECT
    o.order_id,
    o.order_date,
    od.product_id,
    od.unit_price
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
WHERE o.order_date >= '1997-01-01';

-----------------------------------------------------------
-- EXERCÍCIO 3
-- Pedidos e itens ordenados por data
-----------------------------------------------------------

SELECT
    o.order_id,
    o.order_date,
    od.product_id,
    od.unit_price
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
ORDER BY o.order_date ASC;

-----------------------------------------------------------
-- EXERCÍCIO 4
-- Pedidos com mais de 10 itens diferentes
-----------------------------------------------------------

SELECT
    o.order_id,
    COUNT(od.product_id) AS quantidade_itens
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.order_id
HAVING COUNT(od.product_id) > 10
ORDER BY quantidade_itens DESC;

-----------------------------------------------------------
-- EXERCÍCIO 5
-- Pedidos com exatamente 1 item
-----------------------------------------------------------

SELECT
    o.order_id,
    COUNT(od.product_id) AS quantidade_itens
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.order_id
HAVING COUNT(od.product_id) = 1
ORDER BY quantidade_itens DESC;

-----------------------------------------------------------
-- EXERCÍCIO 6
-- Pedidos feitos no mesmo dia
-----------------------------------------------------------

SELECT
    o.order_date,
    o.order_id,
    od.product_id
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
WHERE o.order_date IN (
    SELECT
        order_date
    FROM orders
    GROUP BY order_date
    HAVING COUNT(order_id) > 1
)
ORDER BY
    o.order_date,
    o.order_id;

/*
===========================================================
SEMANA 2 – DIA 4
Tópico: Funções Agregadas e Análise de Vendas
Objetivo: Transformar dados transacionais em métricas
===========================================================
*/

-----------------------------------------------------------
-- 15. TOTAL DE PEDIDOS POR CLIENTE
-----------------------------------------------------------

SELECT
    customer_id,
    COUNT(order_id) AS total_pedidos
FROM orders
GROUP BY customer_id
ORDER BY total_pedidos DESC;

-----------------------------------------------------------
-- 16. TOTAL DE ITENS VENDIDOS POR PEDIDO
-----------------------------------------------------------

SELECT
    o.order_id,
    SUM(od.quantity) AS total_itens
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.order_id
ORDER BY total_itens DESC;

-----------------------------------------------------------
-- 17. RECEITA TOTAL POR PEDIDO
-----------------------------------------------------------

SELECT
    o.order_id,
    SUM(od.quantity * od.unit_price) AS receita_total
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.order_id
ORDER BY receita_total DESC;

-----------------------------------------------------------
-- 18. RECEITA TOTAL POR PRODUTO
-----------------------------------------------------------

SELECT
    od.product_id,
    SUM(od.quantity * od.unit_price) AS receita_total
FROM order_details od
GROUP BY od.product_id
ORDER BY receita_total DESC;

-----------------------------------------------------------
-- 19. MÉDIA DE DESCONTO APLICADA
-----------------------------------------------------------

SELECT
    AVG(discount) AS media_desconto
FROM order_details;

/*
===========================================================
SEMANA 2 – DIA 5
MINI-PROJETO – ANÁLISE DE VENDAS COM SQL
Objetivo: Responder perguntas de negócio com SQL
===========================================================
*/

-----------------------------------------------------------
-- 20. PRODUTO MAIS VENDIDO (POR QUANTIDADE)
-----------------------------------------------------------

SELECT
    od.product_id,
    SUM(od.quantity) AS total_vendido
FROM order_details od
GROUP BY od.product_id
ORDER BY total_vendido DESC;

-----------------------------------------------------------
-- 21. CLIENTE QUE MAIS GASTOU NO PERÍODO
-----------------------------------------------------------

SELECT
    o.customer_id,
    SUM(od.quantity * od.unit_price) AS total_gasto
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.customer_id
ORDER BY total_gasto DESC;

-----------------------------------------------------------
-- 22. FATURAMENTO POR MÊS
-----------------------------------------------------------

SELECT
    FORMAT(o.order_date, 'yyyy-MM') AS mes,
    SUM(od.quantity * od.unit_price) AS faturamento
FROM orders o
INNER JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY FORMAT(o.order_date, 'yyyy-MM')
ORDER BY faturamento DESC;

-----------------------------------------------------------
-- FIM DO DIA 5
-- Semana 2 concluída – SQL Básico
-----------------------------------------------------------