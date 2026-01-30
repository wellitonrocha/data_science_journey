# 📓 Diário de Estudos – Semana 3 (Python – Análise de Dados)

## 🎯 Objetivo da Semana

Aplicar Python para Análise de Dados por meio de um fluxo completo de **Exploração de Dados (EDA)** utilizando o dataset do Titanic, envolvendo carregamento, entendimento dos dados, limpeza, visualizações e geração de insights, culminando em um projeto publicável no GitHub e divulgado no LinkedIn.

---

## 📅 Registro Diário

**26/01/2026**

* Iniciei a Semana 3 com foco em Python para Análise de Dados, utilizando o dataset clássico do Titanic.
* Abri e estruturei o notebook `titanic_analysis.ipynb`, definindo o contexto do projeto e seus objetivos analíticos.
* Importei as principais bibliotecas para análise e visualização de dados (`pandas`, `numpy`, `matplotlib`, `seaborn`).
* Carreguei o dataset do Titanic a partir do arquivo CSV disponível na pasta do projeto.
* Realizei a exploração inicial dos dados utilizando `.head()`, `.tail()`, `.info()` e `.describe()` para compreender volume, tipos de dados e estatísticas básicas.
* Identifiquei e classifiquei as variáveis em numéricas, categóricas e textuais, preparando a base para as próximas etapas da análise exploratória.
* Analisei a distribuição da variável alvo (`Survived`), avaliando a proporção de sobreviventes e não sobreviventes.
* Criei uma visualização inicial da sobrevivência para facilitar o entendimento do problema.
* Documentei hipóteses iniciais relacionadas aos fatores que podem ter influenciado a sobrevivência dos passageiros.

**Hipóteses levantadas:**

* Passageiros do sexo feminino apresentaram maior taxa de sobrevivência.
* Passageiros da 1ª classe (`Pclass = 1`) tiveram maior probabilidade de sobrevivência do que os da 3ª classe.
* Crianças e passageiros mais jovens tiveram maiores chances de sobreviver.
* Tarifas mais altas (`Fare`) estão associadas a maior probabilidade de sobrevivência.
* Passageiros com famílias muito grandes ou viajando sozinhos podem apresentar taxas de sobrevivência distintas.

As hipóteses são formuladas com base em conhecimento prévio sobre o evento e serão avaliadas ao longo da análise exploratória, não representando conclusões neste estágio.

**Aprendizados do dia:**

* Estruturação de um notebook analítico com foco em clareza e comunicação.
* Importância da exploração inicial para entendimento do contexto e da qualidade dos dados.
* Identificação correta de tipos de variáveis como base para uma EDA eficiente.
* Formulação de hipóteses como etapa fundamental antes de análises mais profundas.

---

**27/01/2026**

* Iniciei o segundo dia da Semana 3 dando continuidade à Análise Exploratória de Dados (EDA) no dataset do Titanic.
* Realizei a análise detalhada de valores ausentes, identificando colunas com dados faltantes e avaliando sua relevância para a análise.
* Efetuei o tratamento de valores nulos:
  * Preenchi a variável `Age` com a mediana, preservando a distribuição da idade.
  * Preenchi a variável `Embarked` com a moda, por se tratar de uma variável categórica.
* Mantive a variável `Cabin` sem tratamento neste estágio devido ao elevado volume de valores ausentes.
* Criei a variável **`FamilySize`**, representando o tamanho da família a bordo, a partir da soma de `SibSp` e `Parch`, adicionando 1 para incluir o próprio passageiro.
* Analisei estatísticas descritivas das variáveis numéricas após o tratamento dos dados.
* Iniciei a investigação da relação entre tamanho da família e sobrevivência, preparando o terreno para análises visuais e comparativas nos próximos dias.

**Aprendizados do dia:**

* Importância do tratamento adequado de valores ausentes antes de análises mais profundas.
* Entendimento do impacto de decisões de imputação sobre a qualidade da análise.
* Criação de variáveis derivadas como forma de enriquecer a análise e extrair novos insights.
* Preparação consciente da base de dados para análises exploratórias mais robustas.

---

**28/01/2026**

* Dei continuidade à Análise Exploratória de Dados (EDA) com foco na validação das hipóteses levantadas no início do projeto.
* Analisei a relação entre sobrevivência e sexo dos passageiros, identificando uma diferença expressiva nas taxas de sobrevivência entre homens e mulheres.
* Avaliei a influência da classe social (`Pclass`) na sobrevivência, observando um gradiente claro de maior sobrevivência nas classes mais altas.
* Investiguei a variável idade (`Age`), comparando distribuições entre sobreviventes e não sobreviventes, concluindo que a idade isoladamente não foi um fator determinante, exceto possivelmente para faixas etárias mais baixas.
* Analisei a relação entre a tarifa paga (`Fare`) e a sobrevivência, identificando que passageiros que pagaram tarifas mais altas apresentaram maior probabilidade de sobreviver.
* Avaliei o impacto do tamanho da família (`FamilySize`) na sobrevivência, observando que famílias pequenas (2 a 4 pessoas) apresentaram as maiores taxas de sobrevivência, enquanto passageiros sozinhos ou em famílias grandes tiveram menor probabilidade.
* Documentei todas as análises no notebook, combinando estatísticas descritivas, visualizações e interpretações analíticas claras.

**Aprendizados do dia:**

* Importância da análise visual para validação de hipóteses em dados reais.
* Diferença entre métricas de proporção e volume absoluto na interpretação de resultados.
* Identificação de padrões não lineares em variáveis engenheiradas.
* Construção de análises orientadas a perguntas, evitando conclusões precipitadas.
* Consolidação de boas práticas de EDA para projetos de portfólio.

---

**29/01/2026**

* Dei continuidade à Análise Exploratória de Dados (EDA) com foco em análises combinadas e multivariadas, aprofundando a validação das hipóteses iniciais do projeto.
* Analisei a interação entre classe social (Pclass) e sexo (Sex), identificando que o sexo feminino apresentou altas taxas de sobrevivência em todas as classes, enquanto a classe social atuou como fator amplificador das chances de sobrevivência.
* Avaliei a relação entre faixa etária (AgeGroup) e sobrevivência, observando diferenças relevantes entre taxas percentuais e volumes absolutos, especialmente no grupo de jovens adultos.
* Segmentei a variável tarifa (Fare) em faixas, analisando a sobrevivência por quartis e confirmando a influência da condição socioeconômica tanto em taxa quanto em volume absoluto de sobreviventes.
* Realizei uma análise combinada entre tamanho da família (FamilySize) e classe social, identificando que famílias pequenas apresentaram maiores taxas de sobrevivência, principalmente nas classes mais altas, enquanto famílias grandes na 3ª classe tiveram desempenho crítico.
* Consolidei todas as análises por meio de uma síntese estruturada das hipóteses, classificando-as como confirmadas, parcialmente confirmadas ou não confirmadas com base em evidências empíricas.
* Finalizei o notebook com uma célula de fechamento analítico, conectando os insights obtidos e preparando o terreno para as próximas etapas do projeto.

**Aprendizados do dia:**

* Importância da análise multivariada para compreensão de fenômenos complexos.
* Diferença entre fatores dominantes e fatores moderadores na interpretação dos dados.
* Uso de visualizações combinadas (heatmaps e gráficos agrupados) para revelar padrões ocultos.
* Consolidação da engenharia de variáveis como ferramenta essencial na EDA.
* Evolução da análise exploratória para uma narrativa analítica coerente e orientada a hipóteses.

---

**30/01/2026**

* Concluí a Semana 3 do projeto com o encerramento completo da Análise Exploratória de Dados (EDA) do dataset Titanic.
* Realizei análises combinadas entre múltiplas variáveis, aprofundando a compreensão da interação entre classe social, sexo, idade, tarifa e tamanho da família.
* Executei o estudo de sobrevivência considerando simultaneamente classe e tamanho da família, identificando que o impacto do FamilySize varia de forma significativa conforme a classe social.
* Consolidei todas as hipóteses iniciais no **Estudo 10 — Síntese das Hipóteses**, classificando-as como confirmadas, parcialmente confirmadas ou não confirmadas com base nas evidências observadas.
* Produzi uma célula final de fechamento analítico no notebook, conectando os insights individuais em uma visão integrada do problema.
* Encerrei o notebook `titanic_analysis.ipynb`, garantindo organização, clareza narrativa e alinhamento com boas práticas de projetos de portfólio.
* Criei e estruturei o `README.md` do projeto, descrevendo objetivo, etapas realizadas, principais análises e conclusões.
* Incluí visualizações relevantes no README, organizando-as em uma pasta dedicada (`imagens`) e ajustando corretamente os caminhos relativos para exibição no GitHub.
* Preparei o repositório para versionamento final, garantindo consistência entre notebook, diário de estudos e documentação do projeto.

**Aprendizados do dia:**

* Importância da análise multivariada para evitar interpretações simplistas.
* Consolidação de hipóteses como etapa essencial de projetos analíticos.
* Integração entre análise técnica e documentação clara para projetos de portfólio.
* Uso estratégico de visualizações no README para comunicação com recrutadores.
* Maturidade no encerramento de projetos, garantindo entrega profissional e bem estruturada.

---