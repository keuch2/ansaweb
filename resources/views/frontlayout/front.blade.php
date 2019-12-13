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

</body>
</html>