#What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id;
#What is Rufflet's secondary type?
SELECT types.name FROM types INNER JOIN pokemons ON pokemons.name = 'Rufflet' AND types.id = pokemons.secondary_type;
#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name from pokemons INNER JOIN pokemon_trainer ON trainerID = 303 and pokemons.id = pokemon_trainer.pokemon_id;
#How many pokemon have a secondary type Poison
SELECT count(*) FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id AND types.name = 'poison';
#What are all the primary types and how many pokemon have that type?
SELECT types.name, count(*) from pokemons INNER JOIN types ON pokemons.primary_type = types.id GROUP BY types.name;
#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT count(*) FROM pokemon_trainer LEFT JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
 AND pokemon_trainer.pokelevel > 100 GROUP BY pokemon_trainer.trainerID;
#How many pokemon only belong to one trainer and no other?

 