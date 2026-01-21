# 📓 Diário de Estudos – Semana 2 (SQL Básico)

## 🎯 Objetivo da Semana
Aprender os fundamentos de SQL aplicados à análise de dados, utilizando o banco Northwind para responder perguntas de negócio, documentar consultas e construir um projeto publicável no GitHub.

---

## 📅 Registro Diário

**19/01/2026**  
- Criei o banco de dados `northwind_sql` no SQL Server.  
- Modelei as tabelas `orders` e `order_details`, definindo chaves primárias e estrangeiras.  
- Importei os arquivos CSV do dataset Northwind utilizando tabelas temporárias para garantir controle de tipos e integridade referencial.  
- Validei a estrutura das tabelas e o relacionamento 1:N entre pedidos e itens.  
- Executei queries exploratórias iniciais para entendimento do volume e período dos dados.  

**Resultados das análises iniciais:**  
- Total de pedidos: **830**  
- Total de itens vendidos (linhas da `order_details`): **2155**  
- Período dos dados: **1996-07-04** a **1998-05-06**  
- Pedidos sem itens: **0 registros**  

**Aprendizados do dia:**  
- Criação de tabelas no SQL Server com PK e FK.  
- Importação controlada de arquivos CSV via tabelas temporárias.  
- Validação de integridade relacional com JOINs.  
- Importância da exploração inicial para entendimento do dataset antes das análises.  

---

**20/01/2026**  
- Pratiquei consultas básicas utilizando `SELECT`, `WHERE` e `ORDER BY`.  
- Evitei o uso de `SELECT *`, selecionando apenas colunas relevantes para análise.  
- Criei consultas para listar pedidos por cliente específico.  
- Filtrei pedidos por intervalo de datas, analisando o comportamento ao longo do tempo.  
- Ordenei pedidos pelo valor do frete para identificar os maiores custos logísticos.  
- Combinei filtros e ordenação em consultas mais completas, já com foco analítico.  

**Aprendizados do dia:**  
- Importância de selecionar colunas com intenção analítica.  
- Uso correto do `WHERE` para segmentar dados por cliente e período.  
- Aplicação do `ORDER BY` como ferramenta de análise, não apenas estética.  
- Construção de consultas SQL claras, legíveis e bem documentadas.  

---

**21/01/2026**  
- Estudei e apliquei conceitos de relacionamento entre tabelas utilizando `INNER JOIN` e `LEFT JOIN`.  
- Relacionei as tabelas `orders` e `order_details` para analisar os itens vendidos em cada pedido.  
- Criei consultas para listar produtos vendidos por pedido, combinando dados de cabeçalho e detalhe.  
- Realizei validações de integridade dos dados, identificando se existiam pedidos sem itens associados.  
- Calculei a quantidade de itens por pedido, preparando a base para análises agregadas mais avançadas.  

**Aprendizados do dia:**  
- Diferença prática entre `INNER JOIN` e `LEFT JOIN` em análises relacionais.  
- Importância do JOIN para transformar dados normalizados em informações analíticas.  
- Uso de `LEFT JOIN` como ferramenta de auditoria e validação de qualidade dos dados.  
- Preparação de consultas relacionais como base para métricas de negócio (volume, vendas, receita).  

---