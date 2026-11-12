# Règles de Pac-Man

Bienvenue dans l'exercice Règles de Pac-Man, sur le parcours Elixir d'Exercism.
Si tu as besoin d'aide pour exécuter les tests ou soumettre ton code, consulte `HELP.md`.
Si tu es bloqué sur l'exercice, consulte `HINTS.md`, mais essaie d'abord de le résoudre sans les utiliser :)

## Introduction

## Booléens

Elixir représente les valeurs vrai et faux avec le type booléen. Il n'y a que deux valeurs : `true` et `false`. On peut affecter ces valeurs à une variable :

```elixir
true_variable = true
false_variable = false
```

On peut évaluer des expressions booléennes strictes à l'aide des opérateurs `and/2`, `or/2` et `not/1`.

```elixir
true_variable = true and true
false_variable = true and false

true_variable = false or true
false_variable = false or false

true_variable = not false
false_variable = not true
```

Quand on écrit une fonction qui renvoie une valeur booléenne, il est idiomatique de terminer le nom de la fonction par un `?`. On peut utiliser la même convention pour les variables qui stockent des valeurs booléennes.

```elixir
def either_true?(a?, b?) do
  a? or b?
end
```

## Instructions

Dans cet exercice, on va traduire quelques règles du jeu classique Pac-Man en fonctions Elixir.

Il y a quatre règles à traduire, toutes liées aux états du jeu.

> Ne te préoccupe pas de la façon dont les arguments sont obtenus, concentre-toi simplement sur leur combinaison pour renvoyer le résultat voulu.

## 1. Définis si Pac-Man mange un fantôme

Définis la fonction `Rules.eat_ghost?/2` qui prend deux arguments (_si Pac-Man a une super pac-gomme active_ et _si Pac-Man touche un fantôme_) et renvoie une valeur booléenne indiquant si Pac-Man peut manger le fantôme. La fonction doit renvoyer vrai uniquement si Pac-Man a une super pac-gomme active et touche un fantôme.

```elixir
Rules.eat_ghost?(false, true)
# => false
```

## 2. Définis si Pac-Man marque des points

Définis la fonction `Rules.score?/2` qui prend deux arguments (_si Pac-Man touche une super pac-gomme_ et _si Pac-Man touche une pac-gomme_) et renvoie une valeur booléenne indiquant si Pac-Man a marqué des points. La fonction doit renvoyer vrai si Pac-Man touche une super pac-gomme ou une pac-gomme.

```elixir
Rules.score?(true, true)
# => true
```

## 3. Définis si Pac-Man perd

Définis la fonction `Rules.lose?/2` qui prend deux arguments (_si Pac-Man a une super pac-gomme active_ et _si Pac-Man touche un fantôme_) et renvoie une valeur booléenne indiquant si Pac-Man perd. La fonction doit renvoyer vrai si Pac-Man touche un fantôme et n'a pas de super pac-gomme active.

```elixir
Rules.lose?(false, true)
# => true
```

## 4. Définis si Pac-Man gagne

Définis la fonction `Rules.win?/3` qui prend trois arguments (_si Pac-Man a mangé toutes les pac-gommes_, _si Pac-Man a une super pac-gomme active_ et _si Pac-Man touche un fantôme_) et renvoie une valeur booléenne indiquant si Pac-Man gagne. La fonction doit renvoyer vrai si Pac-Man a mangé toutes les pac-gommes et n'a pas perdu d'après les arguments définis dans la partie 3.

```elixir
Rules.win?(false, true, false)
# => false
```

## Source

### Created by

- @neenjaw

### Contributed to by

- @Cohen-Carlisle