**Le cours symfony se trouve sur l'ENT. La suite concerne uniquement les exercices à réaliser**

# Créer le projet Symfony
Avant de commencer  **supprimer le dossier SymfonyElevage**

Saisir la commande suivante afin de créer le projet **SymfonyElevage**
```bash
symfony new SymfonyElevage --version=lts --webapp
```
# Lancer le serveur web
Les manipulations suivantes sont à exécuter à chaque lancement du Codespace.
1. Se positionner sur le dossier du projet
Le serveur doit être lancé à partir du dossier qui contient le projet. C'est pour cela qu'il est important de se positionner sur ce dossier en premier.
```bash
cd ./SymfonyElevage/
```
2. Lancer le serveur web

```bash
symfony serve -d
```
Un troisième port est ouvert
![alt text](image-1.png)
Cliquer sur le lien pour ouvrir la page index du projet
![alt text](image-2.png)

3. stopper le servive 
```bash
symfony serve:stop
```
4. Vérifier l'état du service 
```bash
symfony serve:status
```
# Le routage
## Analyse d'une route

Soit le controller suivant:

```
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class HomeController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function home(): Response
    {
        return new Response('Accueil');
    }
}
```
1. Que représente 
    - ```'/'```
    - ```'home'```
    - ```home()```

2. Créer le controller __*HomeController*__  à l'aide de la commande  ```php bin/console make:controller```
3. quels sont les fichiers créés
4. Afficher la vue concernant la route __'app_home'__
5. Ajouter la route __'home'__ présentée ci-dessus et tester la

## Exercices
### Exo01
Dans le controller __*HomeController*__  ajouter une route ```/elevage``` qui affiche le résultat suivant 
```Bienvenue dans la gestion de l'élevage```
### Exo02
Créer un contrôleur *__AnimalController__* avec le préfixe :
- URL : /animals
- Nom : animal_

Ce contrôleur doit contenir 

![alt text](image-4.png)

### Exo03 - Routes paramétrées
Dans AnimalController, ajouter une route permettant d’afficher un animal par ID.
- URL : /animals/{id}
- nom de la route : animal_show

L'affichage sera le suivant :
```Animal n° X```

Modifier la route afin d'ajouter la contrainte suivante : {id} doit être un entier

### Exo04 - Route avec SLUG
Dans AnimalController, ajouter une route ```/animals/type/{slug}```

**exemples**
``` 
/animals/type/bovin
/animals/type/ovin
``` 
**contraintes**
lettres minuscules + tirets

**Affichage**
``` Type d’animal : bovin``` 

### Exo05 - Préfixe métier
Créer un contrôleur *__BreedingController__* avec le préfixe *breeding*

les routes à créer sont:

- *index()* : affichera ```Gestion de l'élevage```
- feeding() : affichera ```Gestion de l'alimentation```
- health() : affichera ```Suivi sanitaire```

Vous respecterez les conventions de nomages pour les URL et le nom de la route.

### Exo06 - Route avec paramètre optionnel

ajouter une route ```/breeding/report/{year}```

*__les contraintes__*  
- {year} est optionnel
- par défaut: année en cours
















