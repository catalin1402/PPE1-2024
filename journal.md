# Journal de bord du projet encadré
## Seance 2
J'ai créé mon dépôt PPE1-2024 depuis GitHub. Puis, j'ai créé un dossier pour la copie locale du dépôt git à l'aide de la commande *git clone*. J'ai ensuite créé mon journal de bord et j'ai utilisé la commande *ls* pour voir le contenu de mon dépôt sur ma machine. J'ai remarqué que mon journal de bord n'y apparaissait pas, j'ai donc utilisé la commande *git pull* afin de récupérer les changements du dépôt sur ma machine et j'ai observé l'apparition du mon fichier *journal.md* sur ma machine.
## Seance 3 - correction d'erreurs
J'ai fait les exercices pipelines. J'ai rencontré deux difficultés lors de ces exercices. Le premier problème que j'ai eu est le fait que lorsque j'utilisais les commandes sort et uniq sur le même fichier en entrée et en sortie, le fichier était vide à la fin. Après plusieurs essais, j'ai fini par comprendre que le fichier en entrée devait être différent du fichier final pour obtenir ce qui était demandé. Suite à ce problème, j'ai dû me déplacer plusieurs fois dans mon arborescence afin de faire des essais, ce qui a conduit à des confusions de chemins dans les différentes commandes que j'ai testées. J'ai donc fini par utiliser un chemin absolu pour la commande grep pour pouvoir faire des essais à partir de différents endroits de l'arborescence sans devoir modifier la commande avec grep à chaque fois.
Cette ligne doit rester après correction
Pour récupérer l'identifiant SHA du commit "I AM ERROR", j'ai utilisé la commande `git log`. J'ai ensuite utilisé la commande `git revert` pour défaire le commit.
Ajout d'une ligne à mettre de côté
Commande `git stash push -m "Conservation des changements séance 3"` pour mettre les modifications de côté
Commande `git stash list` pour voir la liste des changements conservés
Commande `git stash pop` 
