# O que são constraints
- São regras que determinam como os campos serão preenchidos;
- Por ex.: NOT NULL = o campo não pode ser nulo;
- As constraints são adicionadas na criação da tabela geralmente, porém podemos alterar tabelas
para adicioná-las;
- Estas regras são de grande utilidade, pois ajudam a organizar e pradronizar nosso projeto;

## NOT NULL
- Força o valor de uma coluna específica a não ser nulo;
- `VARCHAR(100) NOT NULL`

## UNIQUE
- Garante que todos os valores em uma coluna serão diferente;
- Um caso de uso é e-mail. Não queremos email's duplicados no banco de dados;

## AUTO INCREMENT
- Serve para adicionar a quantidade de um em todo registro adicionado;
- Esta constraint é muito utilizada na coluna id, já que ela é única e também chave primária;
- Fazendo isto, não precisamos nos preocupar com o valor no INSERT;

## INDEX
- Faz a consulta que envolva a mesma se tornar mais rápido;
- Sem o índice a consula começa da primeira a ultima coluna até encontrar o que você precisa, com o
índice as demais serão ignoradas;
- As consultas melhoradas pelo INDEX são as com WHERE;

