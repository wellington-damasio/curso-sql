##  O que são funções?
- As funções são blocos de códigos já definidos que podem ser reutilizados;
- Assim como a maioria das linguagens de programação já possuem funções prontas, o SQL também;
- Elas nos ajudam a atingir resultados de forma simples, que com apenas queries seriam atingidos de
forma complicada e ineficiente;

## CHAR_LENGTH
- Nos retorna o número de caracteres de uma string de uma determinada coluna;
- `CHAR_LENGTH(<nome_da_coluna>)`


## CONCAT
- Concatena (junta) duas ou mais strings;
- Concatenar significa unir strings;
- `CONCAT('MySQL', ' é ' , 'bom')`

## CONCAT_WS
- Concatena duas ou mais strings com um separador comum;
- O primeiro argumento é o separador

## FORMAT 
- Formata um número de acordo com o número de casas determinado por argumentos;
- Além disso, pode até mesmo arredondar o número;
- `FORMAT(numero, 2)` (Formata o numero com duas casas decimais)

## INSTR
- Retorna a posição do caractere ou string que estamos buscando em uma outra string;
- `INSTR(<string||coluna< 'a')`

## LCASE
- Transforma todo o texto retornado para lower case.
- `LCASE(CONCAT(first_name, ' ', last_name))`

## LEFT
- Extrai uma quantidade de caracteres de uma string;
- A extração acontece da esquerda para a direita;
- A quantidade de caracteres a extraidos é passado por parâmetro;
- `LEFT(<string>, 5)`

## REPLACE 
- Troca alguma parte de uma string por outra enviada por parâmetro;
- `REPLACE(<texto>, <antigo>, <novo>)`
- Desta forma podemos fazer manipulações nos valores retornados;

## RIGHT
- Extrai caracteres da direita para a esquerda;
- RIGHT(<texto>, 10)

## SUBSTR
- Extrai uma string a partir de dois argumento, inicio (index) e número de caracteres;
- `SUBSTR(<texto>, <inicio>, <nmr_de_char>)`

## UCASE
- Transforma todas as letras em maiúscula;
- UCASE(<texto>)
