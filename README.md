# README

## Pokemon API avec fontionnement CRUD

### Notes

- Le paramètre pour le numéro d'entrée dans le pokedex est "identifier" et non "id"

- Étant donné que certains pokemon partagent le même numéro d'entrée dans le pokedex (voire, les méga évolutions et les formes diverses d'un pokemon), l'ID d'un pokemon dans la base de données ne correspond pas nécessairement à son numéro de pokedex.

- Les paramètres pour une nouvelle entrée: identifier, name, type_1, type_2, total, hp, attack, defense, sp_attack, sp_defense, speed, generation, legendary

- Les résultats sont en format JSON

- La base de données, étant en SQLite, n'est pas optimisée pour recevoir des connexions concurrentes. Les tests unitaires doivent donc être lancés individuellement.

### Fonctionnement du API

- index - Retourner une liste paginée de pokemon (10 résultats par page) -- Paramètre optionel: page_nb (numéro de page)
  
- show - Retourner un pokemon avec ID

- create - Créer une nouvelle entrée

- update - Modifier une entrée existante

- destroy - Supprimer une entrée existante

<h3>Tests unitaires</h3>

- Show
- Create
- Update
- Delete
