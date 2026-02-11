## 📓 Diário de Estudos – Semana 5 (Estatística Aplicada – ENEM)

## 🎯 Objetivo da Semana

Aplicar conceitos de **estatística descritiva e análise exploratória** em dados educacionais do ENEM, compreendendo distribuições, dispersão e padrões entre variáveis, com foco na interpretação correta dos dados e na comunicação de insights analíticos.

---

## 📅 Registro Diário

**09/02/2026**

* Iniciei a **Semana 5 da jornada DataScienceJourney**, com foco em Estatística Aplicada.
* Estruturei a pasta do projeto `Semana05_Estatistica_ENEM`, criando os arquivos base (`enem_stats.ipynb`, `README.md` e `diario_estudos.md`) e a pasta `data/` para organização dos dados.
* Realizei a escolha estratégica do dataset, optando por uma **amostra dos microdados do ENEM 2019**, evitando o uso do dataset completo devido ao alto volume de dados, mas mantendo representatividade estatística.
* O dataset selecionado contém **127.380 registros**, com informações de notas por área do conhecimento e variáveis sociodemográficas.
* Carreguei o dataset no Jupyter Notebook utilizando parâmetros adequados (`encoding="latin1"` e `low_memory=False`) para evitar problemas de leitura e tipagem.
* Executei a exploração inicial dos dados (`shape`, `columns`, `info`) para compreensão da estrutura geral do dataset.
* Selecionei as principais variáveis para a análise estatística:

  * Notas: Matemática, Linguagens, Ciências da Natureza e Ciências Humanas
  * Variáveis categóricas: sexo e tipo de escola
* Criei um DataFrame reduzido, focado exclusivamente nas variáveis relevantes para estatística educacional.
* Analisei a presença de valores nulos nas notas, identificando que a ausência de dados é significativa e está associada à não participação dos candidatos em determinadas provas, um comportamento esperado em exames de larga escala.
* Executei a estatística descritiva inicial (`describe()`), obtendo médias, medianas, dispersão e valores extremos das notas, sem ainda realizar tratamentos ou filtros nos dados.

**Aprendizados do dia:**

* Importância de iniciar uma análise estatística com **definição clara das variáveis de interesse**.
* Compreensão de que valores nulos em dados educacionais podem representar **informação relevante**, e não erro de coleta.
* Reforço do papel da estatística descritiva como base para qualquer análise mais aprofundada.
* Validação da necessidade de separar diagnóstico dos dados e etapas de tratamento para evitar viés analítico.

---

**10/02/2026**

* Dei continuidade à **Semana 5 – Estatística Aplicada ao ENEM**, avançando para a análise exploratória das distribuições.
* Realizei a comparação entre **média e mediana** das quatro áreas do conhecimento (Matemática, Linguagens, Ciências da Natureza e Ciências Humanas) para identificação de possíveis assimetrias.
* Identifiquei diferenças sutis entre média e mediana, sugerindo comportamentos distintos de distribuição entre as provas.
* Construí histogramas para visualização da distribuição das notas e análise da concentração de candidatos por faixa de pontuação.
* Observei que as distribuições apresentam formato aproximadamente normal, com leves assimetrias em algumas áreas.
* Construi boxplots para análise de dispersão, amplitude interquartil e presença de outliers.
* Identifiquei maior variabilidade nas notas de Matemática, enquanto Linguagens e Humanas apresentam comportamento mais concentrado.
* Interpretei os gráficos de forma integrada (média, mediana, histograma e boxplot), consolidando a leitura estatística das distribuições.

**Aprendizados do dia:**

* Diferenças entre média e mediana são indicadores práticos de assimetria da distribuição.
* Histogramas permitem compreender concentração e formato geral da distribuição.
* Boxplots facilitam a visualização de dispersão e identificação de valores extremos.
* A análise gráfica deve sempre complementar a estatística descritiva numérica.
* A leitura integrada dos dados reduz interpretações superficiais e aumenta a robustez analítica.

---

**11/02/2026**

* Dei continuidade à **Semana 5 – Estatística Aplicada ao ENEM**, avançando da análise univariada para análise comparativa segmentada.
* Realizei a análise da distribuição da variável `TP_SEXO`, identificando maior participação feminina (59,6%) em relação à masculina (40,4%).
* Calculei médias das quatro áreas por sexo, observando desempenho superior masculino em todas as provas, com maior diferença em Matemática.
* Calculei as medianas por sexo para validar se as diferenças observadas nas médias refletiam o comportamento central da distribuição.
* Identifiquei consistência entre média e mediana, indicando que as diferenças não são causadas apenas por outliers.
* Analisei o desvio padrão por sexo, verificando maior variabilidade nas notas masculinas em todas as áreas.
* Construi boxplots comparativos por sexo, enriquecendo a visualização com marcação explícita de mínimo, quartis, mediana e máximo.
* Realizei interpretação integrada entre estatística descritiva e visualizações gráficas.

**Aprendizados do dia:**

* A estatística segmentada permite identificar padrões estruturais entre grupos.
* Diferenças entre média e mediana ajudam a interpretar assimetria.
* O desvio padrão é essencial para compreender variabilidade entre populações.
* Visualizações enriquecidas com quartis tornam a análise mais didática e robusta.
* A análise comparativa é etapa fundamental antes de aplicar testes estatísticos de hipótese.

---