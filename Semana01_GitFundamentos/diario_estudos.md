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
- Fiz merge da branch `semana1-dia-14jan` na branch principal (`main`) utilizando `git merge`.  
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
- Realizei commit das atividades do dia com mensagem clara e objetiva:  
  ```bash
  git commit -m "Registro das atividades do dia 16/01: testes com stash, revert e clone"  
- Enviei a branch para o GitHub com `git push -u origin semana1-dia-16jan`.  

**17/01/2026**  
- Revisei todo o fluxo de trabalho com Git e GitHub consolidando os aprendizados da semana.  
- Criei um Pull Request da branch `semana1-dia-16jan` para a branch principal (`main`) e realizei o merge.  
- Testei novamente o fluxo completo: atualização da branch principal, criação de branch, commit, push e merge.  
- Organizei os arquivos e finalizei a documentação da Semana 1.  
- Criei uma tag final (`git tag v1.1-semana1`) para marcar a conclusão da semana.  
- Atualizei o repositório remoto com `git push origin --tags`.  
- Preparei e publiquei um post estratégico no LinkedIn compartilhando os aprendizados da Semana 1, destacando:  
  - Importância do versionamento para rastreabilidade e segurança.  
  - Uso de branches e Pull Requests para organização profissional.  
  - Documentação contínua como ferramenta de aprendizado e portfólio.  
  - Reflexão sobre como Git/GitHub são fundamentais para qualquer jornada em ciência de dados.  

---

## 📈 Reflexões da Semana – Conclusão
- Consolidar os fundamentos de Git/GitHub foi essencial para estruturar a jornada de 12 semanas.  
- O aprendizado prático com comandos básicos e intermediários trouxe confiança para lidar com versionamento em projetos reais.  
- A documentação diária fortaleceu o hábito de registrar aprendizados e criar um portfólio sólido.  
- Compartilhar reflexões no LinkedIn amplia networking e reforça a evolução profissional.  
- Encerrar a semana com tags e Pull Requests garante organização e marca o progresso alcançado.  

---

## ✅ Encerramento da Semana 1
Semana concluída com sucesso! 🚀  
Agora o próximo passo é iniciar a **Semana 2** com prática de SQL utilizando o dataset **Northwind**, mantendo o mesmo ritmo de registro e documentação.