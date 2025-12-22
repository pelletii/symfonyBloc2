<?php
require_once 'header.php';
require_once 'c_animalDAO.class.php';

$animal = AnimalDAO::listerAnimauxDisponibles();
?>

    <!-- Contenu principal -->
    <h1 class="text-center text-primary mb-4">Liste des animaux disponibles</h1>

    <div class="card shadow-sm">
        <div class="card-body">
            <?php if (count($animal) > 0): ?>
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
                        <?php foreach ($animal as $ligne): ?>
                            <tr>
                                <td><?= htmlspecialchars($ligne->getNomAnim()) ?></td>
                                <td><?= htmlspecialchars($ligne->getSexeAnim()) ?></td>
                                <td><?= htmlspecialchars($ligne->getDateNaisAnim()) ?></td>
                                <td><?= htmlspecialchars($ligne->getCommentaire()) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            <?php else: ?>
                <p class="text-muted text-center">Aucun animal disponible.</p>
            <?php endif; ?>
        </div>
    </div>
<?php
require_once 'footer.php';
?>  