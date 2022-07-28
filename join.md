## O que é um JOIN?
- São consultas que envolvem duas ou mais tabelas;
- As tabelas geralmente possuem relação entre si;
- Temos, então, uma consulta mais complexa e com mais dados;
- Há 3 tipos mais utilizados de JOIN:
  - LEFT JOIN;
  - RIGHT JOIN;
  - INNER JOIN

## INNER JOIN
- Vai resultar nas colunas que fazem relação entre as tabelas;
- Utilizamos a instrução ON para determinar as colunas que precisam ser iguais;
- `SELECT employees.first_name, employees.gender, titles.title 
   FROM employees
   INNER JOIN titles ON employees.emp_no = titles.emp_no;`

## LEFT JOIN
- Vai retornar todos os dados da tabela da esquerda e os necessários da direita;
- Haverá dados retornados da tabela esquerda mesmo se não corresponder com a outra;


