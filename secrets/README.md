# Secrets

Bienvenue dans l'exercice Secrets, sur le parcours Elixir d'Exercism.
Si tu as besoin d'aide pour exécuter les tests ou soumettre ton code, consulte `HELP.md`.
Si tu es bloqué sur l'exercice, consulte `HINTS.md`, mais essaie d'abord de le résoudre sans les utiliser :)

## Introduction

## Fonctions anonymes

En Elixir, les fonctions sont des citoyens de première classe. Cela signifie que :

- Les fonctions nommées et anonymes peuvent être affectées à des variables.
- Les fonctions nommées et anonymes peuvent être passées comme des données, en arguments et en valeurs de retour.
- Les fonctions anonymes peuvent être créées dynamiquement.

Contrairement aux fonctions nommées, les fonctions anonymes n'ont pas de référence statique à leur disposition : elles ne sont disponibles que si on les affecte à une variable ou si on les invoque immédiatement.

On peut utiliser les fonctions anonymes pour :

- Masquer des données grâce à la portée lexicale (aussi appelée fermeture).
- Créer des fonctions dynamiquement à l'exécution.

Les fonctions anonymes commencent par le mot réservé `fn`, les arguments sont séparés du corps de la fonction par le symbole `->`, et elles se terminent par un `end`. Comme pour les fonctions nommées, la dernière expression de la fonction est _renvoyée implicitement_ à la fonction appelante.

Pour invoquer une référence de fonction, il faut placer un `.` entre la variable de référence et la liste des arguments :

```elixir
function_variable = fn param ->
  param + 1
end

function_variable.(1)
# => 2
```

Tu peux même utiliser la notation de capture abrégée pour rendre cela plus concis :

```elixir
variable = &(&1 + 1)

variable.(1)
# => 2
```

## Manipulation de bits

Elixir prend en charge de nombreuses fonctions pour manipuler les bits, que l'on trouve dans le _module Bitwise_.

- `band/2` : ET bit à bit
- `bsl/2` : décalage à gauche (SHIFT LEFT) bit à bit
- `bsr/2` : décalage à droite (SHIFT RIGHT) bit à bit
- `bxor/2` : OU exclusif bit à bit
- `bor/2` : OU bit à bit
- `bnot/1` : NON bit à bit

Voici un exemple d'utilisation d'une fonction bit à bit :

```elixir
Bitwise.bsl(1, 3)
# => 8
```

Toutes les fonctions bit à bit ne fonctionnent que sur des entiers.

Si tu utilises Elixir version 1.9 ou antérieure, tu devras appeler `require Bitwise` au début de la définition du module pour pouvoir utiliser le _module Bitwise_.

## Instructions

Dans cet exercice, tu dois écrire le logiciel d'un appareil de chiffrement qui fonctionne en appliquant des transformations à des données. Il te faut un moyen de créer facilement des fonctions complexes en combinant des fonctions plus simples.

Pour chaque tâche, renvoie une fonction anonyme qui peut être appelée depuis la portée appelante.

Toutes les fonctions doivent attendre des arguments entiers. Les entiers conviennent aussi pour effectuer des opérations bit à bit en Elixir.

## 1. Crée un additionneur

Implémente `Secrets.secret_add/1`. Elle doit renvoyer une fonction qui prend un argument et lui ajoute l'argument passé à `secret_add`.

```elixir
adder = Secrets.secret_add(3)
adder.(2)
# => 5
```

## 2. Crée un soustracteur

Implémente `Secrets.secret_subtract/1`. Elle doit renvoyer une fonction qui prend un argument et soustrait de cet argument le secret passé à `secret_subtract`.

```elixir
subtractor = Secrets.secret_subtract(2)
subtractor.(3)
# => 1
```

## 3. Crée un multiplicateur

Implémente `Secrets.secret_multiply/1`. Elle doit renvoyer une fonction qui prend un argument et le multiplie par le secret passé à `secret_multiply`.

```elixir
multiplier = Secrets.secret_multiply(7)
multiplier.(3)
# => 21
```

## 4. Crée un diviseur

Implémente `Secrets.secret_divide/1`. Elle doit renvoyer une fonction qui prend un argument et le divise par le secret passé à `secret_divide`.

```elixir
divider = Secrets.secret_divide(3)
divider.(32)
# => 10
```

Utilise la division entière pour que le résultat soit compatible avec les entrées attendues par les autres fonctions.

## 5. Crée une fonction « and »

Implémente `Secrets.secret_and/1`. Elle doit renvoyer une fonction qui prend un argument et effectue une opération _and_ bit à bit entre cet argument et le secret passé à `secret_and`.

```elixir
ander = Secrets.secret_and(1)
ander.(2)
# => 0
```

## 6. Crée une fonction « xor »

Implémente `Secrets.secret_xor/1`. Elle doit renvoyer une fonction qui prend un argument et effectue une opération _xor_ bit à bit entre cet argument et le secret passé à `secret_xor`.

```elixir
xorer = Secrets.secret_xor(1)
xorer.(3)
# => 2
```

## 7. Crée un combinateur de fonctions

Implémente `Secrets.secret_combine/2`. Elle doit renvoyer une fonction qui prend un argument et lui applique, dans l'ordre, les deux fonctions passées à `secret_combine`.

```elixir
add_one = Secrets.secret_add(1)
multiply_by_2 = Secrets.secret_multiply(2)
combined = Secrets.secret_combine(add_one, multiply_by_2)

combined.(3)
# => 8
```

## Source

### Created by

- @neenjaw