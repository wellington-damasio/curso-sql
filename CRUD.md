## O que é um CRUD?
- _CRUD_ são as ações que mais são utilizadas em todas a aplicações;
- Create = criar/inserir dados (insert);
- Read = ler dados (select);
- Update = atualizar dados (update);
- Delete = deletar / remover dados (delete);
Toda aplicação com um banco de dados tem pelo menos uma destas operações (possivelmente todas)


## Selecionando colunas específicas em consultas à tabelas
- Troca-se o `*` pelo nome das colunas
- `SELECT coluna1, coluna2 FROM <table>`
- Desta maneira criamos um filtro, deixando nossa consulta ao banco de dados um pouco mais leve

## A Importância do WHERE 
- O WHERE é uma cláusula de algumas queries, que determina quais registros vamos atualizar;
- Ex: WHERE `id = 103`
- Caso não inserirmos estas instruções em atualizações ou remoções (delete), vamos aplicar a querie em
todos os dados;
- Então lembre-se de inserir WHERE em UPDATE e DELETE

## Atualizando Dados
- Para atualizar dados vamos utilizar a instrução UPDATE;
- `UPDATE <tabela> SET <coluna=valor>, <coluna2=valor2> WHERE <condicao>`
- Podemos inserir mais colunas caso separemo-as por virgula

## Deletando Dados
- Para deletar dados vamos utilizar a instrução DELETE;
- `DELETE FROM <tabela> WHERE <condicao>`
- Lembre-se de utilizar o `WHERE` para não deletar todos os dados

