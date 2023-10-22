<?php
require_once "baseDD.php";

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT * FROM modeles";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $sneakers = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $err) {
    die("Erreur de connexion : " . $err->getMessage());
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les Sneakers</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
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

        .container {
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            text-align: center;
        }

        h1 {
            text-align: center;
            color: #333;
        }

    
        .category-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px; /* Espace entre les blocs */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .sneaker-image {
            max-width: 200px;
            max-height: 45%;
        }

        body {
            background-image: url('https://images7.alphacoders.com/104/1049413.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .sneakers-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .sneaker {
            width: calc(33% - 20px);
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
            position: relative;
        }

        .buy-button {
            display: none;
        }

        .buy-button.show {
            display: block;
        }
    </style>
</head>

<body>
    <nav>
        <a href="./DisplayTask/vue.php">Accueil</a>
    </nav>
    <h1>Les Sneakers</h1>
    
    <div class="container">
        <h2>Collection de Sneakers</h2>
        <form action="traitement_paiement.php" method="post">
            <div class="sneakers-container">
                <?php foreach ($sneakers as $sneaker) : ?>
                    <div class="sneaker">
                        <h3><?= $sneaker['nom']; ?></h3>
                        <img class="sneaker-image" src="<?= $sneaker['image']; ?>" alt="Image de Sneaker">
                        <p><?= $sneaker['attribut1'] . '<br>' . $sneaker['attribut2'] . '<br>' . $sneaker['attribut3']; ?></p>
                        <p>Prix: <?= $sneaker['prix']; ?> €</p>
                        <label>
                            <input type="checkbox" name="sneaker_ids[]" value="<?= $sneaker['id']; ?>">
                            Acheter
                        </label>
                    </div>
                <?php endforeach; ?>
            </div>

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
