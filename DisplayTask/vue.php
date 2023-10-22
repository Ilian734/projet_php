<?php 

function display_tasks_view(array $tasks){
    echo  $html;
    
}
?>
<!DOCTYPE html>
<html lang='fr'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Accueil - Site de Mode</title>
    <style>
       

        body {
            font-family: 'Plento Regular', sans-serif;
            background: url('https://images.alphacoders.com/111/1113006.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            color: black; 
            
        }

        .site-container {
            background-color: lightblue;
            padding: 23px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            margin: 5px;
            margin-top: 10%;
            margin-left: 6%;
            margin-right: 6%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        header {
        background-color: mediumpurple;
        text-align: center;
        padding: 50px;
        color: black; 
    }


        nav {
            text-align: center;
            margin: 20px 0;
        }

        .container {
            width: 100%;
            height: 350px;
            display: flex;
            justify-content: space-between;
        }

        .category {
            width: 100%;
            background-color: mediumpurple;
            border: 1px solid #fff;
            padding: 20px;
            margin: 10px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .category:hover {
            background-color: mediumpurple;
        }

        .sneakers {
            border: 10px inset #9848A4;
            border-radius: 20px;
            background-image: url('https://mvcmagazine.com/wp-content/uploads/2020/06/MVCCOPNIKE-1.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-weight: bold;
            font-size: 50px; 
            color: gold; 
            

        }

        .vetements {
            border: 10px inset #9848A4;
            border-radius: 20px;
            background-image: url('https://img.freepik.com/photos-gratuite/boutique-vetements-boutique-vetements-cintre-boutique-moderne_1150-8886.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1697846400&semt=sph');
            background-size: cover;
            background-repeat: no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-weight: bold;
            font-size: 24px; 
            font-size: 50px; 
            color: gold; 
        }

        .info {
        background-color: mediumpurple;
        text-align: center;
        padding: 20px;
        color: black; 
    }

        .client-info {
            background-color: mediumpurple;
            text-align: center;
            padding: 20px;
            margin-top: 10px;
            border-radius: 10px;
        }

        .client-info label {
            color: white;
            font-weight: bold;
            display: block;
            margin: 10px 0;
        }

        .client-info input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: none;
            border-radius: 5px;
        }

        .client-info input[type='submit'] {
            background-color:white;
            color: purple;
            cursor: pointer;
        }

        .client-info input[type='submit']:hover {
            background-color: #773F8B;
        }


        .client-info form {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .client-info label,
    .client-info input {
        width: calc(50% - 9px); 
        margin-bottom: px;
    }

    .client-info button {
        width: 100%; 
    }




    </style>
</head>
<body>
<div class='site-container'>
    <header>
        <h1>BIENVENUE SUR NOTRE SITE DE MODE</h1>
    </header>


    <div class='client-info'>
    <h2>Informations Client</h2>
    <form action='traitement_formulaire.php' method='post'>
        <div>
            <label for='nom'>Nom :</label>
            <input type='text' id='nom' "name"='nom' required>
        </div>
        <div>
            <label for='prenom'>Prénom :</label>
            <input type='text' id='prenom''name'='prenom' required>
        </div>
        <div>
            <label for='email'>Email :</label>
            <input type='email' id='email' name='email' required>
        </div>
        <div>
            <label for='telephone'>Téléphone:</label>
            <input type='tel' id='telephone'name='telephone'>
        </div>
        <button type='submit'>Envoyer</button>
    </form>
</div>



    <nav>
        <div class='container'>
            <a href='/sneakers.php' class='category sneakers'>Sneakers</a>
            <a href='/vetements.php' class='category vetements'>Vêtements</a>
        </div>
    </nav>



        <div class='info'>
            <h2>Informations</h2>
            <p>Bienvenue sur notre site de mode. Nous sommes fiers de vous présenter notre collection exclusive de sneakers et de vêtements tendance. Chez nous, la mode est bien plus qu'une simple expression de style. C'est un mode de vie, une déclaration d'individualité et d'authenticité.</p>
            <p>Nos sneakers sont soigneusement sélectionnées parmi les marques les plus en vogue, offrant confort, qualité et style. Que vous soyez un amateur de baskets classiques ou un adepte des dernières tendances, vous trouverez la paire parfaite pour compléter votre look.</p>
            <p>En ce qui concerne les vêtements, nous avons tout ce dont vous avez besoin pour créer des tenues uniques et à la pointe de la mode. Des vêtements décontractés aux tenues élégantes, notre collection saura satisfaire tous les goûts et toutes les occasions.</p>
            <p>Explorez notre site, parcourez nos catégories, et laissez-vous inspirer par notre sélection. Que vous soyez à la recherche de la tenue parfaite pour une soirée spéciale ou simplement d'un look décontracté pour le quotidien, nous avons ce qu'il vous faut. La mode n'a pas de limites, alors exprimez-vous et affirmez votre style avec notre collection exceptionnelle.</p>
            <p>Ne manquez pas les dernières actualités de la mode et les sorties à la mode. Pour rester au courant des tendances actuelles, consultez notre site partenaire d'actualités de la mode : <a href='https://www.whentocop.fr/drops' target='_blank'>Sortie prochaine hehe</a></p>
        </div>


    </div>
</body>

</html>






