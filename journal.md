# Journal de bord du projet encadré
## Seance 1
Quelques commandes importantes :
`cd` : pour se déplacer dans l'arborescence
`ls` : pour afficher le contenu d'un dossier
`mkdir` : pour créer un dossier
`mv` : pour déplacer un fichier ou un dossier
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
## Seance 4
Lors de la réalisation de la première question de la feuille d'exercices sur les scripts j'ai rencontré l'erreur suivante après l'exécution du script : "/usr/bin/bash: bad interpreter: No such file or directory". Après quelques recherches sur internet j'ai découvert que je pouvais vérifier l'emplacement de bash sur ma mashine grace à la commande `which bash`, ainsi j'ai pu trouver l'emplacement de bash "/bin/bash" et modifier le shebang de mon script.
J'ai également rencontré un problème au cours de l'exercice 3. Le script compte_par_type.sh ne donnait pas le résultat attendu après l'ajout de la vérification de l'argument ANNEE, le script s'arrêtait alors que l'argument était correct. J'ai donc dû modifier l'écriture du chemin absolu en ajoutant $HOME au lieu du tilde et en supprimant les antislash qui servaient à échapper les espaces dans les noms des répertoires.

Code de la dernière diapo :
Ce script vérifie qu'un argument a été saisi lors de son exécution avec une première condition IF, si aucun argument n'a été saisi il renvoie un message d'erreur et s'arrête.
Il prend en argument un fichier et avec une boucle WHILE il parcourt les lignes du fichier et vérifie si chaque ligne correspond à une URL valide grace à un IF et une expression régulière. Si l'URL est valide, un message qui indique la validité est affiché et la valeur d'une variable comptant les lignes valides est incrémentée. Si l'URL n'est pas valide, un message qui indique la non-validité est affiché et la valeur d'une variable comptant les lignes non-valides est incrémentée.
Un dernier message est affiché pour indiquer le nombre de lignes valides et le nombre de ligne non-valides.
## Seance 5
J'ai modifié les scripts de la semaine dernière en remplaçant les chemins absolus par des chemins relatifs. J'ai créé un dépôt GitHub pour le groupe et j'ai ajouté le lien de ce dépôt dans le fichier README de mon dépôt personnel.
## Seance 6
Exercice 1
1. Avec `echo` on affiche les liens contenus dans le fichier tels quels alors que lorsqu’on utilise `cat` le script renvoie des messages d’erreur car la commande `cat` essaye de lire les urls en tant que fichiers (qu’elle ne trouve pas sur ma machine) et non pas en tant que simple contenu textuel.
2. Pour transformer "urls/fr.txt" en paramètre du script on ajoute un argument et on remplace le chemin du fichier dans le script par le nom de l’argument.
2.a. Pour valider l’argument on ajoute une condition `if` au début pour vérifier qu’un argument est bien donné. S’il n’y a pas exactement un argument qui est donné, on affiche un message d’erreur et on arrête l’exécution du script.
3. On ajoute une variable qui a un rôle de compteur qu’on va incrémenter à chaque itération de la boucle while et on ajoute l’option `-e` à la commande `echo` afin qu’elle puisse reconnaître la tabulation.
Exercice 2
1. On utilise la commande `curl` pour “communiquer” avec les sites internet liés aux urls. Avec l’option `-o /dev/null` on ignore le corps de la réponse en le redirigeant vers le fichier spécial “/dev/null”, car seul le code du statut http nous intéresse. L’option `-s` permet de ne pas afficher la progression ni les messages d’erreur. Avec l’option `-w` on peut spécifier une information en particulier à afficher : si on ajoute `%{http_code}` c’est le code du statut http que l’on récupère.
2. On utilise l’option `-I` de `curl` pour obtenir le header de la page. On utilise ensuite la commande `grep` pour chercher “charset” dans le header afin de trouver le lieu où l’encodage est indiqué, puis avec la commande `cut` on récupère ce qui est après le “=” afin de ne garder que l’encodage. À la fin de l’exercice, les résultats n’apparaissaient pas correctement, notamment le nombre de mots de chaque page qui s’affichaient sur une ligne supplémentaire. J’ai donc ajouté la commande `tr -d “\r\n”` pour supprimer les retours à la ligne.
3. On utilise la commande `wc` avec l’option `-w` pour compter les mots de chaque page.
