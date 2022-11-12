<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zamawianie Żarcia</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="images/logo.png" alt="Restaurant Logo" class="img-responsive">
                </a>
            </div>
            <div class="menu text-left text-center" >
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">Home</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>categories.php">Kategorie</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>foods.php">Jedzonkoooo</a>
                    </li>
                    <li>
                        <a href="contact.php">Kontakt</a>
                    </li>
                </ul>
            </div>
            <style>
                .Cart img:hover{
                    border: 3px solid black;
                    background-color:white;
                    border-radius: 40%;
                    padding:1px; 
                    border-width: 1px 2px;
                }
            </style>
            <div class="Cart">
            <a href="cart.php"><img src="shopping-cart.png" alt="xD" style="float: right; margin-right: 100px; margin-top: -66px;"></a>
            </div>
            <div class="clearfix"></div>
            <style>
     .logo{
        
    }
</style>
        </div>
    </section>
    