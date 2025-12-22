<?php
require_once 'c_connexion.php';
require_once 'c_espece.class.php';

class EspeceDAO {

    public static function getAll() {
        $pdo = Connexion::getConnexion();
        $stmt = $pdo->prepare("SELECT * FROM espece ORDER BY libelleEspece");
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $liste = [];
        foreach ($result as $row) {
            $liste[] = new Espece($row['id'], $row['libelleEspece']);
        }

        return $liste;
    }
}
?>