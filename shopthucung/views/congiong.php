<!-- con giống -->
<div class="body">
    
    <div class="body__mainTitle">
        <h2>CON GIỐNG</h2>
    </div>

    <div>
        <div class="row">
            <?php 
            $r2 = getConGiong();
                foreach($r2 as $keyDog => $valueDog){
            ?>
                <div class="col-lg-2_5 col-md-4 col-6">
                    <a href="index.php?page=detailscongiong&id=<?php echo $valueDog['id_sanpham']; ?>" class="product">
                        <div class="product__img">
                            <img src="./<?php echo $valueDog['anhsp']; ?>" alt="">
                        </div>

                        <div class="product__content">
                            <div class="product__title">
                                <?php echo $valueDog['tensp']; ?>
                            </div>
            
                            <div class="product__pride">

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
<!-- End con giống -->