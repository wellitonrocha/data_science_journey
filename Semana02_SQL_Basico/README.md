# 📊 Análise de Vendas com SQL – Northwind

## 📌 Visão Geral
Este projeto faz parte da **Semana 2 da jornada de estudos em Análise de Dados**, com foco no aprendizado e aplicação prática de **SQL Básico**.  

Utilizando o dataset clássico **Northwind**, o projeto simula análises reais de um cenário de e-commerce, respondendo perguntas de negócio relacionadas a vendas, clientes e faturamento.

O desenvolvimento foi realizado com **SQL Server**, priorizando consultas bem estruturadas, boas práticas de SQL, organização de projeto e documentação voltada para portfólio.

---

## 🎯 Objetivos do Projeto
- Aplicar os fundamentos de SQL em um cenário real de análise de dados  
- Praticar consultas com `SELECT`, `WHERE`, `ORDER BY`, `JOIN` e funções agregadas  
- Transformar dados transacionais em métricas de negócio  
- Desenvolver um projeto organizado e publicável no GitHub  
- Documentar análises de forma clara, objetiva e profissional  

---

## 🗂️ Dataset Utilizado
Foram utilizadas duas tabelas do dataset **Northwind**:

- **orders**  
  Contém informações gerais dos pedidos, como cliente, data do pedido e frete.

- **order_details**  
  Contém os itens vendidos em cada pedido, incluindo produto, quantidade, preço unitário e desconto.

As tabelas possuem um relacionamento **1:N**, no qual um pedido pode conter múltiplos itens.

---

## 🧠 Perguntas de Negócio Respondidas
Durante o mini-projeto, as seguintes perguntas foram analisadas e respondidas por meio de SQL:

1. **Qual produto foi o mais vendido (em quantidade)?**  
2. **Qual cliente gerou o maior faturamento no período analisado?**  
3. **Qual mês apresentou o maior faturamento?**

Todas as respostas foram obtidas exclusivamente com consultas SQL, utilizando JOINs e funções de agregação.

---

## 🧪 Principais Análises Realizadas
- Exploração inicial do volume e do período dos dados  
- Análise de pedidos por cliente  
- Identificação de pedidos com maior número de itens  
- Cálculo de métricas de vendas e faturamento  
- Análise temporal do faturamento mensal  

Os resultados das análises foram documentados e visualizados em notebook Python para facilitar a interpretação.

---

## 📁 Estrutura do Repositório

```text
.
└── Semana02_SQL_Basico
  ├── data/
  | ├── northwind_order_details.csv   # Banco de dados original
  | ├── northwind_orders.csv          # Banco de dados original
  | ├── cliente_mais_gastou.csv       # Arquivo exportado do resultado da querie SQL
  | ├── faturamento_por_mes.csv       # Arquivo exportado do resultado da querie SQL
  | └── produto_mais_vendido.csv      # Arquivo exportado do resultado da querie SQL
  |
  ├── queries.sql              # Consultas SQL organizadas e comentadas
  ├── analise_vendas.ipynb     # Análises, visualizações e conclusões
  ├── diario_estudos.md        # Registro diário da evolução do projeto
  └── README.md                # Documentação geral do projeto

```
---

## 🛠️ Tecnologias Utilizadas
- SQL Server
- SQL (T-SQL)
- Python (Jupyter Notebook)
- Pandas
- Matplotlib / Seaborn
- Git & GitHub

## 📈 Principais Aprendizados
- Uso correto de JOINs para evitar duplicidade de dados
- Diferença entre métricas de volume e métricas financeiras
- Importância do nível correto de agregação (`GROUP BY`)
- Transformação de dados transacionais em informações analíticas
- Organização e documentação de um projeto de dados para portfólio

## 🚀 Próximos Passos
Na próxima etapa da jornada, o foco será a aplicação de **Python para Análise de Dados**, com ênfase em exploração, limpeza e visualização.

**Semana 3 – Python (Exploração de Dados)**
  - Projeto: *Exploração de Dados do Titanic*
  - Dataset: Titanic (Kaggle)
  - Limpeza e tratamento de dados
  - Análise exploratória (EDA)
  - Visualização de sobrevivência por variáveis


## 🔗 Autor

**Projeto desenvolvido por Welliton da Rocha**

📍 Jornada prática em Análise de Dados

📌 LinkedIn: www.linkedin.com/in/welliton-rocha-data-analytics