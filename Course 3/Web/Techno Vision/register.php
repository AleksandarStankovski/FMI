<!-- Include header -->
<?php include 'header.php';?> 
<!-- Include navigation -->  
<?php include 'navigation.php';?>
        <section class="main-container">
            <div class="container">
                <div class="content register-content">
                    <h2 class="padding-element">Регистрация</h2>
                    <form id="registerForm" method="POST" action="">
                        <fieldset>
                            <h6 class="bold-text padding-element border-bottom-grey">Лична информация</h6>
                            <div class="padding-element">
                                 <div class="form-group">  
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Име: <span class="blue-text">*</span></label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <input type="text" class="form-control custom-xs" name="registerFirstName">
                                        </div>                        
                                    </div>  
                                </div>   
                                <div class="form-group">                                  
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>E-mail: <span class="blue-text">*</span></label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <input type="text" class="form-control custom-xs" name="registerEmail">
                                            
                                        </div>
                                    </div>  
                                </div>  
                                <div class="form-group">                                      
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Телефон за връзка: <span class="blue-text">*</span></label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <input type="text" class="form-control custom-xs" name="registerPhone">
                                        </div> 
                                    </div> 
                                </div> 
                            </div>                                   
                        </fieldset>
                        <fieldset>
                            <div class="padding-element">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Парола: <span class="blue-text">*</span></label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <input type="password" id="registerPassword" class="form-control custom-xs" name="registerPassword">
                                        </div>
                                    </div> 
                                </div>
                                <div class="form-group">                                   
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Потвърди парола: <span class="blue-text">*</span></label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <input type="password" class="form-control custom-xs" name="registerConfirmPassword">
                                        </div>
                                    </div> 
                                </div> 
                            </div>                                  
                        </fieldset>                        
                        <fieldset>
                            <div class="padding-element">
                                 <div class="form-group">  
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Адрес: </label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <input type="text" class="form-control custom-xs" name="registerAddress">
                                        </div>                        
                                    </div>  
                                </div>    
                                <div class="form-group">                                  
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Държава: </label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <select name="registerCountry" class="form-control custom-xs">
                                                <option value="">--- Моля, изберете ---</option>
                                                <option value="Bulgaria">България</option>
                                            </select>
                                        </div>
                                    </div>  
                                </div>  
                                <div class="form-group">                                      
                                    <div class="row">
                                        <div class="col-sm-4 col-md-3">
                                            <label>Град: </label>
                                        </div>
                                        <div class="col-sm-8 col-md-5">
                                            <select name="registerCity" class="form-control custom-xs">
                                                <option value="">--- Моля, изберете ---</option>
                                                <option value="Асеновград">Асеновград</option>
                                                <option value="Банкя">Банкя</option>
                                                <option value="Банско">Банско</option>
                                                <option value="Белово">Белово</option>
                                                <option value="Благоевград">Благоевград</option>
                                                <option value="Борово">Борово</option>
                                                <option value="Ботевград">Ботевград</option>
                                                <option value="Бургас">Бургас</option>
                                                <option value="Варна">Варна</option>
                                                <option value="Велико Търново">Велико Търново</option>
                                                <option value="Видин">Видин</option>
                                                <option value="Враца">Враца</option>
                                                <option value="Габрово">Габрово</option>
                                                <option value="Горна Оряховица">Горна Оряховица</option>
                                                <option value="Гоце Делчев">Гоце Делчев</option>
                                                <option value="Девин">Девин</option>
                                                <option value="Димитровград">Димитровград</option>
                                                <option value="Добрич">Добрич</option>
                                                <option value="Дупница">Дупница</option>
                                                <option value="Казанлък">Казанлък</option>
                                                <option value="Карлово">Карлово</option>
                                                <option value="Китен">Китен</option>
                                                <option value="Кърджали">Кърджали</option>
                                                <option value="Кюстендил">Кюстендил</option>
                                                <option value="Ловеч">Ловеч</option>
                                                <option value="Мездра">Мездра</option>
                                                <option value="Монтана">Монтана</option>
                                                <option value="Несебър">Несебър</option>
                                                <option value="Пазарджик">Пазарджик</option>
                                                <option value="Перник">Перник</option>
                                                <option value="Петрич">Петрич</option>
                                                <option value="Плевен">Плевен</option>
                                                <option value="Пловдив">Пловдив</option>
                                                <option value="Русе">Русе</option>
                                                <option value="Свищов">Свищов</option>
                                                <option value="Сливен">Сливен</option>
                                                <option value="София">София</option>
                                                <option value="Стара Загора">Стара Загора</option>
                                                <option value="Троян">Троян</option>
                                            </select>
                                        </div> 
                                    </div> 
                                </div> 
                            </div>                                   
                        </fieldset>
                        <div class="row">
                            <div class="col-sm-12 col-md-8">
                                <div class="padding-element">
                                    <div class="form-group">
                                        <label for="agree" class="checkbox-label">Приемам <a href="#" data-toggle="modal" data-target=".terms-conditions">условията</a> за ползване</label>                         
                                        <input type="checkbox" name="registerTerms" id="agree">                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-8">
                                <div class="register-btn-container">
                                    <button type="submit" class="btn btn-sm blue-btn pull-right">Регистрация</button>
                                </div>
                            </div> 
                        </div> 
                    </form>
                </div>
            </div>
        </section>
        <!-- Start modal dialog --> 
        <div class="modal fade terms-conditions" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">X</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title bold-text" id="myModalLabel">Правила и условия</h4>
                    </div>
                    <div class="modal-body">
                        <div>
                            <p>Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum. Противно на всеобщото вярване, Lorem Ipsum не е просто случаен текст. Неговите корени са в класическата Латинска литература от 45г.пр.Хр., което прави преди повече от 2000 години. Richard McClintock, професор по Латински от колежа Hampden-Sydney College във Вирджиния, изучавайки една от най-неясните латински думи "consectetur" в един от пасажите на Lorem Ipsum, и търсейки цитати на думата в класическата литература, открива точния източник. Lorem Ipsum е намерен в секции 1.10.32 и 1.10.33 от "de Finibus Bonorum et Malorum"(Крайностите на Доброто и Злото) от Цицерон, написан през 45г.пр.Хр. Тази книга е трактат по теория на етиката, много популярна през Ренесанса. Първият ред на Lorem Ipsum идва от ред, намерен в секция 1.10.32.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End modal dialog -->
<!-- Include social -->
<?php include 'social.php';?>
<!-- Include footer -->
<?php include 'footer.php';?>  