-- Active: 1708620882651@@127.0.0.1@3306

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, 'bulbasaur', 'grass', 45, 49, 49, 65, 65, 45),
    (2, 'ivysaur', 'grass', 60, 62, 63, 80, 80, 60),
    (3, 'venusaur', 'grass', 80, 82, 83, 100, 100, 80),
    (4, 'charmander', 'fire', 39, 52, 43, 60, 50, 65),
    (5, 'charmeleon', 'fire', 58, 64, 58, 80, 65, 80),
    (6, 'charizard', 'fire', 78, 84, 78, 109, 85, 100),
    (7, 'squirtle', 'water', 44, 48, 65, 50, 64, 43),
    (8, 'wartortle', 'water', 59, 63, 80, 65, 80, 58),
    (9, 'blastoise', 'water', 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

SELECT * FROM pokemons
WHERE speed > 60;

SELECT * FROM pokemons
WHERE special_attack >= 60 AND attack >= 60;

SELECT * FROM pokemons
WHERE name LIKE '%saur';
-- Dependendo o lugar da %, ele procura aonde está a palavra que buscamos. no começo ele procura palavras que terminam com o que escolhemos, já no fim o contrário, ele busca palavras que começam com saur.  Já se for no fim e no começo ele busca qualquer palavra que tenha saur.


-- Média simples usando AVG
SELECT AVG(hp) from pokemons;
-- Dentro dos parenteses vai o que queremos fazer a média.

-- Buscando o número de linhas da tabela pokemons.
SELECT COUNT(*) as numberPokemons from pokemons;

SELECT AVG(hp) as mediaHp FROM pokemons;
-- dando um apelido com 'as', no caso mediaHp.

-- Ordenando em ordem Decrescente
SELECT * FROM pokemons
ORDER BY defense DESC

-- Ordenando em ordem Crescente
SELECT *  FROM pokemons
ORDER BY defense ASC

-- Agrupando:
-- Dessa forma já pegamos todos os pokemons, vemos quantos pokemons de cada tipo tem com o COUNT e já agrupamos ele por tipos.
SELECT COUNT(*) as numberOfPokemons, type FROM pokemons
GROUP BY type;

-- Limitando resultados a 3 linhas, nesse caso pegamos as três lihas depois da quarta linha usando o OFFSET.
SELECT * FROM pokemons
LIMIT 3 OFFSET 4;


-----------------Fixação----------------------

SELECT * FROM pokemons
WHERE type = 'fire' OR type = 'grass';


SELECT * FROM pokemons
ORDER BY attack ASC


SELECT * FROM pokemons
LIMIT 3 OFFSET 3;
