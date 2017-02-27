<!-- Include header -->
<?php include 'header.php';?> 
<!-- Include navigation -->  
<?php include 'navigation.php';?> 
        <section class="main-container">
            <div class="container">
                <div class="content shopping-cart-content">
                    <h2>Кошница</h2>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="shopping-cart-header clearfix">
                                <p class="shop-cart-img">Продукт</p>
                                <p class="shop-cart-details"></p>
                                <p class="quantity">Количество</p>
                                <p class="shop-cart-sum">Цена</p>
                                <p class="remove-cart">Изтрий</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <article class="shopping-cart-body clearfix">
                                <div class="shop-cart-img">
                                    <a href="viewProduct.php?365794">
                                        <img class="img-responsive" src="images/computers/home-hp-250-g3.png" alt="HP 250">
                                    </a>
                                </div>
                                <div class="shop-cart-details">
                                    <a href="viewProduct.php?365794" class="grey-text-href">Laser Fax-2920</a>
                                </div>
                                <div class="quantity">
                                    <div class="form-group"> 
                                        <form class="shopCartQuantityForm">
                                            <span class="mob-shopp-cart">Количество: </span>
                                            <input type="text" class="form-control custom-xs input-quantity" name="qty" value="1">  
                                            <button type="submit" class="btn btn-xs">
                                                <span class="glyphicon glyphicon-refresh"></span>
                                            </button>
                                        </form>  
                                    </div>        
                                </div>
                                <div class="shop-cart-sum">
                                    <span class="mob-shopp-cart">Сума: </span><span>325.94 лв.</span>
                                </div> 
                                <div class="remove-cart">
                                    <form>
                                        <button type="submit" class="btn btn-xs">X</button>
                                    </form>
                                </div> 
                            </article>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <article class="shopping-cart-body clearfix">
                                <div class="shop-cart-img">
                                    <a href="viewProduct.php?459823">
                                        <img class="img-responsive" src="images/computers/home-portege-z10t-a1111-laptop.png" alt="Portege z10t">
                                    </a>
                                </div>
                                <div class="shop-cart-details">
                                    <a href="viewProduct.php?459823" class="grey-text-href">Laser Fax-2920</a>
                                </div>
                                <div class="quantity">
                                    <div class="form-group"> 
                                        <form class="shopCartQuantityForm">
                                            <span class="mob-shopp-cart">Количество: </span>
                                            <input type="text" class="form-control custom-xs input-quantity" name="qty" value="1">  
                                            <button type="submit" class="btn btn-xs">
                                                <span class="glyphicon glyphicon-refresh"></span>
                                            </button>
                                        </form>  
                                    </div>        
                                </div>
                                <div class="shop-cart-sum">
                                    <span class="mob-shopp-cart">Сума: </span><span>325.94 лв.</span>
                                </div> 
                                <div class="remove-cart">
                                    <form>
                                        <button type="submit" class="btn btn-xs">X</button>
                                    </form>
                                </div> 
                            </article>
                        </div>
                    </div>
                    <div class="row shop-cart-btn-container">
                        <div class="col-xs-6 clearfix">
                            <a href="product.php" class="pull-left btn btn-sm blue-btn"><i class="glyphicon glyphicon-chevron-left"></i> Продължи</a>
                        </div>
                        <div class="col-xs-6 clearfix">
                            <a href="javascript:void(0)" class="pull-right btn btn-sm blue-btn">Купи <i class="glyphicon glyphicon-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section> 
<!-- Include social -->
<?php include 'social.php';?>
<!-- Include footer -->
<?php include 'footer.php';?>