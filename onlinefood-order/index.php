    <?php include('partials-front/menu.php'); ?>

    <!-- Sekcja szukania jedzenia -->
    <section class="food-search text-center">
        <div class="container">
            
            <form action="<?php echo SITEURL; ?>food-search.php" method="POST">
                <input type="search" name="search" placeholder="Szukaj Żarła" required>
                <input type="submit" name="submit" value="Szukaj" class="btn btn-primary">
            </form>

        </div>
    </section>
    <!-- Koniec -->

    <?php 
        if(isset($_SESSION['order']))
        {
            echo $_SESSION['order'];
            unset($_SESSION['order']);
        }
    ?>

    



 

    
    <?php include('partials-front/footer.php'); ?>