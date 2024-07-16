<!--
PB: le selectbox "id=tracteur-citerne" ne doit pas contenir 
l'unité en cours de la pièce sélectionnée dans le selectBox id="ref-piece"
cela peut causer l'affectation d'une pièce à la même unité "déjà affectée !!!!!"
=>pb de calcul du km actuel de la pièce
-->

<?php

include "db.php";

// Get the piece ID from the URL
$pieceId = isset($_GET['ID']) ? $_GET['ID'] : null;

// Fetch piece details if piece ID is provided
if ($pieceId) {
    $sql = "SELECT * FROM PIECES WHERE ID = $pieceId";
    $resultpiece = $conn->query($sql);
    $piece = $resultpiece->fetch_assoc();
}

// Récupérer les pièces pour le select box
$sql_pieces = "SELECT * FROM PIECES";
$result_pieces = $conn->query($sql_pieces);

// Récupérer les unités pour le select box
$sql_unites = "SELECT * FROM UNITES";
$result_unites = $conn->query($sql_unites);
?>

<?php require('./components/head.inc.php'); ?>
<form id="form-install-piece" class="fluid-container">

    </div>
    <div class="card">
        <h5 class="card-header">Montage d'une Pièce de Rechange</h5>

        <div class="row g-0">
            <div class="col-md-4 d-flex align-items-center justify-content-center" style="text-align: center; padding: 0;">
                <img src="..." id="image-piece" class=" big-thumbnail img-fluid rounded text-center" alt="image de la pièce">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Détails Pièce</h5>
                    <hr>
                    <div class="row mb-3">
                        <label for="ref-piece" class="col-sm-2 col-form-label">Référence</label>
                        <div class="col-sm-10">
                            <select class="form-select" id="ref-piece" name="ref-piece" aria-label="Default select example">
                                <?php
                                if ($result_pieces->num_rows > 0) {
                                    while ($row = $result_pieces->fetch_assoc()) {
                                        $selected = ($row['ID'] == $pieceId) ? 'selected' : '';
                                        echo "<option value='" . $row['ID'] . "' $selected>" . $row['DESIGNATION'] . "</option>";
                                    }
                                } else {
                                    echo "<option value=''>Aucune pièce trouvée</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table no-border">
                            <!-- <thead>
                                <tr>
                                    <th scope="col">Code</th>
                                    <th scope="col">Valeur</th>

                                </tr>
                            </thead> -->
                            <tbody>
                                <tr>
                                    <td>Code Pièce</td>
                                    <td id="code-info"></td>
                                </tr>
                                <tr>
                                    <td>Catégorie</td>
                                    <td id="categorie-info"></td>
                                </tr>
                                <tr>
                                    <td>Mat. Unité Act.</td>
                                    <td id="immatriculation-info"></td>
                                </tr>
                                <tr>
                                    <td>Km. Unité Act.</td>
                                    <td id="kilometrage-info"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- end of first card-body -->
    <!-- <h4 class="card-header">Planif. Kilométrage et Durée</h4> -->
    <div class="row pt-4">

        <div class="col-lg-6">
            <div class="card">
                <div class="card-body light">

                    <h5 class=" card-title">Historique montages</h5>
                    <hr>
                    <div class="table-responsive">
                        <table class="table light">
                            <thead>
                                <tr>
                                    <th scope="col">Mat.Unité</th>
                                    <th scope="col">Date montage</th>
                                    <th scope="col">Km au montage</th>
                                    <th scope="col">Date fin</th>
                                    <th scope="col">Km fin</th>

                                </tr>
                            </thead>
                            <tbody><!-- Ajouter id="plan-interv" le moment venu-->

                                <tr>
                                    <td>1</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>3</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>3</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>3</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>3</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>3</td>
                                    <td><input class="histMontDate" type="date" /></td>
                                    <td>5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <form>
                        <hr>
                        <div class="row mb-3">

                            <label for="kilometrage-piece" class="col-sm-3 col-form-label"><i class="bi bi-speedometer2"></i>TOTAL KM</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control green-border-input" id="kilometrage-piece">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="card">
                <div class="card-body light" style="background-color:#1C252E;">
                    <h5 class=" card-title">Nouveau montage</h5>
                    <hr>
                    <form>
                        <div class="row mb-3">
                            <label for="tracteur-citerne" class="col-sm-3 col-form-label">Unité cible</label>
                            <div class="col-sm-9">
                                <select class="form-select" id="tracteur-citerne" name="tracteur-citerne" aria-label="Default select example">
                                    <?php
                                    if ($result_unites->num_rows > 0) {
                                        while ($row = $result_unites->fetch_assoc()) {
                                            echo "<option value='" . $row['ID'] . "'>" . $row['Immatriculation'] . "</option>";
                                        }
                                    } else {
                                        echo "<option value=''>Aucune unité trouvée</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="kilometrage-label" class="col-sm-3 col-form-label kmActuel">KM Actuel</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="kilomertage actuel" class="form-control kmActuel" id="kilometrage-label">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="date" class="col-sm-3 col-form-label">Date</label>
                            <div class="col-sm-9">
                                <input type="date" id="date" name="date" style="padding: 6px; border:none;">
                            </div>
                        </div>
                        <hr>
                        <div class="row mb-3">
                            <label for="responsable" class="col-sm-3 col-form-label">Responsable</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="nom du responsable" class="form-control" id="responsable" name="responsable">
                            </div>
                        </div>

                    </form>
                    <hr>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end" style="margin: 1rem;">
                        <button class="btn btn-valider me-md-2" type="button">Valider <i class="bi bi-check-circle-fill" style="background-color: #73E587 !important ;"></i></button>
                        <button class="btn btn-annuler" type="button">Annuler <i class="bi bi-x-circle" style="background-color: red !important;"></i></button>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- <p style="font-weight: bold;color:yellow;margin-top:20px;">Planif. Kilométrage et Durée </p>
    <div class="form-container" style="width:80%;margin-right:0px;padding-top:0px;">
        <table id="plan-table" style="border:1px;text-align:left;">
            <thead>
                <tr>
                    <th>Intervention</th>
                    <th>Code</th>
                    <th>Km</th>
                    <th>Période</th>
                    <th>Km. Restant</th>
                    <th>Durée Restante</th>
                </tr>
            </thead>
            <tbody id="plan-interv">
                 Les lignes seront ajoutées dynamiquement 
            </tbody>
        </table>
    </div> -->




    <!-- Nouveau conteneur pour le tableau d'historique -->
    <!-- <div class="form-container" style="width:100%; margin-left:40px;padding-top:20px;">
        <table id="historique-table" style="border:1px;text-align:left;background-color:#3BA09C;width:80%;">
            <thead>
                <tr>
                    <td style="font-weight: bold;color:black;border:0;">Hist. Montages </td>
                </tr>
                <tr>
                    <th>Mat. Unite</th>
                    <th>Date Montage</th>
                    <th>Km Au Montage</th>
                    <th>|</th>
                    <th>Date de fin</th>
                    <th>Km à la fin</th>
                </tr>
            </thead>
            <tbody id="historique-body">
                Les lignes seront ajoutées dynamiquement 
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td style="font-weight: bold;color:black;"> TOT. Km.</td>
                    <td id="kilometrage-piece" style="font-weight: bold;color:black;"></td>
                </tr>
            </tfoot>
        </table>
    </div> -->

    <!-- <h3 style="width:200px;">| Nouv. Montage</h3> -->

    <!-- <div class="form-container" style="background-color:transparent; width:95%;height:80px;padding:20px;">
        <div class="form-group">
            <label for="tracteur-citerne" style="text-align: left;">Unité cible</label>
            <select id="tracteur-citerne" name="tracteur-citerne" style="width:140px;font-size:18px;">
                
            </select>
        </div>

        <div class="form-group" style="text-align:left;padding-right:10px;display: table-cell; vertical-align: middle;">
            <label for="kilometrage-label" style="text-align:center;">Km. Actuel</label>
            <label id="kilometrage-label" name="kilometrage-label" style="background-color:trasparent;height:34px;padding-top:10px;background-color:#333;text-align:center;"></label>
        </div>

        <div class="form-group" style="padding-right:10px;">
            <label for="date">Date</label>
            <input type="date" id="date" name="date">
        </div>

        <div class="form-group">
            <label for="responsable">Responsable</label>
            <input type="text" id="responsable" name="responsable">
        </div>
        <div class="button-group">
            <button class="ok" style="font-size:24px;">+</button>
        </div>
    </div>

    <h3 style="text-align:right !important;padding-right:0px;">__________________________________________</h3>

    <div class="button-group">
        <button class="cancel">Cancel</button>
    </div>
    </div>
</form>
ajouter les scripts à la fin -->
    <script src="install_piece.js"></script>
    <?php require('./components/footer.inc.php'); ?>

    <!-- close connection -->
    <?php
    $conn->close();
    ?>