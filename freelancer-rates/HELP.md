# Help

## Exécute les tests

Depuis le terminal, place-toi dans le répertoire de base de l'exercice, puis exécute les tests avec :

```bash
$ mix test
```

Cela exécute le fichier de test qui se trouve dans le sous-dossier `test`, à savoir un fichier dont le nom se termine par `_test.exs`.

Documentation :

* [`mix test` : l'outil d'exécution des tests d'Elixir](https://hexdocs.pm/mix/Mix.Tasks.Test.html)
* [`ExUnit` : la bibliothèque de tests unitaires d'Elixir](https://hexdocs.pm/ex_unit/ExUnit.html)

## Tests en attente

Dans les suites de tests des exercices d'entraînement, tous les tests, sauf le premier, sont marqués pour être ignorés.

Une fois qu'un test passe, tu peux réactiver le suivant en mettant le `@tag :pending` correspondant en commentaire à l'aide d'un symbole `#`.

Par exemple :

```elixir
# @tag :pending
test "shouting" do
  assert Bob.hey("WATCH OUT!") == "Whoa, chill out!"
end
```

Si tu souhaites exécuter tous les tests d'un coup, tu peux inclure tous les tests ignorés à l'aide de l'option `--include` de la commande `mix test` :

```bash
$ mix test --include pending
```

Ou bien, tu peux activer tous les tests en commentant la ligne `ExUnit.configure` du fichier `test/test_helper.exs`.

```elixir
# ExUnit.configure(exclude: :pending, trace: true)
```

## Options utiles de `mix test`

* `test/<FILE>.exs:LINENUM` : n'exécute qu'un seul test, celui de `<FILE>.exs` dont la définition se trouve à la ligne `LINENUM`
* `--failed` : n'exécute que les tests qui ont échoué lors de leur dernier lancement
* `--max-failures` : la suite arrête d'évaluer les tests dès que ce nombre d'échecs est atteint
* `--seed 0` : désactive le caractère aléatoire, de sorte que les tests d'un même fichier soient toujours exécutés dans l'ordre dans lequel ils ont été définis

## Soumets ta solution

Tu peux soumettre ta solution avec la commande `exercism submit lib/freelancer_rates.ex`.
Cette commande enverra ta solution sur le site d'Exercism et affichera l'URL de la page de la solution.

Il est possible de soumettre une solution incomplète, ce qui te permet de :

- Voir comment d'autres personnes ont résolu l'exercice
- Demander l'aide d'un mentor

## Besoin d'aide ?

Si tu souhaites de l'aide pour résoudre l'exercice, consulte les pages suivantes :

- La [documentation du parcours Elixir](https://exercism.org/docs/tracks/elixir)
- La [catégorie de programmation du parcours Elixir sur le forum](https://forum.exercism.org/c/programming/elixir)
- La [catégorie de programmation d'Exercism sur le forum](https://forum.exercism.org/c/programming/5)
- Les [questions fréquentes](https://exercism.org/docs/using/faqs)

Si ces ressources ne suffisent pas, tu peux soumettre ta solution (incomplète) pour demander un mentorat.

Si tu es bloqué sur quelque chose, il peut être utile de jeter un œil à certaines des [ressources disponibles](https://exercism.org/docs/tracks/elixir/resources) où tu trouveras peut-être des réponses.