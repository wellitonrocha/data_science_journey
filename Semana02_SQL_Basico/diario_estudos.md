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
