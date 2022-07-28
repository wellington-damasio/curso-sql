## ADDDATE
- Adiciona ou remove uma quantidade de horas, dias, meses ou anos a uma data;
- `ADDDATE(<coluna>, <data_para_adicionar>)`

## DATEDIFF
- Calcula a diferença de duas datas;
- O valor é informado em dias;
- DATEDIFF(<data1>, <data2>)

## ADDTIME
- Adiciona ou remove tempo a uma data (timestamp)
- Podemos utilizar o formato: yyyy-mm-dd hh:mm:ss ;
- `ADDTIME(<coluna>, <tempo>)`

## DATE_FORMAT
- Formata uma data com um padrão indicado;
- `DATE_FORMAT(<data>, <formato>)`;
- Se utilizarmos %Y, recebemos o ano completo

## DAY
- Retorna o dia da data utilizada na função;
- `DAY(<data>)`

## DAYOFWEEK
- Retorna o dia da semana de uma determinada data;
- `DAYOFWEEK(<data>)`
- Inicia no domingo (como 1)

## DAYOFYEAR
- Retorna o dia do ano de uma determinada data;
- `DAYOFYEAR(<data>)`
- O retorno é de 1 a 365;

## WEEKOFYEAR
- Retorna a semana do ano de uma determinada data;
- `WEEKOFYEAR(<data>)`
- O retorno é de 1 a 42;

## MONTH
- Extrai o mês de uma data;
- `MONTH(<data>)`;
- O retorno é de 1 a 12;

## YEAR
- Extrai o ano de uma data;
- `YEAR(<data>)`;
