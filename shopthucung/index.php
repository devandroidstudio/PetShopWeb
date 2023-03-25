<?php
    session_start();
    ob_start();
    //khai bao file connect db
    include "./function/config.php"; 

    //khai bao file chua cac ham
    include "./function/myfunction.php"; 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý cửa hàng thú cưng</title>
    <link rel="shortcut icon" type="image/png" href="./img/logo.jpg"/>
    <link rel="stylesheet" href="./css/bsgrid.min.css" />
    <link rel="stylesheet" href="./css/style.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

</head>
<body>

    <!-- header -->
        <?php include "./layout/header.php"; ?>
    <!-- end header -->

    <!-- product -->
    <?php 
        if(isset($_GET['page'])){
            $page = $_GET['page'];
        }
        else
        {
            include "./views/slider.php";
            $page = 'home';
        }
        
        //kiem tra ton tai trang hay ko

        //ko co day ve home
        if(file_exists('views/'.$page.'.php')){
            include 'views/'.$page.'.php'; 
        }
        
        //admin
        else if(file_exists('views/admin/'.$page.'.php')){
            if(isset($_SESSION['admin']) || isset($_SESSION['staff'])){
                include 'views/admin/'.$page.'.php'; 
            }else{
                 ?>
                <body>
                    <center class="notAllow">
                    <img src="img/stop.png" />
                    <br>
                    <br>
                    <h1>Bạn không có quyền truy cập trang web này!!!</h1>
                    </center>
                </body>
                <?php
            }
        }
        //cart
        else if(file_exists('views/cart/'.$page.'.php')){
            include 'views/cart/'.$page.'.php'; 
        }
        //login
        else if(file_exists('views/login/'.$page.'.php')){
            include 'views/login/'.$page.'.php'; 
        }
        
        else{
            echo "Khong tim thay trang 404";
        }

    
        
        //go to top 
        ?> 
            <div class="go-to-top"><i class="fas fa-chevron-up"></i></div>
        <?php

        include "./layout/footer.php"; 
        ob_end_flush();
    
    
    ?>
    <!-- end product -->



    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script>
        //Slider using Slick
        $( document).ready(function() {
            $('.post-wrapper').slick({
                slidesToScroll: 1,
                autoplay: true,
                arrow: true,
                dots: true,
                autoplaySpeed: 5000,
                prevArrow: $('.prev'),
                nextArrow: $('.next'),
                appendDots:$(".dot"),
            });
        });
    </script>
    
    
    <script src="./script/script.js"></script>
</body>
</html>