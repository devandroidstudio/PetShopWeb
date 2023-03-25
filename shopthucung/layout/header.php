<?php
    //dem so luong trong gio hang
    $count = 0;
    if(isset($_SESSION['cart'])){
        $count = count($_SESSION['cart']);

    }
    // session_destroy();
    // die();

?>

<div class="header">
        
    <div class="navbar">
        <div class="navbar__left">
            <a href="index.php" class="navbar__logo">
                <img src="./img/logo.jpg" alt="">
            </a>

            <div class="navbar__menu">
                <i id="bars" class="fa fa-bars" aria-hidden="true"></i>
                <ul>
                    <li><a href="index.php">Trang chủ</a></li>
                    <li><a href="index.php?page=congiong">Con giống</a></li>
                    <li>
                        <?php
                            if(isset($_SESSION['fullname'])){
                                ?>
                                    <a href="index.php?page=yourorder">Đơn hàng</a>
                                <?php
                            }else{
                                ?>
                                    <div style="opacity: 0.7; cursor: default;">Đơn hàng</div>
                                <?php
                            }
                        ?>
                    </li>
                </ul>
            </div>

        </div>

        <div class="navbar__center">
            <form action="" method="GET" class="navbar__search">
                <input type="text" value="" placeholder="Nhập để tìm kiếm..." name="txtsearch" class="search" required>
                <i class="fa fa-search" id="searchBtn"></i>
            </form>
        </div>

        <div class="navbar__right">

            <?php 
                if(isset($_SESSION['fullname'])){ //kiem tra neu ton tai session fullname 
                $name =$_SESSION['fullname'];

                ?>
                    <div style="display: flex; padding: 10px;">
                        <h4 style="padding-right: 5px;"><?php echo $name?></h4>

                        <form action="index.php?page=logout" method="post">
                            <button type="submit">
                                <span class="fas fa-sign-out-alt"></span>
                            </button>
                        </form>
                    </div>
                <?php
                
                }else{
                ?>
            
                    <div class="login">
                        <a href="index.php?page=login"><i class="fa fa-user"></i></a>
                    </div>
                <?php
                }
            ?>

            <a href="index.php?page=cart" class="navbar__shoppingCart">
                <img src="./img/shopping-cart.svg" style="width: 24px;" alt="">
                
                <span><?php echo $count ?></span>
            </a>
        </div>
    </div>

</div>