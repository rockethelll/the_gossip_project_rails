
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/rockethelll/the_gossip_project_rails

# The Gossip Project

Un site de potins, plus croustillants les uns que les autres.

## Fonctionnement

* Pense à démarrer le service postgresql si tu utilises WSL &rarr; `sudo service postgresql start`
* Lance `bundle install`
* Puis `rails db:create`
* Et enfin `rails db:migrate` pour mettre tes Bases de données UP

Un fichier contenant des générateurs de contenu aléatoire est à disposition pour effectuer des tests.
Pour t'en servir et remplir tes bases, lance cette dernière commande `rails db:seed`.

## Accès au site

Pour accéder au site, lance la commande `rails s` qui va lancer un serveur.
Va sur [le site](http://localhost:3000) via ce lien une fois que tu as exécuter toutes ces commandes.
