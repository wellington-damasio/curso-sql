CREATE TABLE pessoas (
  nome VARCHAR(100),
  cpf CHAR(11),
  descricao MEDIUMTEXT
);

CREATE TABLE contaBancaria (
  nome VARCHAR(60),
  cpf CHAR(11),
  caixa FLOAT(10, 2)
);

CREATE TABLE produtos (
  nome VARCHAR(50),
  sku CHAR(5),
  informacoes MEDIUMTEXT
);

CREATE TABLE cadastro(
  nome VARCHAR(100),
  sobrenome VARCHAR(100)
);

INSERT INTO produtos(nome, sku, informacoes) VALUES('Playstation 5', 46, 'Video game para menores de sou virgem');

INSERT INTO produtos(nome, sku, informacoes) VALUES('iPhone 12', 'AASWQ', 'Celular para moradores do bairro Cerqueira Lima')


INSERT INTO produtos(nome, sku, informacoes) VALUES('Pão', 'XXAQW', 'Comida')

CREATE TABLE servidores(
  computador VARCHAR(40),
  espaco_em_disco INT(10),
  ativo BOOL
);

INSERT INTO servidores(computador, espaco_em_disco, ativo) VALUES('MegaMax' 20, 1)

INSERT INTO servidores(computador, espaco_em_disco, ativo) VALUES('Dragon', 10, 0)

CREATE TABLE pessoas(
  nome VARCHAR(100),
  data_de_nascimento DATE
);

INSERT INTO pessoas(nome, data_de_nascimento) VALUES('Wellington Damasio', '2002-12-16')


INSERT INTO pessoas(nome, data_de_nascimento) VALUES('Luana Moreira', '2001-08-22')


INSERT INTO pessoas(nome, data_de_nascimento) VALUES('Saulo Vicente', '2007-11-10')

CREATE TABLE funcionarios(
  nome VARCHAR(100)
)

ALTER TABLE funcionarios ADD COLUMN (profissao VARCHAR(50));


ALTER TABLE funcionarios ADD COLUMN(cpf CHAR(11))

INSERT INTO funcionarios(nome, profissao, cpf) VALUES('Amanda', 'Construtora', '33344455587')

CREATE TABLE pessoas(
  nome VARCHAR(100),
  rg CHAR(8),
  cpf CHAR(11),
  limite INT(10)
);

CREATE TABLE pessoas(
  nome VARCHAR(100) NOT NULL,
  idade INT,
  genero CHAR(1)
);

CREATE TABLE otarios(
  nome VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  genero CHAR(1) NOT NULL
);

CREATE TABLE produtos(
  id INT NOT NULL,
  nome VARCHAR(255),
  sku VARCHAR(10),
  PRIMARY KEY(id)
);

CREATE TABLE employees(
  id INT PRIMARY AUTO_INCREMENT NOT NULL,
  name VARCHAR(255),
  role VARCHAR(50)
);

-- RELACIONAMENTO DE TABELAS COM FOREIGN KEY
CREATE TABLE pessoas(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  idade INT
);

CREATE TABLE enderecos(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  rua VARCHAR(100),
  numero VARCHAR(10),
  pessoa_id INT NOT NULL,
  FOREIGN KEY(pessoa_id) REFERENCES pessoas(id)
);

CREATE TABLE contas(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(50),
  sobrenome VARCHAR(50),
  saldo DEC(10, 2),
  data_de_nascimento DATE
);

INSERT INTO contas(nome, sobrenome, saldo, data_de_nascimento) VALUES(
  'Wellington',
  'Damasio',
  9000000,
  '2002-12-16'
)

INSERT INTO contas(nome, sobrenome, saldo, data_de_nascimento) VALUES(
  'Aline',
  'Damasio',
  2391.90,
  '2002-12-16'
)

INSERT INTO contas(nome, sobrenome, saldo, data_de_nascimento) VALUES(
  'Yago',
  'Augusto',
  333.98,
  '2002-12-16'
)

-- UTILIZANDO O JOIN PARA UNIR TABELAS
SELECT employees.first_name, employees.last_name, 
salaries.salary FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 120000 -- ESPECIFICANDO/FILTRANDO QUERY
ORDER BY DESC; -- ORDENADO QUERY

SELECT first_name, hire_date, COUNT(hire_date) FROM employees
GROUP BY hire_date HAVING COUNT(hire_date) <= 50;


-- QUERY LOUCA USANDO INNER JOIN, GROUP BY, ORDER BY E HAVING
SELECT employees.first_name, employees.hire_date, COUNT(employees.hire_date), salaries.salary 
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY hire_date HAVING COUNT(hire_date) <= 50
ORDER BY salary DESC;

SELECT employees.first_name, employees.gender, titles.title 
FROM employees
INNER JOIN titles ON employees.emp_no = titles.emp_no;


-- UTILIZANDO LEFT JOIN PARA RETORNAR ALGUNS DADOS NULOS
SELECT pessoas.nome, enderecos.* FROM pessoas
LEFT JOIN enderecos ON pessoas.id = enderecos.pessoa_id;

-- UTILIZANDO RIGHT JOIN
SELECT enderecos.rua, pessoas.nome FROM enderecos 
RIGHT JOIN pessoas ON pessoas.id = enderecos.pessoa_id

-- Ao contrário
SELECT pessoas.nome, enderecos.rua FROM pessoas
RIGHT JOIN enderecos ON enderecos.pessoa_id = pessoas.id;

-- JOIN EM MAIS DE UMA TABELA
SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE salaries.salary > 125000;

-- UTILIZANDO UMA SUBQUERY
SELECT emp_no, first_name, (
  SELECT SUM(salary)
  FROM salaries 
  WHERE employees.emp_no = salaries.emp_no
) AS salary_sum
FROM employees
ORDER BY emp_no DESC;

-- UTILIZANDO EXISTS EM UMA SUBQUERY
SELECT emp_no, first_name, last_name, (
  SELECT SUM(salary)
  FROM salaries
  WHERE employees.emp_no = salaries.emp_no
) AS salary_sum FROM employees
WHERE EXISTS (
  SELECT salary FROM salaries -- CHECANCO SE NA SUBQUERY EXISTE UM SALARIO ANUAL MAIOR QUE 2 MI
  WHERE employees.emp_no = salaries.emp_no
  HAVING SUM(salary) >= 2000000
);

-- UTILIZANDO ANY EM UMA SUBQUERY
SELECT first_name FROM employees
WHERE emp_no = ANY(
  SELECT emp_no
  FROM salaries
  WHERE salary > 150000
);

-- Creating posts table
CREATE TABLE posts(
  -- ID is a primary key, do not accept null and it auto increments
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  -- Maximum of 100 characters per title
  title VARCHAR(100), 
  -- Carries what the user wrote in the body of the post
  post_body TEXT, 
  -- Stores the tags of the post
  tags VARCHAR(120) 
);

-- USING CHAR_LENGTH TO GET LENGTH OF A STRING IN MYSQL
SELECT first_name, CHAR_LENGTH(first_name) AS 'qtd de caracteres' FROM actor;

SELECT address_id, address, CHAR_LENGTH(postal_code) AS 'zipcode_size' 
FROM address 
ORDER BY address_id DESC;

-- USING CONCAT()
SELECT CONCAT(first_name, ' ', last_name, ' has the ID of ', actor_id) AS actor_and_id FROM actor_info ORDER BY actor_id DESC;

-- USING CONCAT_WS() TO SEND AN ARRAY OF DATA TO THE BACKEND
SELECT CONCAT_WS(',', customer_id, store_id, first_name, last_name, email) AS customer_data 
FROM customer;

-- USING LEFT TO GET DATE WITHOUT TIME...
SELECT address_id, LEFT(last_update, 10) FROM address WHERE address_id > 150;

-- Using REPLACE() to write customer full name the right way
SELECT REPLACE(first_name, 'MARY', 'Mary') AS nome, REPLACE(last_name, 'SMITH', 'Smith') AS sobrenome
FROM customer
WHERE last_name = 'SMITH';

-- Playing around with ADDDATE
SELECT last_update, ADDDATE(last_update, "5 DAYS"),
ADDDATE(last_update, INTERVAL 3 MONTH),
ADDDATE(last_update, INTERVAL -2 YEAR)
FROM actor

-- Formatting american date to brazilian date with DATE_FORMAT
SELECT SUBSTR(last_update, 1, 10) AS american_date, 
DATE_FORMAT(last_update, "%d/%m/%Y") AS brazilian_date 
FROM actor;


-- Criando primeiro relacionamento entre tabelas (One to One)
CREATE TABLE estudantes(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR(100),
  turma VARCHAR(5)
);

CREATE TABLE contatos(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  telefone VARCHAR(20),
  estudante_id INT NOT NULL,
  FOREIGN KEY(estudante_id) REFERENCES estudantes(id)
);

SELECT estudantes.nome, estudantes.turma, contatos.telefone 
FROM estudantes
JOIN contatos ON contatos.estudante_id = estudantes.id;


-- Relacionamento One to Many 
CREATE TABLE clientes(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(100),
  data_nascimento DATE
);

CREATE TABLE pedidos(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  qtd_itens INT(10),
  total FLOAT,
  cliente_id INT NOT NULL,
  FOREIGN KEY(cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(nome, data_nascimento) VALUES('Wellington', '2002-12-16');
INSERT INTO clientes(nome, data_nascimento) VALUES('Amanda', '2000-01-24');

INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(10, 344.55, 1);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(2, 200, 1);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(4, 199.54, 1);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(1, 35.90, 1);

INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(10, 201.85, 2);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(2, 304.56, 2);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(4, 194.53, 2);
INSERT INTO pedidos(qtd_itens, total, cliente_id) VALUES(1, 22.10, 2);

SELECT clientes.nome, clientes.data_nascimento, pedidos.id AS pedido_id, pedidos.total 
AS total_de_compras
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id;

SELECT clientes.nome, clientes.data_nascimento, COUNT(pedidos.id) AS qtd_pedidos
FROM clientes
JOIN pedidos ON pedidos.cliente_id = clientes.id;

-- Criando Relacionamento Many to Many
CREATE TABLE materias(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(30)
);

-- Tabela Pivot (Salva o relacionamento entre duas tabelas)
CREATE TABLE estudante_materia(
  estudante_id NOT NULL,
  materia_id INT NOT NULL,
  FOREIGN KEY(estudante_id) REFERENCES estudantes(id),
  FOREIGN KEY(materia_id) REFERENCES materias(id)
);

-- Relacionando materias e estudantes por meio da Pivot Table
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(1, 3)
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(1, 4)
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(2, 2)
INSERT INTO estudante_materia(estudante_id, materia_id) VALUES(2, 1)

-- Query com JOIN em relacionamento MANY TO MANY
SELECT * FROM estudantes
JOIN estudante_materia ON estudante_materia.estudante_id = estudantes.id 
AND estudante_materia.materia_id = 2;







