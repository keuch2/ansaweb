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

    @yield('header_scripts')
</head>
<body>
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
                        <div class="col-md-4">
                            <div class="widget">
                                <h4 class="widget-title">Neumáticos</h4>

                                <ul class="links">

                                    @foreach($vehicleTypes as $vehicleType)
                                        <li><a href="{{route('tires-list-byVehicleType', ['vehicleTypeId' => $vehicleType->id])}}">{{$vehicleType->vehicle_type}}</a></li>
                                    @endforeach

{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/1">Autos</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/2">Camionetas</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/3">Camiones</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/4">Motos</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/6">Agricolas</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/7">Utilitarios</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/tires/byVehicleType/8">OTR/Industriales</a></li>--}}
                                </ul>
                            </div><!-- End .widget -->
                        </div><!-- End .col-md-3 -->

                        <div class="col-md-4">
                            <div class="widget">
                                <h4 class="widget-title">Productos</h4>

                                <ul class="links">

                                    @foreach($productCategories as $productCategory)
                                        <li><a href="{{route('products-list-byCategoryId', ['productCategoryId' => $productCategory->id])}}">{{$productCategory->category_name}}</a></li>
                                    @endforeach

{{--                                    <li><a href="http://www.americaneumaticos.com.py/products/byCategoryId/2">Cámaras</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/products/byCategoryId/3">Llantas</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/products/byCategoryId/4">Tratamiento Multifunciones para el Diesel</a></li>--}}
{{--                                    <li><a href="http://www.americaneumaticos.com.py/products/byCategoryId/5">Blindaje de  cubiertas contra pinchazos</a></li>--}}
                                </ul>
                            </div><!-- End .widget -->
                        </div><!-- End .col-md-3 -->

                        <div class="col-md-4">
                            <div class="widget">

                                <h4 class="widget-title">Sobre Nosotros</h4>

                                <ul class="links">
                                    <li><a href="{{route('home')}}">Inicio</a></li>
                                    <li><a href="{{route('static-services')}}">Servicios</a></li>
                                    <li><a href="{{route('static-aboutus')}}">Acerca de ANSA</a></li>
                                    <li><a href="{{route('static-branchoffices')}}">Sucursales</a></li>
                                </ul>
                            </div><!-- End .widget -->
                        </div><!-- End .col-md-3 -->


                    </div><!-- End .row -->
                </div><!-- End .col-lg-8 -->


            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .footer-middle -->

    <div class="container">
        <div class="footer-bottom">
            <p class="footer-copyright">América Neumáticos S.A. &copy;  2019.  All Rights Reserved</p>


            <div class="social-icons">
                <a href="https://www.facebook.com/americaneumaticospy/" class="social-icon" target="_blank"><i class="icon-facebook"></i></a>
                <a href="https://www.instagram.com/americaneumaticospy/" class="social-icon" target="_blank"><i class="icon-instagram"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .footer-bottom -->
    </div><!-- End .containr -->
</footer><!-- End .footer -->



</body>
</html>