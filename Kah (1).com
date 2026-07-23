<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KahPeripherique - Accueil</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* Charte graphique */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #000;
            color: #fff;
        }

        header {
            background-color: #000;
            padding: 15px 0;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .logo img {
            width: 120px;
        }

        .nav-links {
            display: flex;
            list-style: none;
            padding: 0;
        }

        .nav-links li {
            margin: 0 10px;
        }

        .nav-links a {
            color: #F4C04D; /* Jaune doré */
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        .nav-links a i {
            margin-right: 8px;
        }

        .contact-button {
            display: none;
            border: 1px solid #F4C04D;
            padding: 8px 12px;
            border-radius: 5px;
            margin-left: 15px;
            cursor: pointer;
        }

        .contact-button a {
            color: #F4C04D;
            text-decoration: none;
            font-size: 16px;
            display: flex;
            align-items: center;
        }

        .burger-menu {
            display: none;
            font-size: 30px;
            cursor: pointer;
            color: #F4C04D;
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
                flex-direction: column;
                background: #111;
                position: absolute;
                top: 50px;
                left: 0;
                width: 100%;
                padding: 10px 0;
            }

            .nav-links.active {
                display: flex;
            }

            .burger-menu {
                display: block;
            }

            .contact-button {
                display: none;
            }
        }

        @media (min-width: 769px) {
            .contact-button {
                display: inline-block;
            }

            .burger-menu {
                display: none;
            }
        }
    </style>
</head>
<body>

    <header>
        <nav class="navbar">
            <!-- Logo -->
            <div class="logo">
                <img src="iconn.jpeg" alt="Logo KahPeripherique">
            </div>

            <!-- Menu de navigation -->
            <ul class="nav-links">
                <li><a href="#accueil"><i class="fas fa-home"></i><strong>ACCUEIL</strong></a></li>
                <li><a href="#services"><i class="fas fa-cogs"></i><strong>SERVICES</strong></a></li>
                <li><a href="#promotions"><i class="fas fa-tags"></i><strong>PROMOTIONS</strong></a></li>
                <li><a href="#apropos"><i class="fas fa-info-circle"></i><strong>À PROPOS</strong></a></li>
            </ul>

            <!-- Bouton Contact (grand écran) -->
            <div class="contact-button">
                <a href="#contact">
                    <span>Contactez-nous</span>
                </a>
            </div>

            <!-- Menu Hamburger pour mobile -->
            <div class="burger-menu" id="burger-menu">
                <span>&#9776;</span>
            </div>
        </nav>
    </header>

    <script>
        // Afficher/masquer le menu pour mobile
        const burgerMenu = document.getElementById('burger-menu');
        const navLinks = document.querySelector('.nav-links');

        burgerMenu.addEventListener('click', () => {
            navLinks.classList.toggle('active');
        });
    </script>

  
</body>
</html>
