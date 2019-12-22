SELECT pokemons.name, trainers.name, pokemon_trainer.pokelevel, pokemons.primary_type, pokemons.secondary_type 
from pokemons 
INNER JOIN pokemon_trainer
ON 