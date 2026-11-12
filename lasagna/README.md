# Lasagnes

Bienvenue dans l'exercice Lasagnes, sur le parcours Elixir d'Exercism.
Si tu as besoin d'aide pour exécuter les tests ou soumettre ton code, consulte `HELP.md`.
Si tu es bloqué sur l'exercice, consulte `HINTS.md`, mais essaie d'abord de le résoudre sans les utiliser :)

## Introduction

## Les bases

### Variables

Elixir est un langage à typage dynamique, ce qui signifie que le type d'une variable n'est vérifié qu'à l'exécution. Grâce à l'opérateur de correspondance `=`, on peut lier une valeur de n'importe quel type à un nom de variable :

```elixir
# Bound an integer value of 1
count = 1
# You may re-bind variables
count = 2

# You may re-bind any type to a variable
count = false

# Strings can be created by enclosing characters within double quotes
message = "Success!"
```

### Modules

Elixir est un [langage de programmation fonctionnelle][functional-programming] et exige que toutes les fonctions nommées soient définies dans un _module_. Le mot-clé `defmodule` sert à définir un module. Tous les modules sont accessibles à tous les autres modules à l'exécution et n'ont pas besoin d'un _modificateur d'accès_ pour être visibles depuis les autres parties du programme. Un _module_ est l'équivalent d'une _classe_ dans d'autres langages de programmation.

```elixir
defmodule Calculator do
  # ...
end
```

### Fonctions nommées

Les _fonctions nommées_ doivent être définies dans un module. Le mot-clé `def` sert à définir une fonction nommée _publique_.

Chaque fonction peut prendre zéro argument ou plus. La valeur de la dernière expression d'une fonction est toujours _renvoyée implicitement_.

```elixir
defmodule Calculator do
  def add(x, y) do
    x + y
  end
end
```

Pour appeler une fonction, on précise son module et son nom, puis on passe une valeur pour chacun de ses arguments.

```elixir
sum = Calculator.add(1, 2)
# => 3
```

Le mot-clé `defp` peut être utilisé à la place de `def` pour définir une fonction _privée_. Les fonctions privées ne sont utilisables qu'à l'intérieur du module qui les a définies.

Lorsqu'on appelle une fonction depuis le module où elle est définie, on peut omettre le nom du module.

Tu peux aussi écrire des fonctions courtes avec une syntaxe sur une seule ligne (remarque la virgule `,` et les deux-points `:` autour du mot-clé `do`).

```elixir
defmodule Calculator do
  def subtract(x, y) do
    private_subtract(x, y)
  end

  defp private_subtract(x, y), do: x - y
end

difference = Calculator.subtract(7, 2)
# => 5

difference = Calculator.private_subtract(7, 2)
# => ** (UndefinedFunctionError) function Calculator.private_subtract/2 is undefined or private
#       Calculator.private_subtract(7, 2)
```

### L'arité des fonctions

Il est courant de désigner les fonctions par leur _arité_. L'_arité_ d'une fonction est le nombre d'arguments qu'elle accepte.

```elixir
# add/3 because this function has three arguments, thus an arity of 3
def add(x, y, z) do
  x + y + z
end
```

### Conventions de nommage

Les noms de modules doivent utiliser le `PascalCase`. Un nom de module doit commencer par une lettre majuscule `A-Z` et peut contenir des lettres `a-zA-Z`, des chiffres `0-9` et des underscores `_`.

Les noms de variables et de fonctions doivent utiliser le `snake_case`. Un nom de variable ou de fonction doit commencer par une lettre minuscule `a-z` ou un underscore `_`, peut contenir des lettres `a-zA-Z`, des chiffres `0-9` et des underscores `_`, et peut se terminer par un point d'interrogation `?` ou un point d'exclamation `!`.

### La bibliothèque standard

Elixir dispose d'une bibliothèque standard très riche et bien documentée. La documentation est disponible en ligne sur [hexdocs.pm/elixir][docs]. Garde ce lien quelque part, tu t'en serviras souvent !

La plupart des types de données intégrés ont un module correspondant qui propose des fonctions pour manipuler ce type de données, par exemple le module `Integer` pour les entiers, le module `String` pour les _strings_, le module `List` pour les listes, et ainsi de suite.

Un module notable est le module `Kernel`. Il fournit les capacités de base sur lesquelles repose le reste de la bibliothèque standard, comme les opérateurs arithmétiques, les macros de contrôle de flux, et bien d'autres choses encore. Les fonctions du module `Kernel` sont importées automatiquement, tu peux donc les utiliser sans le préfixe `Kernel.`.

### Les commentaires dans le code

Les commentaires permettent de laisser des notes aux autres développeurs qui lisent le code source. En Elixir, les commentaires sur une seule ligne sont précédés d'un `#`.

[functional-programming]: https://en.wikipedia.org/wiki/Functional_programming
[docs]: https://hexdocs.pm/elixir/Kernel.html#content

## Instructions

Dans cet exercice, tu vas écrire du code pour t'aider à cuisiner une excellente lasagne à partir de ton livre de cuisine préféré.

Tu as cinq tâches, toutes liées au temps passé à cuisiner la lasagne.

## 1. Définis le temps de cuisson attendu en minutes

Définis la fonction `Lasagna.expected_minutes_in_oven/0` qui ne prend aucun argument et renvoie le nombre de minutes que la lasagne doit passer au four. D'après le livre de cuisine, le temps de cuisson attendu au four est de 40 minutes :

```elixir
Lasagna.expected_minutes_in_oven()
# => 40
```

## 2. Calcule le temps de cuisson restant en minutes

Définis la fonction `Lasagna.remaining_minutes_in_oven/1` qui prend en argument le nombre de minutes que la lasagne a déjà passées au four et renvoie le nombre de minutes que la lasagne doit encore rester au four, d'après le temps de cuisson attendu en minutes de la tâche précédente.

```elixir
Lasagna.remaining_minutes_in_oven(30)
# => 10
```

## 3. Calcule le temps de préparation en minutes

Définis la fonction `Lasagna.preparation_time_in_minutes/1` qui prend en argument le nombre de couches que tu as ajoutées à la lasagne et renvoie le nombre de minutes que tu as passées à préparer la lasagne, en supposant que chaque couche te prend 2 minutes à préparer.

```elixir
Lasagna.preparation_time_in_minutes(2)
# => 4
```

## 4. Calcule le temps de travail total en minutes

Définis la fonction `Lasagna.total_time_in_minutes/2` qui prend deux arguments : le premier argument est le nombre de couches que tu as ajoutées à la lasagne, et le second argument est le nombre de minutes que la lasagne a déjà passées au four. La fonction doit renvoyer le nombre total de minutes que tu as consacrées à la cuisson de la lasagne, c'est-à-dire la somme du temps de préparation en minutes et du temps en minutes que la lasagne a passé au four à cet instant.

```elixir
Lasagna.total_time_in_minutes(3, 20)
# => 26
```

## 5. Crée une notification indiquant que la lasagne est prête

Définis la fonction `Lasagna.alarm/0` qui ne prend aucun argument et renvoie un message indiquant que la lasagne est prête à être mangée.

```elixir
Lasagna.alarm()
# => "Ding!"
```

## Source

### Created by

- @neenjaw

### Contributed to by

- @angelikatyborska