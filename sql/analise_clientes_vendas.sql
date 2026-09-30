-- ============================================================
-- PROJETO: Análise de Clientes e Vendas com SQL
-- ============================================================


-- 1. QUANTIDADE DE CLIENTES POR CIDADE
-- Pergunta: Quantos clientes existem em cada cidade?

SELECT cidade,
       COUNT(*) AS quantidade_clientes
FROM clientes
GROUP BY cidade
ORDER BY quantidade_clientes DESC;


-- 2. SALÁRIO MÉDIO POR CIDADE
-- Pergunta: Qual é o salário médio dos clientes de cada cidade?

SELECT cidade,
       AVG(salario) AS salario_medio
FROM clientes
GROUP BY cidade
ORDER BY salario_medio DESC;


-- 3. GASTO TOTAL POR CLIENTE
-- Pergunta: Quanto cada cliente gastou no total?

SELECT clientes.nome,
       SUM(vendas.valor) AS gasto_total
FROM clientes
INNER JOIN vendas
    ON clientes.id_cliente = vendas.id_cliente
GROUP BY clientes.id_cliente, clientes.nome
ORDER BY gasto_total DESC;


-- 4. FATURAMENTO TOTAL POR PRODUTO
-- Pergunta: Qual produto gerou maior faturamento?

SELECT produto,
       SUM(valor) AS faturamento_total
FROM vendas
GROUP BY produto
ORDER BY faturamento_total DESC;


-- 5. CLIENTES QUE GASTARAM MAIS DE R$ 800
-- Pergunta: Quais clientes tiveram gasto total superior a R$ 800?

SELECT clientes.nome,
       SUM(vendas.valor) AS gasto_total
FROM clientes
INNER JOIN vendas
    ON clientes.id_cliente = vendas.id_cliente
GROUP BY clientes.id_cliente, clientes.nome
HAVING SUM(vendas.valor) > 800
ORDER BY gasto_total DESC;


-- 6. CLIENTE COM MAIOR NÚMERO DE COMPRAS
-- Pergunta: Qual cliente realizou mais compras?

SELECT clientes.nome,
       COUNT(vendas.id_venda) AS quantidade_compras
FROM clientes
INNER JOIN vendas
    ON clientes.id_cliente = vendas.id_cliente
GROUP BY clientes.id_cliente, clientes.nome
ORDER BY quantidade_compras DESC
LIMIT 1;


-- 7. TICKET MÉDIO POR PRODUTO
-- Pergunta: Qual produto possui o maior ticket médio?

SELECT produto,
       AVG(valor) AS ticket_medio
FROM vendas
GROUP BY produto
ORDER BY ticket_medio DESC
LIMIT 1;


-- 8. ANÁLISE COMPLETA DE CLIENTES E VENDAS
-- Pergunta: Quais são os clientes, suas cidades e seus gastos?

SELECT clientes.nome,
       clientes.cidade,
       clientes.salario,
       SUM(vendas.valor) AS gasto_total,
       COUNT(vendas.id_venda) AS quantidade_compras
FROM clientes
INNER JOIN vendas
    ON clientes.id_cliente = vendas.id_cliente
GROUP BY clientes.id_cliente,
         clientes.nome,
         clientes.cidade,
         clientes.salario
ORDER BY gasto_total DESC;
