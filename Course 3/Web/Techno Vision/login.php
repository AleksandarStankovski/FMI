<!-- Include header -->
<?php include 'header.php';?> 
<!-- Include navigation -->  
<?php include 'navigation.php';?>
        <section class="main-container">
            <div class="container">
                <div class="content login-content">
                    <h2 class="padding-element">Вход</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <form id="loginForm" method="POST" action="">
                                <fieldset>
                                    <h6 class="bold-text padding-element border-bottom-grey">Аз вече съм ваш клиент:</h6>
                                    <div class="padding-element">
                                        <div class="form-group">  
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>E-mail: <span class="blue-text">*</span></label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" class="form-control custom-xs" name="loginEmail">
                                                </div>                        
                                            </div>  
                                        </div>   
                                        <div class="form-group">                 
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Парола: <span class="blue-text">*</span></label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="password" class="form-control custom-xs" name="loginPassword">
                                                </div> 
                                            </div> 
                                        </div>  
                                    </div>                                   
                                </fieldset>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="padding-element">
                                            <div class="form-group clearfix">
                                                <button type="submit" class="btn btn-sm blue-btn pull-right">Вход</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>   
                            </form>
                        </div>
                        <div class="col-md-6 new-customer-text">
                            <div>
                                <h6 class="bold-text padding-element border-bottom-grey">Аз съм нов клиент:</h6>
                                <div class="padding-element">
                                    <p>Ако сте нов клиент, моля регистрирайте се, за да можете да правите поръчки на наши продукти. Освен това, имате достъп до определени допълнителни придобивки на магазина, като: архив поръчки, персонализация, преглед на изпратени поръчки и проследяване на поръчка.</p>
                                    <a href="register.php">Регистиране сега ?</a>
                                </div>                                   
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
<!-- Include social -->
<?php include 'social.php';?>
<!-- Include footer -->
<?php include 'footer.php';?>  