# 📊 Análise Estatística do ENEM 2019

Projeto desenvolvido na **Semana 5 da jornada DataScienceJourney**, com foco na aplicação prática de estatística descritiva e inferencial em dados educacionais de larga escala.

---

## 🎯 Objetivo

Aplicar conceitos de:

- Estatística descritiva
- Análise exploratória de dados (EDA)
- Comparações entre grupos
- Teste de hipótese (Welch’s t-test)
- Cálculo de tamanho do efeito (Cohen’s d)

Utilizando uma amostra dos microdados do ENEM 2019.

---

## 📂 Dataset

Foi utilizada uma **amostra com 127.380 registros** contendo:

- Notas:
  - Matemática
  - Linguagens
  - Ciências da Natureza
  - Ciências Humanas
- Variáveis categóricas:
  - Sexo
  - Tipo de escola

Optou-se por trabalhar com amostra representativa em vez do dataset completo devido ao volume elevado de dados.

---

## 🔎 Etapas da Análise

### 1️⃣ Exploração Inicial
- Estrutura do dataset
- Tipagem
- Identificação de valores ausentes

### 2️⃣ Estatística Descritiva
- Média
- Mediana
- Desvio padrão
- Avaliação de assimetria

### 3️⃣ Análise de Distribuição
- Histogramas
- Boxplots
- Interpretação integrada das distribuições

### 4️⃣ Análise Comparativa por Sexo
- Diferenças moderadas, com maior disparidade em Matemática
- Maior variabilidade no grupo masculino

### 5️⃣ Análise Comparativa por Tipo de Escola
- Diferenças expressivas em todas as áreas
- Escola privada com médias substancialmente superiores

### 6️⃣ Estatística Inferencial
- Aplicação de Welch’s t-test
- p-values < 0.05 em todas as áreas
- Cálculo de Cohen’s d indicando efeito grande (d > 0.8)

---

## 📊 Principais Resultados

- Diferenças por sexo são moderadas.
- Diferenças por tipo de escola são estruturalmente maiores.
- Todas as diferenças entre escola pública e privada são estatisticamente significativas.
- O tamanho do efeito indica desigualdade de magnitude elevada.

---

## 🛠️ Tecnologias Utilizadas

- Python
- Pandas
- NumPy
- Matplotlib
- SciPy

---

## 📌 Conclusão

A análise demonstra como estatística descritiva e inferencial podem ser aplicadas para investigar padrões de desigualdade educacional em bases públicas de larga escala.

O projeto evidencia a importância de validar achados descritivos com testes estatísticos e análise de tamanho do efeito.

---

## 🚀 Próximos Passos

Possíveis extensões do projeto:

- Inclusão de variáveis socioeconômicas
- Modelos de regressão
- Análise multivariada
- Visualizações interativas