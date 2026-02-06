# 📊 Análise de Dados Financeiros — Apple (AAPL)

## 📌 Visão Geral

Este projeto tem como objetivo realizar uma **análise exploratória e financeira** das ações da **Apple Inc. (AAPL)** utilizando Python.
A partir de dados históricos de mercado, foram analisados o comportamento do preço, a tendência, os retornos e a volatilidade do ativo ao longo do tempo.

O estudo foi desenvolvido como parte da **Semana 04 do plano de estudos em Python para Análise de Dados**, com foco em séries temporais financeiras.

---

## 🎯 Objetivo do Projeto

* Analisar a **evolução do preço das ações da Apple**
* Identificar **tendências de mercado** por meio de médias móveis
* Avaliar **retornos diários e volatilidade**
* Utilizar **visualizações financeiras** para apoiar a interpretação dos dados
* Consolidar insights relevantes para análise de ativos financeiros

---

## 📂 Dataset

Os dados utilizados no projeto foram obtidos a partir da **API do Yahoo Finance**, contendo informações históricas das ações da Apple (AAPL).

### Principais variáveis:

* **Open**: Preço de abertura
* **High**: Preço máximo do dia
* **Low**: Preço mínimo do dia
* **Close**: Preço de fechamento
* **Volume**: Volume negociado

O período analisado abrange vários anos de histórico do ativo, permitindo uma visão de longo prazo.

---

## 🛠️ Tecnologias Utilizadas

* **Python**
* **Pandas** — manipulação e análise de dados
* **NumPy** — cálculos numéricos
* **Matplotlib** — visualizações gráficas
* **Jupyter Notebook** — documentação e análise interativa
* **Git & GitHub** — versionamento do projeto

---

## 🔍 Etapas da Análise

1. **Carregamento e exploração inicial dos dados**
2. **Tratamento da série temporal**

   * Conversão da coluna de data
   * Definição do índice temporal
3. **Verificação da qualidade dos dados**
4. **Análise de tendência**

   * Preço de fechamento
   * Médias móveis de curto, médio e longo prazo
5. **Análise de retorno e volatilidade**

   * Retornos diários
   * Distribuição dos retornos
   * Volatilidade móvel
6. **Conclusões finais baseadas nos gráficos e métricas financeiras**

---

## 📈 Principais Insights

* As ações da Apple apresentam **tendência de alta consistente** no longo prazo.
* As médias móveis indicam uma estrutura sólida de valorização, mesmo durante períodos de correção.
* Os retornos diários mostram **volatilidade controlada**, típica de um ativo de grande capitalização.
* Eventos pontuais geram movimentos mais bruscos, evidenciados pelas caudas da distribuição de retornos.

---

## 📁 Estrutura do Projeto

```bash
Semana04_Python_Financas/
│
├── finance_analysis.ipynb   # Notebook com toda a análise
├── dataset_financeiro.csv  # Dataset utilizado
├── diario_estudos.md       # Registro diário do aprendizado
└── README.md               # Documentação do projeto
```

---

## 🚀 Conclusão

Este projeto demonstra como **Python pode ser utilizado para análise financeira**, combinando estatística, visualização de dados e interpretação analítica para compreender o comportamento de ativos do mercado acionário.

---

## 👤 Autor

**Welliton da Rocha**
Projeto desenvolvido como parte da jornada de estudos em **Data Science e Análise de Dados**.