
<?php
require_once 'c_connexion.php';
require_once 'c_animal.class.php';

class AnimalDAO {

    // Méthode pour lister les animaux disponibles
    public static function listerAnimauxDisponibles(): array {
        $pdo = Connexion::getConnexion();
        $animaux = [];
        try {
            $sql = "CALL ListerAnimauxDisponibles()";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $resultats = $stmt->fetchAll(PDO::FETCH_ASSOC);

            foreach ($resultats as $row) {
                $animaux[] = new Animal(
                $row['id'],
                $row['nomAnim'],
                $row['sexeAnim'],
                $row['dateNaisAnim'],
                $row['commentaire'],
                $row['idEspece'],
                $row['idRace'],
                $row['idMere'],
                $row['idPere'],
                $row['disponible']                );
            }
        } catch (PDOException $e) {
            die("Erreur lors de la récupération des animaux disponibles : " . $e->getMessage());
        }
        return $animaux;
    }
    // Méthode pour lister les animaux par espèce
    public static function listerAnimauxParEspece(int $idEspece): array {
        $pdo = Connexion::getConnexion();
        $animaux = [];
        try {
            $sql = "CALL ListerAnimauxParEspece(:idEspece)";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':idEspece', $idEspece, PDO::PARAM_INT);
            $stmt->execute();
            $resultats = $stmt->fetchAll(PDO::FETCH_ASSOC);     
            foreach ($resultats as $row) {
                $animaux[] = new Animal(
                    $row['id'],
                    $row['nomAnim'],
                    $row['sexeAnim'],
                    $row['dateNaisAnim'],
                    $row['commentaire'],
                    $row['idEspece'],
                    $row['idRace'],
                    $row['idMere'],
                    $row['idPere'],
                    $row['disponible']
                );
            }
        } catch (PDOException $e) {
            die("Erreur lors de la récupération des animaux par espèce : " . $e->getMessage());
        }
        return $animaux;
}
}

   
?>
