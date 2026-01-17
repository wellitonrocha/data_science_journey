# 📘 Semana 01 – Fundamentos de Git e GitHub

## 🎯 Objetivos da Semana
A primeira semana da jornada teve como foco compreender os **fundamentos do Git e GitHub**, configurando corretamente o ambiente de trabalho e estabelecendo uma estrutura organizada para os projetos futuros.  
Os principais objetivos foram:
- Instalar e configurar o Git localmente.  
- Conectar o repositório remoto do GitHub ao ambiente de desenvolvimento (VS Code).  
- Aprender os comandos básicos e intermediários de versionamento.  
- Criar e gerenciar branches para organizar o fluxo de trabalho.  
- Realizar commits, merges e Pull Requests de forma clara e profissional.  
- Documentar aprendizados em um diário de estudos.  
- Compartilhar reflexões estratégicas no LinkedIn.  

---

## 📂 Estrutura da Pasta
A pasta `Semana01_GitFundamentos` contém:
- `README.md` → Documento explicativo da semana. (Este documento)  
- `diario_estudos.md` → Registro diário das atividades e aprendizados.  

---

## 🛠️ Tópicos Abordados
1. **Instalação e Configuração do Git**
   - `git config --global user.name`
   - `git config --global user.email`
   - Integração com VS Code.

2. **Criação e Conexão de Repositório**
   - `git init` para iniciar repositório local.  
   - `git remote add origin` para conectar ao GitHub.  
   - Estruturação inicial de pastas para 12 semanas.  
   - `git clone` para simular colaboração e replicar repositórios.  

3. **Comandos de Versionamento**
   - `git add <arquivo>` → adicionar arquivo específico ao stage.  
   - `git add .` → adicionar todos os arquivos.  
   - `git commit -m "mensagem"` → salvar alterações.  
   - `git push origin <branch>` → enviar para repositório remoto.  
   - `git pull origin <branch>` → atualizar repositório local.  
   - `git log` → visualizar histórico de commits.  
   - `git revert <hash>` → desfazer commit específico mantendo histórico.  
   - `git stash` / `git stash pop` → salvar e restaurar alterações temporárias.  

4. **Branches e Fluxo de Trabalho**
   - `git checkout -b nome_branch` → criar nova branch.  
   - `git checkout nome_branch` → alternar entre branches.  
   - `git merge nome_branch` → mesclar branch na principal.  
   - Criação de Pull Requests no GitHub para revisão e integração.  

5. **Histórico, Organização e Versões**
   - Boas práticas de mensagens de commit.  
   - Uso de tags para marcar versões concluídas:  
     - `git tag v1.0-semana1` → conclusão parcial.  
     - `git tag v1.1-semana1` → conclusão final da semana.  
   - `git push origin --tags` → enviar tags para o repositório remoto.  

6. **Documentação**
   - Criação e atualização contínua do arquivo `diario_estudos.md`.  
   - Estruturação de README principal e README específico da semana.  
   - Registro diário das atividades e reflexões.  
   - Publicação de post estratégico no LinkedIn consolidando aprendizados.  

---

## 📈 Reflexões
- O versionamento garante rastreabilidade e segurança no desenvolvimento.  
- Branches e Pull Requests permitem organizar e revisar mudanças de forma profissional.  
- O uso de `.gitignore` mantém o repositório limpo e organizado.  
- Tags marcam versões concluídas e facilitam o acompanhamento da evolução.  
- `git stash` e `git revert` ampliam o controle sobre alterações e histórico.  
- `git clone` é essencial para simular colaboração e iniciar projetos a partir de repositórios existentes.  
- Documentar cada etapa fortalece o aprendizado e cria um portfólio sólido.  
- Compartilhar aprendizados em redes profissionais como o LinkedIn amplia networking e reforça a jornada de evolução em ciência de dados.  

---

## ✅ Encerramento da Semana 1
Semana concluída com sucesso! 🚀  
Agora o próximo passo é iniciar a **Semana 2** com prática de SQL utilizando o dataset **Northwind**, mantendo o mesmo ritmo de registro e documentação.  
