# 📊 Análise de Clientes e Vendas com SQL

## 📌 Sobre o projeto

Este projeto foi desenvolvido como parte do meu portfólio na área de Análise de Dados.

O objetivo é utilizar SQL para analisar dados fictícios de clientes e vendas, transformando dados em informações que podem apoiar a tomada de decisões de negócio.

A análise simula um cenário de uma empresa do setor financeiro, permitindo explorar informações sobre clientes, cidades, salários, produtos e vendas.

## 🎯 Objetivos

* Analisar o perfil dos clientes
* Identificar a quantidade de clientes por cidade
* Comparar o salário médio entre cidades
* Calcular o gasto total por cliente
* Analisar o faturamento por produto
* Identificar clientes com maior volume de compras
* Identificar clientes com gasto superior a R$ 800
* Calcular o ticket médio dos produtos

## 🛠️ Tecnologias e conhecimentos utilizados

* SQL
* SELECT
* WHERE
* INNER JOIN
* GROUP BY
* HAVING
* COUNT
* SUM
* AVG
* ORDER BY
* LIMIT
* Subqueries

## 🔎 Análises realizadas

### 1. Quantidade de clientes por cidade

Identificação da quantidade de clientes presentes em cada cidade.

### 2. Salário médio por cidade

Comparação do salário médio dos clientes entre as cidades analisadas.

### 3. Gasto total por cliente

Cálculo do valor total gasto por cada cliente utilizando `INNER JOIN` entre as tabelas de clientes e vendas.

### 4. Faturamento total por produto

Identificação dos produtos que geraram maior faturamento.

### 5. Clientes que gastaram mais de R$ 800

Aplicação de `HAVING` para identificar clientes cujo gasto total ultrapassou R$ 800.

### 6. Clientes com maior número de compras

Contagem das compras realizadas por cada cliente e identificação dos clientes que apresentam o maior volume de compras, considerando possíveis empates.

### 7. Ticket médio por produto

Cálculo do valor médio das vendas de cada produto e identificação do produto com maior ticket médio.

### 8. Análise completa de clientes e vendas

Combinação de informações de clientes e vendas para analisar gasto total e quantidade de compras.

## 📈 Principais resultados

A análise realizada identificou:

* Rio de Janeiro possui 4 clientes na base.
* Niterói possui 3 clientes.
* São Paulo possui 3 clientes.
* São Paulo apresenta o maior salário médio entre as cidades analisadas.
* Ana e Juliana possuem o maior gasto total, com R$ 1.300 cada.
* Seguro apresenta o maior faturamento total, com R$ 4.200.
* Ana e Juliana realizaram o maior número de compras, com 2 compras cada.
* Consórcio apresenta o maior ticket médio, com R$ 800.

## 💡 Conclusão

O projeto demonstra como SQL pode ser utilizado para transformar dados de clientes e vendas em informações relevantes para análises de negócio.

Durante o desenvolvimento, foram praticados conceitos fundamentais de SQL, incluindo agregações, agrupamentos, filtros, ordenação, relacionamentos entre tabelas e subconsultas.

A análise também demonstra a importância de interpretar os resultados considerando situações como empates, evitando conclusões incompletas a partir dos dados.

Este projeto faz parte do meu desenvolvimento profissional na área de Análise de Dados e representa minha prática na aplicação de SQL a problemas de negócio.

## 📁 Estrutura do projeto

```text
analise-clientes-vendas-sql-portfolio/
│
├── README.md
│
├── dados/
│   ├── clientes.csv
│   └── vendas.csv
│
└── sql/
    └── analise_clientes_vendas.sql
```

## 👩‍💻 Sobre mim

Estou em formação na área de Análise de Dados, desenvolvendo conhecimentos em SQL, Excel, Power BI, Python e ferramentas de análise e visualização de dados.

Este projeto representa uma das etapas do meu desenvolvimento prático em SQL.

