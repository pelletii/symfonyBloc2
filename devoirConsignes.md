# Création du projet Symfony

## Découverte des procédures stockées

### Objectifs
- Comprendre le concept et l’intérêt des procédures stockées.
- Créer, modifier et supprimer des procédures stockées sous MySQL.
- Utiliser des paramètres d’entrée/sortie dans une procédure.
- Intégrer des logiques conditionnelles et des boucles dans une procédure.
- Appliquer les procédures stockées à un cas concret (base de données "Refuge animalier").

### Travail à réaliser : Comprendre le concept des procédures stockées
1. exécuter le Script   
    ```bash
      ./database/script/initRout.sh 
    El```
2. Ouvrir la page d'accueil du site élevage
    ```
    PORTS-> clic sur adresse site web
    ```
    - naviguez sur les différentes options de l'application

3. lancer l'option *__liste des animaux disponibles à la vente__* à partir du menu *Procédures stockées*.
4. étudiez les  scripts qui permettent d'obtenir ce résultat et expliquer comment et où s'exécute la requête pour récupérer la liste des animaux disponibles.
5. le script de la  procédure appelée est la suivante:
    ```
    DELIMITER //
    CREATE PROCEDURE ListerAnimauxDisponibles()
    BEGIN
        SELECT * FROM animal WHERE disponible = TRUE;
    END //
    DELIMITER ;
    ```
3. lancer l'option *__liste des animaux par espèces__* à partir du menu *Procédures stockées*.
4. étudiez les  scripts qui permettent d'obtenir ce résultat et expliquer comment et où s'exécute la requête pour récupérer la liste des animaux disponibles.
5. le script de la  procédure appelée est la suivante:
    ```
    DELIMITER //
    CREATE PROCEDURE ListerAnimauxParEspece(IN p_idEspece INT)
    BEGIN
        SELECT * FROM animal WHERE idEspece = p_idEspece;
    END //
    DELIMITER ;
    ```
5. commentez le script *__listeAnimEspece.php__*
3. expliquer pourquoi il est préférable de faire des procédure stockées à la place de requêtes ou de vues

### EXERCICES
Pour chacune des fonctionnalités suivantes, __utiliser une procédure stockées__. Les procédures stockées seront à créer dans le fichier *__routinesStk.sql__* du dossier *__sourcesSql__*. 
Pour mettre à jour la base mySQL exécuter le script suivant:
    ```

      ./database/script/initRout.sh 

    ```

Réaliser les fonctionnalités suivantes en ajoutant l'option sur le menu *__headerProcedure.php__*

1. ajouter une nouvelle espèce
2. Mettre à jour le statut de paiement d'une adoption (payé ou non)
3. lister les adoptions pour un client sélectionné
4. Supprimer une adoption (et rendre l'animal disponible à nouveau)


