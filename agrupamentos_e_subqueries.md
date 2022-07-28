## UNION
- O UNION é utilizado para combinar o resultado de dois ou mais SELECT's;
- As colunas precisam ter o mesmo nome;
- Os resultados serão agregados em uma coluna só, porém podemos selecionar mais de uma coluna por vez
- Não podemos trazer resultados duplicados;
- `SELECT dept_no FROM departments UNION SELECT dept_no FROM dept_emp`

## UNION ALL 
- É utilizado para combinar o resultado de dois ou mais SELECT's;
- As colunas precisma ter o mesmo nome;
- Os resultados serão agregados em uma coluna só, porém podemos selecionar mais de uma coluna por vez
- Pode trazer resultados duplicados;
- `SELECT dept_no FROM departments UNION ALL SELECT dept_no FROM dept_emp`

## GROUP BY
- Serve para agrupar colunas e checar quantidades de determinados elementos;
- Ex: Quantos programadores ou designers existem em nosso banco de dados;
- `SELECT title, COUNT(title) AS 'QTD P/ TITLE' FROM titles GROUP BY title`

## HAVING
- É semelhante ao WHERE;
- Porém, vamos utilizar eles com aggregate functinos (SUM, AVG, GROUP BY), pois o WHERE não pode ser
utilizado nestes casos;
- Então, sempre que estamos utilizando uma destas funções de agregação de dados, precisamos optar
pelo HAVING;

## SUBQUERIES
- Subquery é uma query dentro de outra query;
- Teremos mais comumente dois SELECT's;
- A Subquery em alguns casos pode parecer muito com o JOIN;
- Porém as vezes precisamos de algo muito específico, então fazer uma subconsulta pode se tornar mais
prático que um JOIN

## EXISTS
- Serve para chechar se existe algum registro em alguma subquery;
- Desta maneira podemos retornar dados apenas se estes de fato existirem;

## ANY
- Vai retornar os resultados que recebem TRUE da subquery;
- Por meio de uma subquery receberemos apenas os resultados que condizem acom alguma condição;
- Ou seja: se queremos nomes de quem ganha mais de 150000, só receberemos nomes se alguém ganhar 
mais que 150000;
