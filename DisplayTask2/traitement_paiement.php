<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom_carte = $_POST["nom_carte"];
    $numero_carte = $_POST["numero_carte"];
    $date_expiration = $_POST["date_expiration"];
    $cvv = $_POST["cvv"];

    if (empty($nom_carte) || empty($numero_carte) || empty($date_expiration) || empty($cvv)) {
        echo "Veuillez remplir tous les champs du formulaire.";
    } elseif (!is_numeric($numero_carte) || !is_numeric($cvv)) {
        echo "Les numéros de carte et le code CVV doivent être des chiffres.";
    } elseif (strlen($numero_carte) !== 16) {
        echo "Le numéro de carte doit comporter 16 chiffres.";
    } elseif (strlen($cvv) !== 3) {
        echo "Le code CVV doit comporter 3 chiffres.";
    } else {
        // Simulation du paiement réussi (changez cette condition selon vos besoins)
        $paiement_accepte = true;

        if ($paiement_accepte) {
            echo "Paiement réussi. Votre commande sera traitée bientôt!";
        } else {
            echo "Le paiement a été refusé. Veuillez vérifier les informations de votre carte.";
        }
    }
} else {
    header("Location: page_de_paiement.php");
}
?>