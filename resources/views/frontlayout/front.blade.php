<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>América Neumáticos S.A. - ANSA</title>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/front/assets/images/icons/favicon_ansa.png">

    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="/front/assets/css/bootstrap.min.css">

    <!-- Main CSS File -->
    <link rel="stylesheet" href="/front/assets/css/style.min.css">

    <link rel="stylesheet" href="/front/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/front/owlcarousel/owl.theme.default.min.css">

    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-P9CGJ6H');</script>
    <!-- End Google Tag Manager -->


    @yield('header_scripts')
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P9CGJ6H" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page-wrapper">
    <header class="header">
        @include('includes.header-top')
        @include('includes.header-middle')
    </header><!-- End .header -->

    @yield('main-content')

</div><!-- End .page-wrapper -->

@include('includes.header-mobile')


<a id="scroll-top" href="#top" title="Top" role="button"><i class="icon-angle-up"></i></a>

<!-- Plugins JS File -->
<script src="/front/assets/js/jquery.min.js"></script>
<script src="/front/assets/js/bootstrap.bundle.min.js"></script>
<script src="/front/assets/js/plugins.min.js"></script>

<!-- Main JS File -->
<script src="/front/assets/js/main.min.js"></script>

<script src="front//owlcarousel/owl.carousel.min.js"></script>

@yield('footer_scripts')

<script>

    function setCurrency(cid)
    {
        var token = $("input[name='_token']").val();
        $.ajax({
            url: "<?php echo route('setcurrency-ajax')?>",
            method: 'POST',
            data: {
                currencyId: cid,
                _token:token
            },
            success: function(data) {
                //alert('success:  '+ data.currency_label);
                $("#current_currency").html(data.currency_label);

            },
            error: function(e){
                //alert('error ' + JSON.stringify(e) )
                Console.log('error ' + JSON.stringify(e));
            }
        });
    }


    //$('.owl-carousel').owlCarousel({
    $('.home-carousel').owlCarousel({
        loop:true,
        autoplay:true,
        margin:10,
        nav:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
    })
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-118985324-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-118985324-1');
</script>

<footer class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">

                        <div class="col-md-6">
                            <div class="widget">
                                <h4 class="widget-title">Sucursales</h4>

                                <div class="row" id="sucursalesfoot">

                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>CASA CENTRAL</h3>
                                            <p>Pitiantuta esq. Oleary y 1 de Diciembre<br>
                                                Tel. <a href="tel:+5950336273125">(0336)273125</a><br>
                                                Pedro Juan Caballero
                                            </p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/ryh9NsbyqvdeNTeV9" target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>TRUCK CENTER</h3>
                                            <p>Pitiantuta esq. Oleary y 1 de Diciembre<br>
                                            Tel. <a href="tel:+5950336273125">(0336)273125</a><br>
                                            Pedro Juan Caballero</p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/ryh9NsbyqvdeNTeV9" target="_blank">ver en mapa</a>
                                            </p>

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>ANSA SHOPPING CHINA PJC</h3>
                                            <p>Pitiantuta esq. 1 de Diciembre<br>
                                            Tel. <a href="tel:+5950336273125">(0336)273125</a><br>
                                            Pedro Juan Caballero</p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/ryh9NsbyqvdeNTeV9" target="_blank">ver en mapa</a>
                                            </p>

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>ANSA ASUNCIÓN</h3>
                                            <p>Complejo Barrail, Avda. Artigas entre Av Gral Máximo Santos y Concepción Leyes de Chaves. Deposito  05<br>
                                            Tel. <a href="tel:+59521755403">(021)755403</a><br>
                                            Asunción</p>
                                            <p>
                                                <a class="maplink" href="https://maps.app.goo.gl/RdaN5HwYmUJ7S58z6" target="_blank">ver en mapa</a>
                                            </p>

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>ENCARNACION</h3>
                                            <p>Ruta 6 km 3 - Barrio Santa María<br>
                                                Tel. <a href="tel:+595217279562">(021) 7279562</a> / <a href="tel:+595984679722">+595 984 679 722</a></p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/CRBo8cFBhMWSnarbA" target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>SALTO DEL GUAIRA</h3>
                                            <p>Avda. Paraguay c/ Pablo VI<br>
                                                Tel. <a href="tel:+595046242819">(046) 242819</a></p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/tk7xT5M93PWDH5EM6" target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>CIUDAD DEL ESTE</h3>
                                            <p>Avda. San Blas - Ruta Internacional Km. 5<br>
                                                Tel. <a href="tel:+595061570725">(061) 570725</a></p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/tbrfQA2GS8jWr4MN7" target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>SANTA RITA</h3>
                                            <p>Gaspar Rodríguez de Francia / Ruta VII - Barrio Sinuelo II<br>
                                                Tel. <a href="tel:+595984679735">(0984) 679 735</a></p>
                                            <p>
                                                <a class="maplink" href="https://maps.app.goo.gl/xoq5PajUCzg6oD4EA" target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>CAPITAN BADO</h3>
                                            <p>Avda. Internacional c/ José E. Diaz<br>Tel. <a href="tel:+59537230450">(037) 230 450</a></p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/euXE3ukszrQXgc4p6" target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="sucursal">
                                            <h3>BELLA VISTA</h3>
                                            <p>Gral Diaz e/ Ruta Internacional<br>Tel. <a href="tel:+59538238546">(038) 238 546</a></p>
                                            <p>
                                                <a class="maplink" href="https://goo.gl/maps/K8k7DPTcwdm1XxoF6  " target="_blank">ver en mapa</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </div><!-- End .widget -->
                        </div><!-- End .col-md-3 -->

                        <div class="col-md-3">
                            <div class="widget">
                                <h4 class="widget-title">Neumáticos</h4>

                                <ul class="links">

                                    @foreach($vehicleTypes as $vehicleType)
                                        <li><a href="{{route('tires-list-byVehicleType', ['vehicleTypeId' => $vehicleType->id])}}">{{$vehicleType->vehicle_type}}</a></li>
                                    @endforeach

                                </ul>

                                <h4 class="widget-title" style="padding-top: 20px;">Productos</h4>
                                <ul class="links">
                                    @foreach($productCategories as $productCategory)
                                        <li><a href="{{route('products-list-byCategoryId', ['productCategoryId' => $productCategory->id])}}">{{$productCategory->category_name}}</a></li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget -->
                        </div><!-- End .col-md-3 -->

                        <div class="col-md-3">
                            <div class="widget">
                                <h4 class="widget-title">Servicios</h4>

                                <ul class="links" style="padding-bottom: 20px;">
                                    <li>Montura</li>
                                    <li>Balanceo</li>
                                    <li>Alineación</li>
                                    <li>Suspensión</li>
                                    <li>Mecánica Ligera</li>
                                    <li>Cambio de aceite y filtros</li>
                                </ul>


                                <h4 class="widget-title" style="padding-top: 20px;">Seguinos</h4>
                                <div id="foot-social-icons">
                                    <a href="https://www.facebook.com/americaneumaticospy/" target="_blank"><i class="icon-facebook"></i></a>
                                    <a href="https://www.instagram.com/americaneumaticospy/" target="_blank"><i class="icon-instagram"></i></a>
                                </div><!-- End .social-icons -->
                                <a href="https://wa.me/595984679739" target="_blank"><img src="/front/img/contactowhatsapp.jpg"></a>
                            </div><!-- End .widget -->
                        </div><!-- End .col-md-3 -->
                    </div><!-- End .row -->
                </div><!-- End .col-lg-8 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .footer-middle -->
</footer><!-- End .footer -->






</body>
</html>