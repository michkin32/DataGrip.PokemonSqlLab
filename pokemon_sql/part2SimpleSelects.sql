#What are all the types of pokemon that a pokemon can have?
SELECT name From types;
#What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE id = 45;
#How many pokemon are there?
SELECT count(*) from pokemons;
#How many types are there?
SELECT count(*) from types;
#How many pokemon have a secondary type?
SELECT count(*) from pokemons WHERE secondary_type is NOT NULL;


