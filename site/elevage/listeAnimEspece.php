<?php
require_once 'header.php';
require_once 'c_connexion.php';
require_once 'c_animalDAO.class.php';
require_once 'c_especeDAO.class.php';


// Récupérer la liste des espèces pour la liste déroulante
$especes = [];
try {
    $especes = EspeceDAO::getAll();

} catch (PDOException $e) {
    die("Erreur lors de la récupération des espèces : " . $e->getMessage());
}

// Traitement du formulaire
$animaux = [];
if (isset($_POST['idEspece'])) {
    $idEspece = intval($_POST['idEspece']);
    $animaux = AnimalDAO::listerAnimauxParEspece($idEspece);
}
?>

<!-- Contenu principal -->
<div class="container mt-5">
    <h1 class="text-center text-primary mb-4">Rechercher des animaux par espèce</h1>

    <!-- Formulaire de sélection -->
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <form method="POST" action="">
                <div class="mb-3">
                    <label for="idEspece" class="form-label">Sélectionnez une espèce :</label>
                    <select class="form-select" id="idEspece" name="idEspece" required>
                        <option value="" selected disabled>Choisir une espèce...</option>
                        <?php foreach ($especes as $espece): ?>
                            <option value="<?= htmlspecialchars($espece->getId()) ?>">
                                <?= htmlspecialchars($espece->getLibelleEspece()) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Rechercher</button>
            </form>
        </div>
    </div>

    <!-- Affichage des résultats -->
    <?php if (!empty($animaux)): ?>
        <div class="card shadow-sm">
            <div class="card-body">
                <h2 class="card-title mb-4">Animaux de l'espèce sélectionnée</h2>
                <table class="table table-striped table-hover align-middle">
                    <thead class="table-primary">
                        <tr>
                            <th scope="col">Nom</th>
                            <th scope="col">Sexe</th>
                            <th scope="col">Date de naissance</th>
                            <th scope="col">Commentaire</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($animaux as $animal): ?>
                            <tr>
                                <td><?= htmlspecialchars($animal->getNomAnim()) ?></td>
                                <td><?= htmlspecialchars($animal->getSexeAnim()) ?></td>
                                <td><?= htmlspecialchars($animal->getDateNaisAnim()) ?></td>
                                <td><?= htmlspecialchars($animal->getCommentaire()) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    <?php elseif (isset($_POST['idEspece'])): ?>
        <div class="alert alert-info text-center">
            Aucun animal trouvé pour cette espèce.
        </div>
    <?php endif; ?>
</div>

<?php require_once 'footer.php'; ?>
