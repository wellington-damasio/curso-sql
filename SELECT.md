## A Importância do SELECT
- A maioria das queries em um banco de dados são de consulta;
- E é também o comando com mais vairações;
- Para receber detalhados resultados, precisamos aprender todo o poder do SELECT;
- Desta maneira criaremos filtros avançados e conseguiremos atingir o resutado desejado facilmente;

## Operadores
- Comparação: (<, >, >=, <=, =) estes operadores vão filtrar dados baseados nas comparações;
- BETWEEN: seleção entre um intervalo;
- LIKE: seleção por meio de algum padrão;
- IN: seleção entre um conjunto de valores específicos

## Cláusula WHERE
- É utilizado junto dos operadores;
- Utilizado para filtrar dados de maneira objetiva;

## Utilizando DISTINCT
- O DISTINCT vai selectionar apenas as variações de valores;
- Por ex: temos 10 cidades diferentes de usuários no sistema, só receberemos 10 resultados;
- O comando é: `SELECT DISTINCT <coluna> FROM <tabela>`

## Operadores Lógicos
-  Podemos combinar a cláusula WHERE com operadores lógicos como:
  - AND: recebe duas condições, só volta os resultados que atendem ambas;
  - OR: recebe duas condições, volta os resultados que atendem pelo menos uma;
  - NOT: inverte uma cláusula

## Utilizando o AND
- Com o AND temos um filtro duplo para resultados;
- Ex: `WHERE salario > 10000 AND cargo = 'programador`;
- Programadores com salario maior que 10.000

## Utilizando o OR
- O OR tem a possibilidade de retornar qualquer uma das condições impostas;
- Ex: WHERE salario > 5000 || profissao = 'programador'
- Qualquer dado que atenda a pelo menos uma das cláusulas será selecionado

## Utilizando o NOT
- O NOT inverte uma cláusula
- Ex: `WHERE NOT profissao = programador`
- Seleciona o dados de todas a pessoas que não trabalham como programador(a)

## Utilizando a ORDER BY
- A ORDER BY é uma instrução para ordenação de resultados;
- Aceita 2 argumentas: ASC, DESC (Ascendente e Descendente)
- Utilizamos após o WHERE caso o tenhamos na query
- `ORDER BY <coluna> <ASC||DESC>`

## Funções no SQL
- Funções são blocos de código reaproveitáveis
- Utilizadas para extrair resultados que demandam muita programação

## Função MIN
- Vai retornar o menor valor de uma coluna específica
- `SELECT MIN(<coluna>) FROM <tabela>`

## Função MAX
- Retorna o maior valor de uma coluna específica;
- `SELECT MAX(<coluna>) FROM <tabela>`

## Função COUNT
- A função COUNT vai retornar o número de valores que combinam com algum critério;
- Ex: `SELECT COUNT(*) FROM salaries WHERE salary > 100000;`
- Teremos a quantidade de salários maiores que 100.000

## Função AVG
- Retorna a média de uma determinada coluna;
- AVG = average (média);
- `SELECT AVF(salary) FROM salaries`

## Função SUM
- Retorna a soma de todos os valores de uma coluna;
- `SELECT SUM(salary) FROM salaries`

## Operador LIKE
- É sempre utilizado junto ao WHERE;
- Tem a premissa de filtrar ainda mais nossos resultados de queries;
- Utilizamos o coringa %, que nos ajuda nas buscas;
- `SELECT * FROM employees WHERE first_name LIKE '%ber%'`
- Desta forma, teremos a seleção de todos os nomes que contém 'ber'

## Operador IN
- O IN vai fazer uma busca por um conjunto de valores especificos;
- `SELECT * FROM dept_emp WHERE dept_no IN('d004', 'd005', 'd006');`
- Seleciona os funcionarios com os dept_no especificados

## Operador BETWEEN
- O BETWEEN é parecido com o IN, mas ele vai receber uma faixa de valores;
- `SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd001' AND 'd008';`
- Neste exemplo retornamos os departamentos do 1 ao 8;

## Criando um ALIAS
- ALIAS pode servir para renomear uma coluna com nome não objetivo ou colunas originadas de função
- SELECT SUM(salary) AS salaries_sum FROM salaries;
