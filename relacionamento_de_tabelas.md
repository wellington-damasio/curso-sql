## O que são relacionamentos
- SQL é uma linguagem de banco de dados relacionais, ou seja, que possuem relações;
- Estas relações servem para a separação de responsabilidades de tabelas.
- Ex: cadastro, endereco, pedidos;
- Há um link entre as tabelas, que são as Foreign Keys (FKs);
- Há também vários tipos de relacionamentos:
  - Um para um;
  - Um para muitos;
  - Muitos para muitos;

## Tipos de relacionamentos
- One to One (um para um): Quando uma tabela possui uma conexão com outra e vice-versa;
- One to Many (um para muitos): Quando uma tabela possui diversos registros em outra, porém esta
segunda só pode possui uma conexão;
- Many to many(muitos para muitos): Quando duas tabelas podem ter conexões com diversos outros 
registros entre elas;

## One to One
- Com este relacionamento teremos no máximo um registro ligado a outro;
- Ex: Estudante x Informações de Contato;
- Cada estudante pode ter apenas uma informação de contato e a informação de contato é apenas daquele
estudante;
- A estrutura é feita por duas tabelas ligadas por uma FOREIGN KEY;

## One to Many
- Com este relacionamento teremos uma tabela que possui vários relacionamentos com outra, mas o 
inverso não ocorre;
- Ex: Cliente x Pedido;
- Um cliente pode ter diversos pedidos na loja, porém um pedido é de um único cliente;
- Semelhante ao One to One, porém a segunda tabela tem diversos registros ligados a um na outra;

## Many to Many
- No Many to Many as duas tabelas tem múltiplas relações entre si;
- Ex: Alunos x Matérias;
- Um aluno pode estar fazendo diversas matérias diferentes e uma matéria pode ter diversos alunos 
matriculado;
- Normalmente este recurso usa uma pivot table, onde esta serve apenas para conter as relações entre
tabelas;
