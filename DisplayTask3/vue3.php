<?php
require_once "baseDD2.php";

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT vetements.id, 
                     typesvetements.nom AS type_nom, 
                     tailles.nom AS taille_nom, 
                     marques.nom AS marque_nom, 
                     couleurs.nom AS couleur_nom, 
                     vetements.nom AS vetement_nom, 
                     vetements.prix, 
                     vetements.image
              FROM vetements
              JOIN typesvetements ON vetements.type_id = typesvetements.id
              JOIN tailles ON vetements.taille_id = tailles.id
              JOIN marques ON vetements.marque_id = marques.id
              JOIN couleurs ON vetements.couleur_id = couleurs.id";

    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $vetements = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $err) {
    die("Erreur de connexion : " . $err->getMessage());
}







?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les Vetements</title>

    <style>
        body {
            background-image: url('https://images4.alphacoders.com/922/922964.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .container {
            max-width: 800px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            text-align: center;
        }

        h1 {
            text-align: center;
            color: gold;
        }

        .vetements-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .vetement {
            width: calc(32% - 20px);
            margin-bottom: 20px;
            border: 2px solid black;
            padding: 10px;
            text-align: center;
            position: relative;
        }

        .vetement-image {
            width: 200px; 
            height: 200px; 
            object-fit: cover; 
        }

        label {
            display: block;
            margin-top: 10px;
        }
        .paiement-container {
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        text-align: center;
        margin-top: 20px;
        max-width: 400px; /
        margin: 0 auto; 
    }

    .paiement-container h2 {
        color: darkmagenta;
        margin-top: 0;
    }

    .paiement-container label {
        display: block;
        margin-top: 10px;
        text-align: left; 
    }

    .paiement-container input[type="text"],
    .paiement-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc; 
    }

    .paiement-container input[type="submit"] {
        background-color: darkmagenta;
        color: white;
        border: none;
        cursor: pointer;
    }

    .paiement-container input[type="submit"]:hover {
        background-color: magenta;
    }


            .vetement p, .paiement-container label {
            border: 1px solid rgba(0, 0, 0, 0.2);
            padding: 5px; 
        }


        .vetement input[type="text"], .paiement-container input[type="text"] {
            border: 1px solid rgba(0, 0, 0, 0.2);
            padding: 5px; 
        }





        nav {
            background-color: darkmagenta;
            color: white;
            padding: 20px 0;
            width: 75%;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }


    </style>
</head>

<body>
    <nav>
        <a href="./DisplayTask/vue.php">Accueil</a>
    </nav>
    <h1>Les Vetements</h1>

    <div class="container">
        <h2>Collection de Vêtements</h2>
        <div class="vetements-container">
            <?php foreach ($vetements as $vetement) : ?>
                <div class="vetement">
                    <h3><?= $vetement['vetement_nom']; ?></h3>
                    <img class="vetement-image" src="<?= $vetement['image']; ?>" alt="Image de Vêtement">
                    <p>Type : <?= $vetement['type_nom']; ?></p>
                    <p>Taille : <?= $vetement['taille_nom']; ?></p>
                    <p>Marque : <?= $vetement['marque_nom']; ?></p>
                    <p>Couleur : <?= $vetement['couleur_nom']; ?></p>
                    <p>Prix : <?= $vetement['prix']; ?> €</p>
                    <label>
                        <input type="checkbox" name="vetement_ids[]" value="<?= $vetement['id']; ?>">
                        Acheter
                    </label>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <div class="paiement-container">
        <h2>Informations de Paiement</h2>
        <form action="process_paiement.php" method="post">
            <label for="nom_carte">Nom sur la carte :</label>
            <input type="text" id="nom_carte" name="nom_carte" required><br><br>

            <label for="numero_carte">Numéro de carte :</label>
            <input type="text" id="numero_carte" name="numero_carte" required><br><br>

            <label for="date_expiration">Date d'expiration :</label>
            <input type="text" id="date_expiration" name="date_expiration" placeholder="MM/YY" required><br><br>

            <label for="cvv">Code CVV :</label>
            <input type="text" id="cvv" name="cvv" required><br><br>

            <input type="submit" value="Payer">
        </form>
    </div>
</body>

</html>
