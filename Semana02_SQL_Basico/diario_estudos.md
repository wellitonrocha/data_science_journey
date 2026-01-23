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

**22/01/2026**  
- Estudei e apliquei funções agregadas (`COUNT`, `SUM`, `AVG`) para análise de dados de vendas.  
- Criei consultas para calcular o total de pedidos por cliente, identificando clientes mais recorrentes.  
- Calculei o volume total de itens vendidos por pedido, diferenciando quantidade de itens e quantidade de produtos.  
- Desenvolvi consultas para cálculo de receita total por pedido e por produto, utilizando agregações sobre dados transacionais.  
- Analisei a média de desconto aplicada nos pedidos, compreendendo seu impacto no faturamento.  
- Validei todas as consultas para evitar duplicidade de valores causada por JOINs incorretos.  

**Aprendizados do dia:**  
- Uso correto de funções agregadas para geração de métricas de negócio.  
- Diferença entre métricas de volume (quantidade) e métricas financeiras (receita).  
- Importância do `GROUP BY` para definir corretamente o nível de agregação da análise.  
- Cuidados necessários ao combinar `JOIN` e agregações para evitar distorções nos resultados.  
- Transformação de dados transacionais em informações analíticas relevantes para tomada de decisão.  

---

**23/01/2026**  
- Desenvolvi o mini-projeto de Análise de Vendas utilizando SQL, consolidando os conceitos estudados ao longo da semana.  
- Respondi perguntas de negócio relacionadas a volume de vendas, faturamento e comportamento temporal.  
- Identifiquei o produto mais vendido com base na quantidade total comercializada.  
- Determinei o cliente que mais gerou receita no período analisado.  
- Analisei o faturamento mensal, identificando o mês com maior volume financeiro.  
- Organizei e documentei as queries finais no arquivo `queries.sql`, estruturando o mini-projeto de forma clara e reutilizável.  

**Aprendizados do dia:**  
- Estruturação de análises orientadas a perguntas de negócio.  
- Diferença entre métricas de volume e métricas financeiras na tomada de decisão.  
- Importância da análise temporal para identificação de padrões de faturamento.  
- Consolidação do uso de JOINs e funções agregadas em um projeto completo.  
- Construção de um projeto SQL com padrão profissional e pronto para portfólio.  
