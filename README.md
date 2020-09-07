# README

## Pokemon API avec fontionnement CRUD

### Notes

- Le ID d'un pokemon dans la base de donnée ne correspond pas nécessairement à sont numéro de pokedex étant donnée que certains pokemon partagent le même numéro (voire, les méga évolutions et les formes divers d'un pokemon)

- Les paramètres pour une nouvelle entrée: identifier, name, type_1, type_2, total, hp, attack, defense, sp_attack, sp_defense, speed, generation, legendary

- Les résultants sont en format json

- La base de donnée est SQLite et n'est donc pas optimisée pour recevoir plusieurs connections successives alors les tests unitaires doivent êtres éxecutés une à la fois.

### Fonctionnement du API

- index - Retourne liste paginée de pokemon (10 résultats par page) -- Paramètre optionel: page_nb (numéro de page)
  
- show - Retourne pokemon avec ID

- create - Créer une nouvelle entrée

- update - Modifier une entrée existante

- destroy - Supprimer une entrée existante

<h3>Tests unitaires</h3>

- Show
- Create
- Update
- Delete
