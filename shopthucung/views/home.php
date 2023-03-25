<?php 
    global $s;
    $item_per_page = !empty($_GET['per_page']) ? $_GET['per_page'] : 10;
    $current_page = !empty($_GET['pageitem']) ? $_GET['pageitem'] : 1; //Trang hiện tại

    $offset = ($current_page - 1) * $item_per_page;
    //$products = mysqli_query($conn, "SELECT * FROM sanpham ORDER BY id ASC  LIMIT ".$item_per_page." OFFSET ".$offset);
    $totalRecords = mysqli_query($conn, "SELECT * FROM sanpham");
    $totalRecords = $totalRecords -> num_rows;
    $totalPages = ceil($totalRecords / $item_per_page);

    global $conn;
    $products = '';

    //TIM KIEM SAN PHAM
    if(isset($_GET['txtsearch'])){
        $s = $_GET['txtsearch'];

        if($s != ""){
            $sql = "SELECT * FROM `sanpham` WHERE tensp like '%$s%' LIMIT ".$item_per_page." OFFSET ".$offset;
            $products = mysqli_query($conn, $sql);
            $count = mysqli_num_rows($products);

            if($count >0){
                ?>
                <div class="body">
    
                    <div class="body__mainTitle">
                        <h2>DANH SÁCH TÌM KIẾM</h2>
                    </div>

                    <div>
                        <div class="row">
                            <?php 
                                foreach($products as $keyFind => $valueFind){
                            ?>
                                <div class="col-lg-2_5 col-md-4 col-6">
                                    <a href="index.php?page=details&id=<?php echo $valueFind['id_sanpham']; ?>" class="product">
                                        <div class="product__img">
                                            <img lazy data-src="./<?php echo $valueFind['anhsp']; ?>" alt="">
                                        </div>
                                        <div class="product__sale">
                                            <h4>-3%</h4>
                                        </div>
                        
                                        <div class="product__content">
                                            <div class="product__title">
                                                <?php echo $valueFind['tensp']; ?>
                                            </div>
                            
                                            <div class="product__pride">
                                                <div class="product__pride-oldPride">
                                                    <span class="Price">
                                                        <bdi>75.000&nbsp;
                                                            <span class="currencySymbol">₫</span>
                                                        </bdi>
                                                    </span>
                                                </div>
                                                <div class="product__pride-newPride">
                                                    <span class="Price">
                                                        <bdi><?php echo number_format($valueFind['giasp']); ?>&nbsp;
                                                            <span class="currencySymbol">₫</span>
                                                        </bdi>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php
                                }
                            ?>

                        </div>

                        <?php 
                            include "pagination.php";
                        ?>        
                    </div>
                        
                </div>
                <?php
            }

            else{
                ?>
                <body>
                    <center>
                    <img lazy data-src="./img/search_notfound.jpg" style="height: 300px;" />
                    <div style="font-size: 25px; padding: 10px;">Không tìm thấy kết quả với từ khóa <b><?php echo $s ?></b></div>
                    </center>
                </body>
                <?php
            }
        }

        else{
            ?>
                <h1>Bạn chưa nhập từ khóa tìm kiếm</h1>
            <?php
            //echo "Bạn chưa nhập từ khóa tìm kiếm<br>";
            //echo '<a href="index.php">Quay lại</a>';
            //header("location: index.php");
        }
        
    }else{
        ?>
        <!-- Sản phẩm nổi bật -->
        <div class="body">
            
            <div class="body__mainTitle">
                <h2>SẢN PHẨM NỔI BẬT</h2>
            </div>

            <div>
                <div class="row">
                    <?php 
                    $r2 = getProVip();
                        foreach($r2 as $keyDog => $valueVip){
                    ?>
                        <div class="col-lg-2_5 col-md-4 col-6">
                            <a href="index.php?page=details&id=<?php echo $valueVip['id_sanpham']; ?>" class="product">
                                <div class="product__img">
                                    <img lazy data-src="./<?php echo $valueVip['anhsp']; ?>" alt="">
                                </div>
                                <div class="product__sale">
                                    <h4>-3%</h4>
                                </div>

                                <div class="product__content">
                                    <div class="product__title">
                                        <?php echo $valueVip['tensp']; ?>
                                    </div>
                    
                                    <div class="product__pride">
                                        <div class="product__pride-oldPride">
                                            <span class="Price">
                                                <bdi>75.000&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                        <div class="product__pride-newPride">
                                            <span class="Price">
                                                <bdi><?php echo number_format($valueVip['giasp']); ?>&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
                
            

        </div>

        <!-- Sản phẩm cho chó -->
        <div class="body">
            
            <div class="body__mainTitle">
                <h2>SẢN PHẨM DÀNH CHO CHÓ</h2>
            </div>

            <div>
                <div class="row">
                    <?php 
                    $r2 = getProDog();
                        foreach($r2 as $keyDog => $valueDog){
                    ?>
                        <div class="col-lg-2_5 col-md-4 col-6">
                            <a href="index.php?page=details&id=<?php echo $valueDog['id_sanpham']; ?>" class="product">
                                <div class="product__img">
                                    <img lazy data-src="./<?php echo $valueDog['anhsp']; ?>" alt="">
                                </div>
                                <div class="product__sale">
                                    <h4>-3%</h4>
                                </div>

                                <div class="product__content">
                                    <div class="product__title">
                                        <?php echo $valueDog['tensp']; ?>
                                    </div>
                    
                                    <div class="product__pride">
                                        <div class="product__pride-oldPride">
                                            <span class="Price">
                                                <bdi>75.000&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                        <div class="product__pride-newPride">
                                            <span class="Price">
                                                <bdi><?php echo number_format($valueDog['giasp']); ?>&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
                
            

        </div>

        <!-- Sản phẩm cho mèo -->
        <div class="body">
            
            <div class="body__mainTitle">
                <h2>SẢN PHẨM DÀNH CHO MÈO</h2>
            </div>

            <div>
                <div class="row">
                    <?php 
                    $r1 = getProCat();
                        foreach($r1 as $keyCat => $valueCat){
                    ?>
                        <div class="col-lg-2_5 col-md-4 col-6">
                            <a href="index.php?page=details&id=<?php echo $valueCat['id_sanpham']; ?>" class="product">
                                <div class="product__img">
                                    <img lazy data-src="./<?php echo $valueCat['anhsp']; ?>" alt="">
                                </div>
                                <div class="product__sale">
                                    <h4>-3%</h4>
                                </div>
                                <div class="product__content">
                                    <div class="product__title">
                                        <?php echo $valueCat['tensp']; ?>
                                    </div>
                    
                                    <div class="product__pride">
                                        <div class="product__pride-oldPride">
                                            <span class="Price">
                                                <bdi>75.000&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                        <div class="product__pride-newPride">
                                            <span class="Price">
                                                <bdi><?php echo number_format($valueCat['giasp']); ?>&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
                
            

        </div>

        <!-- Tất cả sản phẩm -->
        <div class="body">
            
            <div class="body__mainTitle">
                <h2>TẤT CẢ SẢN PHẨM</h2>
            </div>

            <div>
                <div class="row">
                    <?php 
                    $r = getProAll();
                        foreach($r as $keyAll => $valueAll){
                    ?>
                        <div class="col-lg-2_5 col-md-4 col-6">
                            <a href="index.php?page=details&id=<?php echo $valueAll['id_sanpham']; ?>" class="product">
                                <div class="product__img">
                                    <img lazy data-src="./<?php echo $valueAll['anhsp']; ?>" alt="">
                                </div>
                                <div class="product__sale">
                                    <h4>-3%</h4>
                                </div>
                                <div class="product__content">
                                    <div class="product__title">
                                        <?php echo $valueAll['tensp']; ?>
                                    </div>
                    
                                    <div class="product__pride">
                                        <div class="product__pride-oldPride">
                                            <span class="Price">
                                                <bdi>75.000&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                        <div class="product__pride-newPride">
                                            <span class="Price">
                                                <bdi><?php echo number_format($valueAll['giasp']); ?>&nbsp;
                                                    <span class="currencySymbol">₫</span>
                                                </bdi>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php
                        }
                    ?>
                </div>

                <center>
                    <a href="index.php?page=showAllProducts" class="more">Xem thêm</a>
                </center>
            </div>
                
            

        </div>

        <?php
    }
?>