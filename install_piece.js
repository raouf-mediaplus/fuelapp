document.addEventListener('DOMContentLoaded', function() {
    // Obtenir la date actuelle
    var today = new Date();
    var day = String(today.getDate()).padStart(2, '0');
    var month = String(today.getMonth() + 1).padStart(2, '0'); // Les mois commencent à 0
    var year = today.getFullYear();

    // Formater la date comme 'YYYY-MM-DD'
    var currentDate = year + '-' + month + '-' + day;

    // Initialiser le champ de date avec la date actuelle
    document.getElementById('date').value = currentDate;
    const planInterv = document.getElementById('plan-interv');

    const refPieceSelect = document.getElementById('ref-piece');
    const categorieInfo = document.getElementById('categorie-info');
    const codeInfo = document.getElementById('code-info');

    const kmpiece = document.getElementById('km-piece');
    const kmchg = document.getElementById('km-chg');
    const kmverif = document.getElementById('km-verif');


    const ancUniteImmatriculation = document.getElementById('immatriculation-info');
    const ancKilometrage = document.getElementById('kilometrage-info');
    const kilometragePiece = document.getElementById('kilometrage-piece');
    const tracteurCiterneSelect = document.getElementById('tracteur-citerne');
    const kilometrageLabel = document.getElementById('kilometrage-label');
    const imagePiece = document.getElementById('image-piece');
    const historiqueBody = document.getElementById('historique-body');

    function addDeleteEvent() {
        document.querySelectorAll('.delete-btn').forEach(button => {
            button.addEventListener('click', function() {
                const row = this.closest('tr');
                const historiqueId = row.getAttribute('data-id');

                if (confirm('Êtes-vous sûr de vouloir supprimer cette ligne ?')) {
                    // Requête AJAX pour supprimer l'entrée dans la base de données
                    fetch(`delete_piece_history.php?historiqueId=${historiqueId}`)
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                row.remove();
                            } else {
                                alert('Erreur lors de la suppression de l\'historique.');
                            }
                        })
                        .catch(error => { console.error('Erreur lors de la suppression de l\'historique:', error); });
                }

            });
        });
    }

    refPieceSelect.addEventListener('change', function() {
        const selectedOption = refPieceSelect.options[refPieceSelect.selectedIndex];
        const pieceId = selectedOption.value;
        
        if (pieceId) {
            //            console.error('PIECE_ID : ',pieceId);
            
            // Requête AJAX pour récupérer les informations de la pièce
            fetch(`get_piece_details.php?pieceId=${pieceId}`)
            .then(response => response.json())
            .then(data => {
                var categorieId = data.categorieId;
                console.error('Categorie ID  : ',categorieId);
                
                    categorieInfo.textContent = data.categorie;
                    codeInfo.textContent = data.code;
                    imagePiece.src = `${data.image}`; // Assurez-vous que le chemin vers les images est correct
                    kilometrageTotal=data.kilometrageTotal;
                    kilometragePiece.textContent = kilometrageTotal;

                    // Requête AJAX pour récupérer le plan d'interv.
                    fetch(`get_categorie_plan.php?categorieId=${categorieId}`)
                        .then(response => response.json())
                        .then(data => {
                            planInterv.innerHTML = '';
                            data.forEach(item => {
                                const row = document.createElement('tr');
                                const kmRestant = `${item.Km - kilometrageTotal}`;
                                const dureeRestante = `${item.Periode}`;// !!!! n'est pas achevée
                                row.innerHTML = `
                                <td class="hidden">${item.ID}</td>
                               
                                <td class="${item.Km <= kilometrageTotal ? 'negative' : ''}">${item.NomInterv}</td>
                                <td class="${item.Km <= kilometrageTotal ? 'negative' : ''}">${item.CodeInterv}</td>

                                <td class="${item.Km <= kilometrageTotal ? 'negative' : ''}">${item.Km}</td>
                                <td class="${item.Km <= kilometrageTotal ? 'negative' : ''}">${item.Periode}</td>
                                <td class="${item.Km <= kilometrageTotal ? 'negative' : ''}">${kmRestant}</td>
                                <td class="${item.Km <= kilometrageTotal ? 'negative' : ''}">${dureeRestante}</td>
                                `;
                                planInterv.appendChild(row);
                            });
                        })
                        .catch(error => {
                            console.error('Erreur lors de la récupération de la planification des interventions:', error);
                            planInterv.innerHTML = '<tr><td colspan="6">Erreur de chargement</td></tr>';
                        });










                })
                .catch(error => {
                    console.error('Erreur lors de la récupération des informations de la pièce:', error);
                    categorieInfo.textContent = 'Erreur de chargement';
                    codeInfo.textContent = 'Erreur de chargement';
                    imagePiece.src = ''; // Effacer l'image en cas d'erreur
                });


                // Requête AJAX pour récupérer les informations de la pièce
            fetch(`get_unite_details.php?pieceId=${pieceId}`)
                .then(response => response.json())
                .then(data => {
                    ancUniteImmatriculation.textContent = data.immatriculation;
                    ancKilometrage.textContent = data.kilometrage;
                    kilometragePiece.textContent = 'Calcul en cours...'; // Placeholder avant le calcul

                    // Calcul du kilométrage total de la pièce
                    fetch(`calculate_piece_kilometrage.php?pieceId=${pieceId}`)
                        .then(response => response.json())
                        .then(kilometrageTotal => {
                            kilometragePiece.textContent = kilometrageTotal;
                        })
                        .catch(error => {
                            console.error('Erreur lors du calcul du kilométrage total de la pièce:', error);
                            kilometragePiece.textContent = 'Erreur de calcul';
                        });
                })
                .catch(error => {
                    console.error('Erreur lors de la récupération des informations de la pièce:', error);
                    ancUniteImmatriculation.textContent = 'Erreur de chargement';
                    ancKilometrage.textContent = 'Erreur de chargement';
                    kilometragePiece.textContent = 'Erreur de chargement';
                });





                // Requête AJAX pour récupérer l'historique des montages
            fetch(`get_piece_history.php?pieceId=${pieceId}`)
                .then(response => response.json())
                .then(data => {
                    historiqueBody.innerHTML = ''; // Effacer les anciennes données
                    data.forEach(item => {
                        const row = document.createElement('tr');
                        row.setAttribute('data-id', item.ID); // Assurez-vous que l'ID est inclus dans les données
                        row.innerHTML = `
                            <td>${item.Immatriculation}</td>
                            <td>${item.Date_Install}</td>
                            <td>${item.Km_Install}</td>
                            <td>|</td>
                            <td>${item.Date_Fin}</td>
                            <td>${item.Km_Fin}</td>
                            <td><button class="delete-btn style="background-color:orange;">🗑️</button></td>
                        `;
                        historiqueBody.appendChild(row);
                    });
                    addDeleteEvent();
                })
                .catch(error => {
                    console.error('Erreur lors de la récupération de l\'historique des montages:', error);
                    historiqueBody.innerHTML = '<tr><td colspan="6">Erreur de chargement</td></tr>';
                });

  //              setInterval(function() {
                        // Requête AJAX pour récupérer les informations de la pièce
                        fetch(`get_unite_details.php?pieceId=${pieceId}`)
                            .then(response => response.json())
                            .then(data => {
                                ancKilometrage.textContent = data.kilometrage;
                                kilometragePiece.textContent = 'Calcul en cours...'; // Placeholder avant le calcul
                                // Calcul du kilométrage total de la pièce
                                fetch(`calculate_piece_kilometrage.php?pieceId=${pieceId}`)
                                    .then(response => response.json())
                                    .then(kilometrageTotal => {
                                        kilometragePiece.textContent = kilometrageTotal;
                                    })
                                    .catch(error => {
                                        console.error('Erreur lors du calcul du kilométrage total de la pièce:', error);
                                        kilometragePiece.textContent = 'Erreur de calcul';
                                    });
                            })
                            .catch(error => {
                                console.error('Erreur lors de la récupération des informations de la pièce:', error);
                                ancKilometrage.textContent = 'Erreur de chargement';
                                kilometragePiece.textContent = 'Erreur de chargement';
                            });
//            }, 21000);




        } else {
            // Effacer les informations et l'image si aucune pièce n'est sélectionnée
            categorieInfo.textContent = 'N';
            codeInfo.textContent = 'N';
            ancUniteImmatriculation.textContent = 'N';
            ancKilometrage.textContent = 'N';
            kilometragePiece.textContent = 'N';
            imagePiece.src = 'N';
            historiqueBody.innerHTML = 'N'; // Effacer l'historique des montages
        }
    });

    // Événement initial pour charger les informations de la première pièce si déjà sélectionnée
    refPieceSelect.dispatchEvent(new Event('change'));

    tracteurCiterneSelect.addEventListener('change', function() {
        const selectedOption = tracteurCiterneSelect.options[tracteurCiterneSelect.selectedIndex];
        const uniteId = selectedOption.value;

        if (uniteId) {
            // Requête AJAX pour récupérer le kilométrage de l'unité
            fetch(`get_unite_info.php?uniteId=${uniteId}`)
                .then(response => response.json())
                .then(data => {
                    kilometrageLabel.textContent = data.kilometrage;
                })
                .catch(error => {
                    console.error('Erreur lors de la récupération du kilométrage de l\'unité:', error);
                    kilometrageLabel.textContent = 'Erreur de chargement';
                });
        }
    });

    // Événement initial pour charger les informations de la première unité si déjà sélectionnée
    tracteurCiterneSelect.dispatchEvent(new Event('change'));

    refPieceSelect.focus();

    // Ajouter l'événement pour le bouton Ok
    const form = document.getElementById('form-install-piece');
    const okButton = document.querySelector('.ok');

    okButton.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent form submission

        const pieceId = document.getElementById('ref-piece').value;
        const newuniteId = document.getElementById('tracteur-citerne').value;
        const dateInstall = document.getElementById('date').value;
        const kilometrageInstall = document.getElementById('kilometrage-label').textContent;
        const responsable = document.getElementById('responsable').value;
        const ancKilometrage = document.getElementById('kilometrage-info').textContent;
        const ancUniteImmatriculation = document.getElementById('immatriculation-info').textContent;

        const queryString = `add_piece_unite.php?ancUniteImmatriculation=${ancUniteImmatriculation}&pieceId=${pieceId}&newuniteId=${newuniteId}&dateInstall=${dateInstall}&kilometrageInstall=${kilometrageInstall}&ancKilometrage=${ancKilometrage}&responsable=${responsable}`;
        window.location.href = queryString;
    });

/*    setInterval(function() {
        // Requête AJAX pour mettre à jour le kilométrage
        fetch('update_kilometrage.php')
            .then(response => response.text())
            .then(data => {
                console.log('Kilométrage mis à jour avec succès.');
            })
            .catch(error => {
                console.error('Erreur lors de la mise à jour du kilométrage:', error);
            });
    }, 10000); // 10 secondes (10000 ms)
*/
});
