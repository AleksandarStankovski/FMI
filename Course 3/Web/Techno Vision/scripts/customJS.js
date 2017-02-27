$(document).ready(function() {

    if(getFileName()=='product.php'){ 
        loadProduct()
    }

    if(getFileName()=='viewProduct.php'){ 
       viewProduct()
    }
  
    function loadProduct(){
        $.ajax({
            url:'data.json',
            type: 'GET',
            dataType: 'json'
        }).done(function(data){
            var product;    
            for (var i in data.laptop){
                product='<article class="product padding-element border-bottom-grey">'+
                    '<div class="row">'+
                        '<div class="col-xs-5 col-sm-3 col-md-3 col-lg-2 product-col">'+
                            '<div>'+
                                '<a class="product-href" href="viewProduct.php?'+data.laptop[i].code+'"><img src="images/computers/'+data.laptop[i].firstImage+'" class="img-responsive" alt="'+data.laptop[i].modal+'"></a>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-xs-7 col-sm-5 col-md-6 col-lg-8">'+
                            '<div class="product-description">'+
                                '<header>'+
                                    '<h5>'+
                                        '<a href="viewProduct.php?'+data.laptop[i].code+'" class="grey-text-href bold-text">'+data.laptop[i].modal+'</a>'+
                                    '</h5>'+
                                '</header>'+
                                '<section>'+
                                    '<p>Код: '+data.laptop[i].code+'</p>'+
                                    '<p>Процесор: '+data.laptop[i].modal+'</p>'+
                                    '<p>Графична карта: '+data.laptop[i].graphicsCard+'</p>'+
                                    '<p>Размер на екрана : '+data.laptop[i].displaySize+'</p>'+
                                '</section>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-xs-12 col-sm-4 col-md-3 col-lg-2">'+
                            '<p class="small-price">'+
                                '<big>'+data.laptop[i].price+'<sup>'+data.laptop[i].decimalPrice+'</sup><sub>'+data.laptop[i].currency+'</sub></big>'+
                            '<p>'+
                            '<div class="clearfix">'+
                                '<a href="viewProduct.php?'+data.laptop[i].code+'" class="btn btn-sm blue-btn pull-right">Виж повече</a>'+
                            '</div>'+
                        '</div>'+
                    '</div>'+
                '</article>';
                $('#product-list').append(product);   
            };            
        }).fail(function(error){
            console.log("error");
        });
    };

    function viewProduct(){
        var thisUrl=$(location).attr('search').substring(1)
        $.ajax({
            url:'data.json',
            type: 'GET',
            dataType: 'json'
        }).done(function(data){
            var viewProduct;    
            for (var i in data.laptop){
                if(thisUrl==data.laptop[i].code){
                    console.log(data.laptop[i].modal);
                
                    viewProduct='<div class="row">'+
                        '<div class="col-md-5">'+
                            '<div class="left-viewProduct">'+
                                '<div class="viewProduct-img-container">'+
                                    '<div class="product-img-container">'+
                                        '<a href="images/computers/'+data.laptop[i].secondImage+'" class="fancybox" data-fancybox-group="gallery" title="'+data.laptop[i].modal+'"><img src="images/computers/'+data.laptop[i].secondImage+'" alt="'+data.laptop[i].modal+'"></a>'+
                                    '</div>'+
                                '</div>'+
                                '<div class="viewProduct-other-img">'+
                                    '<ul>'+
                                        '<li><a class="fancybox" href="images/computers/'+data.laptop[i].thirdImage+'" data-fancybox-group="gallery" title="'+data.laptop[i].modal+'"><img src="images/computers/'+data.laptop[i].thirdImage+'" alt="'+data.laptop[i].modal+'" /></a></li>'+
                                        '<li><a class="fancybox" href="images/computers/'+data.laptop[i].fourthImage+'" data-fancybox-group="gallery" title="'+data.laptop[i].modal+'"><img src="images/computers/'+data.laptop[i].fourthImage+'" alt="'+data.laptop[i].modal+'" /></a></li>'+
                                        '<li><a class="fancybox" href="images/computers/'+data.laptop[i].fifthImage+'" data-fancybox-group="gallery" title="'+data.laptop[i].modal+'"><img src="images/computers/'+data.laptop[i].fifthImage+'" alt="'+data.laptop[i].modal+'" /></a></li>'+
                                        '<li><a class="fancybox" href="images/computers/'+data.laptop[i].sixthImage+'" data-fancybox-group="gallery" title="'+data.laptop[i].modal+'"><img src="images/computers/'+data.laptop[i].sixthImage+'" alt="'+data.laptop[i].modal+'" /></a></li>'+
                                    '</ul>'+
                                '</div>'+
                                '<div class="clearfix">'+
                                   '<p class="small-price">'+
                                            '<big>'+data.laptop[i].price+'<sup>'+data.laptop[i].decimalPrice+'</sup><sub>лв</sub></big>'+
                                        '<p>'+
                                    '<a href="#" class="buy-product btn btn-sm blue-btn pull-right">Купи</a>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                        '<div class="col-md-7">'+
                            '<div class="right-viewProduct">'+
                                '<div class="tabs-viewProduct">'+
                                    '<ul class="clearfix tab-control clearfix">'+
                                        '<li><a class="active-tab bold-text" href="#product-spec">Спецификации</a></li>'+
                                        '<li><a class="" href="#product-info">Информация</a></li>'+
                                    '</ul>'+
                                    '<div class="tab-content">'+
                                        '<div id="product-spec" class="tab">'+
                                            '<table class="table table-hover">'+
                                                '<tbody>'+
                                                    '<tr><th>Марка</th><td>'+data.laptop[i].producer+'</td></tr>'+
                                                    '<tr><th>Модел</th><td>'+data.laptop[i].modal+'</td></tr>'+
                                                    '<tr><th>Процесор</th><td>'+data.laptop[i].processor+'</td></tr>'+
                                                    '<tr><th>Графична карта</th><td>'+data.laptop[i].graphicsCard+'</td></tr>'+
                                                    '<tr><th>Видео</th><td>'+data.laptop[i].video+'</td></tr>'+
                                                    '<tr><th>Памет</th><td>'+data.laptop[i].ram+'</td></tr>'+
                                                    '<tr><th>Твърд диск</th><td>'+data.laptop[i].hardDisk+'</td></tr>'+
                                                    '<tr><th>Размер на екрана</th><td>'+data.laptop[i].displaySize+'</td></tr>'+
                                                    '<tr><th>WiFi</th><td>'+data.laptop[i].wifi+'</td></tr>'+
                                                    '<tr><th>Операционна система</th><td>'+data.laptop[i].operatingSystem+'</td></tr>'+
                                                '</tbody>'+
                                            '</table> '+                                                      
                                        '</div>'+
                                        '<div id="product-info" class="tab">'+
                                            '<table class="table table-hover">'+
                                                '<tbody>'+
                                                    '<tr><th>Гаранция</th><td>'+data.laptop[i].warranty+'</td></tr>'+
                                                    '<tr><th>Код на продукта</th><td>'+data.laptop[i].doce+'</td></tr>'+
                                                    '<tr><th>Наличност</th><td>'+data.laptop[i].availability+'</td></tr>'+       
                                                '</tbody>'+
                                            '</table>'+                                                
                                        '</div>'+   
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>';
                    $('.viewProduct-content').append(viewProduct); 
                }
            };       
        }).fail(function(error){
            console.log("error");
        });
    };

    // Validate register form
    var registerForm=$("#registerForm").validate({
        rules: {
            registerFirstName : {
                required : true,
                maxlength : 255
            },
            registerEmail: {
                required: true,
                email: true,
                maxlength: 255
            }, 
            registerPhone: {
                required: true,
                number: true,
                maxlength: 255
            }, 
            registerPassword: {
                required: true,
                minlength: 7,
                maxlength: 255
            },
            registerConfirmPassword: {
                required: true,
                minlength: 7,
                maxlength: 255,
                equalTo: "#registerPassword"
            },
            registerTerms: {
                required: true,
            }
        }, 
        messages: {
            registerFirstName : {
                required : "Моля, въведете име",
                maxlength: "Моля, въведете не повече от 255 символа"
            },
            registerEmail: {
                required: "Моля, въведете e-mail адрес",
                email: "Моля, въведете валиден email адрес",
                maxlength: "Моля, въведете не повече от 255 символа"
            },
            registerPhone: {
                required: "Моля, въведете телефон",
                number: "Моля, въведете валиден телефон",
                maxlength: "Моля, въведете не повече от 255 символа"
            },
            registerPassword: {
                required: "Моля, въведете парола",
                minlength: "Паролата трябва да е минимум 7 символа",
                maxlength: "Моля, въведете не повече от 255 символа"
            },
            registerConfirmPassword: {
                required: "Моля, въведете парола",
                minlength: "Паролата трябва да е минимум 7 символа",
                maxlength: "Моля, въведете не повече от 255 символа",
                equalTo: "Моля, въведете една и съща стойност отново"
            },
            registerTerms: {
                required: "Моля, съгласете се с правилата и условията"
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function (error, element) {
            if (element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
    });

    // Validate login form
    var loginForm=$("#loginForm").validate({
        rules: {
            loginEmail: {
                required: true,
                email: true,
                maxlength: 255
            }, 
            loginPassword: {
                required: true,
                minlength: 7,
                maxlength: 255
            }
        }, 
        messages: {
            loginEmail: {
                required: "Моля, въведете e-mail адрес",
                email: "Моля, въведете валиден email адрес",
                maxlength: "Моля, въведете не повече от 255 символа"
            },
            loginPassword: {
                required: "Моля, въведете парола",
                minlength: "Паролата трябва да е минимум 7 символа",
                maxlength: "Моля, въведете не повече от 255 символа"
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function (error, element) {
            if (element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
    });
    
    if(getFileName()=='shoppingCart.php'){       
        // Validate shopping cart 
        $(".shopCartQuantityForm").each( function (index, data){
            $(".shopCartQuantityForm").eq(index).validate({
                rules: {
                    qty: {
                        required: true,
                        number: true,
                        min: 1,
                        maxlength: 2
                    }
                }, 
                messages: {
                    qty: {
                        required: "Моля, въведете количество",
                        number: "Моля, въведете число",
                        min: "Моля, въведете число по-голямо от 0",
                        maxlength: "Моля, въведете не повече от 2 символа"
                    }
                },
                highlight: function (element) {
                    $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                },
                unhighlight: function (element) {
                    $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                },
                errorElement: 'span',
                errorClass: 'help-block',
                errorPlacement: function (error, element) {
                    if (element.parent('.input-group').length) {
                        error.insertAfter(element.parent());
                    } else {
                        error.insertAfter(element.next());
                    }
                }
            });
        });
    }   

    $('body').on('click', '.tab-control li a', function(e){
        e.preventDefault();
        openSubContent($(this), $('.tab-control li a'), $('.tabs-viewProduct .tab'));
    });

    // Show more information for product
    function openSubContent(thisElement, tabControl, content){
        tabControl.removeClass('active-tab bold-text');
        thisElement.addClass('active-tab bold-text');
        var href=thisElement.attr('href');
        content.css('display', 'none');
        $(''+href+'').show();
    };

    // Control aside
    $('.aside-click-open').on('click', function(e){
        e.preventDefault();
        $(this).next().toggleClass('aside-open');
        $(this).find('i').toggleClass('glyphicon-chevron-right');
        $(this).find('i').toggleClass('glyphicon-chevron-down');
    });

    $('.search-input').on('keyup',function(e) {
        e.preventDefault;
        changeSearchImg($(this));
    });
    
    // Change search image
    function changeSearchImg(thisElement){
        var value =thisElement.val();
        if((value.length) > 0) {
            thisElement.next().css({
                'color': '#302B4A'
            });
        }else{
            thisElement.next().css({
                'color': '#207DC0'
            });
        }
    };

    // Validate shoppingCart
    $('.input-quantity').keypress(function () {
       var maxLength = 2;
       var text = $(this).val();
       var textLength = text.length;
        if (textLength >= maxLength) {
           return false;
       }
    });

    $('body').on('click', '.buy-product', function(e){
        e.preventDefault();
        var imgToDrag = $(this).parents('.left-viewProduct').find("img").eq(0);
        flyProduct($(this), imgToDrag, $('.shopping-cart-icon'), 5, 5);
    });

    // Animate product
    function flyProduct(thisElement, startDestination, finalDestination, topPlus, leftPlus){
        if (startDestination) {
            var imgclone = startDestination.clone()
                .offset({
                top: startDestination.offset().top,
                left: startDestination.offset().left
            })
                .css({
                'opacity': '0.5',
                    'position': 'absolute',
                    'height': '100px',
                    'width': '150px',
                    'z-index': '100'
            })
                .appendTo($('body'))
                .animate({
                'top': finalDestination.offset().top + topPlus,
                    'left': finalDestination.offset().left + leftPlus,
                    'width': 10,
                    'height': 10
            }, 1500);

            setTimeout(function () {
                finalDestination.effect("shake", {
                    times: 2
                }, 200);
            }, 2000);

            imgclone.animate({
                'width': 0,
                'height': 0
            }, function () {
                $(this).detach()
            });
        }
    };

    // Control gallary
    $('.fancybox').fancybox({
        tpl : {
           closeBtn : '<a title="Затвори" class="fancybox-item fancybox-close" href="javascript:;"></a>',
           prev : '<a title="" class="fancybox-nav fancybox-prev" href="javascript:;"><span></span></a>',
           next: '<a title="" class="fancybox-nav fancybox-next" href="javascript:;"><span></span></a>'      
        },
        nextEffect: 'fade', 
        prevEffect: 'fade',
        afterShow: function() {
            var imageWidth = $(".fancybox-image").width();
            $(".fancybox-title-float-wrap .child").css({
                "width": imageWidth,
                "minWidth": 300,
                "textAlign": "center"
            });
        }
    });

    if(getFileName()=='contact.php'){
        // Create map
        function mapInit() {
            var myLatlng = new google.maps.LatLng(42.651967, 23.347339);
            var mapOptions = {
                zoom: 16,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var printMap = new google.maps.Map(document.getElementById('map-contact'), mapOptions);
            var printMapMarker = new google.maps.Marker({
                map:printMap,
                position: myLatlng,
            });
        };
        google.maps.event.addDomListener(window, "load", mapInit);
    }

    // Show and hide shopping cart container
    $('#shopping-cart-btn').on({
        mouseenter: function () {
            var thisAttr=$(this).attr('id');
            $("."+thisAttr).stop().slideDown(500);
        },
        mouseleave: function () {
            var thisAttr=$(this).attr('id');
            $("."+thisAttr).stop().slideUp(500);
        }
    }); 

    // Pagination
    $(document).ajaxStop(function() {
        $('.product-content').pajinate({
            items_per_page : 5,
            item_container_id : '#product-list',
            show_first_last : false,
            nav_label_prev : "<",
            nav_label_next :  ">"     
        });
    });

    // Filename
    function getFileName(){
        var url = window.location.pathname;
        var filename = url.substring(url.lastIndexOf('/')+1);
        return filename;
    };

});