## A importância do Database Design
- Aplicações que tem o desenho do banco já iniciam com uma documentação;
- E ainda uma organização préiva, que dita as regras do sistema e como ele funciona;
- O relacionamento entre entidades também é previsto;
- Erros podem ser resolvidos antes de acontecerem no código ou ainda antecipação da própria regra de
negócios;

## Análise de requisitos
- É o planejamento e a definição do sistema;
- Onde como o sistema deve funcionar é apresentado ou uma conversa com quem precisa do sistema é feita;
- Com base nestes dados e descrições vamos planejar o banco de dados;
- Temos um ponto de contato com a parte técnica e não-técnica;
- Aqui também podem ser relatadas dificuldades técnicas e criam-se alternativas para possíveis 
problemas;

## Normalização
- É dividida em diversos níveis, algumas das premissas são:
  - 0FN Toda tabela deve ter uma chave primária na tabela;
  - 1FN - Colunas guardam um único valor (atomicidade);
  - 2FN - Colunas que não pertencem ao tópico central da tabela devem ser externalizadas em outra 
  tabela;
  - 3FN - Deixar no banco de dados apenas valores que não são dependentes de outros, valores que tendema ser alterados com o tempo devem ficar na camanda do back-end

## Diagrama de Entidades Relacionais
- É um quadro onde se definem as tabelas e as relações entre si;
- Deixando o banco de dados visual para todos na equipe;
- Utilizado também para dar nome as tabelas e as colunas, além dos tipos de dados da mesma;
- Com este diagrama pronto, o desenvolvimento da aplicação e o entendimento do projeto tornam-se mais
rápidos;
