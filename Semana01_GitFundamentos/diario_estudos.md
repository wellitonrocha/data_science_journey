# 📓 Diário de Estudos – Semana 1 (Fundamentos de Git/GitHub)

## 🎯 Objetivo da Semana
Aprender os comandos básicos de Git, configurar o repositório no GitHub e organizar a estrutura inicial para os projetos futuros.

---

## 📅 Registro Diário

**12/01/2026**  
- Instalei e configurei o Git localmente.  
- Conectei GitHub ao VS Code para facilitar versionamento.  
- Configurei usuário (`git config --global user.name` e `git config --global user.email`).  

**13/01/2026**  
- Inicializei repositório local com `git init` e conectei ao remoto com `git remote add origin`.  
- Adicionei o arquivo `README.md` principal com objetivos do projeto com visão geral.  
- Estruturei pastas para as 12 semanas da jornada.  
- Adicionei arquivo `diario_estudos.md` para registrar aprendizados da semana 1.  
- Fiz lançamento das atividades dia 12/01 e 13/01.  
- Testei comandos de `git add`, `git commit` e `git push` diretamente pelo terminal Bash.  

**14/01/2026**  
- Criei o arquivo `README.md` específico da Semana 1, detalhando objetivos e tópicos abordados.  
- Criei a branch `semana1-dia-14jan` para trabalhar isoladamente, utilizando `git checkout -b`.  
- Registrei as atividades do dia dentro dessa branch.  
- Configurei o arquivo `.gitignore` com `touch .gitignore` e `echo <pasta> >> .gitignore`, garantindo que pastas e arquivos desnecessários não sejam versionados.  
- Adicionei arquivos iniciais em cada pasta do projeto para estruturar melhor o repositório.  
- Preparei alterações para commit com `git add .`.  
- Realizei commit das mudanças com `git commit -m "Atualizações do dia 14/01"`.  
- Enviei a branch para o GitHub com `git push -u origin semana1-dia-14jan`.  

**15/01/2026**  
- Fiz merge da branch `semana1-dia-14jan` na branch principal (`master`) utilizando `git merge`.  
- Testei o comando `git pull` para atualizar repositório local com alterações remotas.  
- Explorei o comando `git log` para visualizar histórico de commits e entender melhor a rastreabilidade.  
- Pratiquei boas práticas de mensagens de commit, utilizando descrições claras e objetivas.  
- Criei uma tag (`git tag v1.0-semana1`) para marcar a conclusão parcial da primeira semana.  
- Documentei reflexões sobre a importância de versionamento e organização no desenvolvimento.  
- Atualizei o diário com todas as atividades realizadas até o momento.  

**16/01/2026** 
- Revisei todos os comandos básicos aprendidos até agora para fixação. 
- Testei o comando `git clone` em outro diretório para simular colaboração e verificar funcionamento do repositório remoto. 
- Criei uma nova branch `semana1-dia-16jan` para registrar atividades do dia. 
- Experimentei o comando `git stash` para salvar alterações temporárias e restaurá-las com `git stash pop`. 
- Testei o comando `git revert <hash>` para desfazer um commit específico sem perder histórico. 
- Documentei no diário os testes e resultados obtidos com `git stash` e `git revert`. 
- Realizei commit das atividades do dia com mensagem clara e objetiva. 
- Enviei a branch para o GitHub com `git push -u origin semana1-dia-16jan`.

---

## 📈 Reflexões da Semana (parciais até 15/01)  
- Branches permitem trabalhar de forma isolada e organizada, sem comprometer a branch principal.  
- O uso de `.gitignore` é essencial para manter o repositório limpo e evitar arquivos desnecessários.  
- Tags ajudam a marcar versões concluídas e facilitam o acompanhamento da evolução do projeto.  
- A prática diária com comandos básicos fortalece a confiança no uso do Git.  

## 📈 Reflexões da Semana (parciais até 16/01) 
- O comando `git clone` é essencial para simular colaboração e iniciar projetos a partir de repositórios existentes. 
- `git stash` é útil para guardar alterações temporárias sem precisar commitar imediatamente. 
- `git revert` permite desfazer mudanças de forma segura, mantendo o histórico intacto. 
- A prática diária está consolidando não apenas os comandos básicos, mas também intermediários, preparando para fluxos de trabalho mais complexos.
