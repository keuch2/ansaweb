@extends('frontlayout.front')

@section('main-content')

    <main class="main">


        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Sobre America Neumaticos</li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="about-section">
            <div class="container">
                <h2 class="title">Servicios</h2>

                <div class="container">

                    <div class="entry-slider owl-carousel owl-theme" data-plugin-options="{'autoplay': true, 'autoplayTimeout': 2000}">
                        <img src="/front/img/ansa5.jpg" alt="">
                        <img src="/front/img/ansa2.jpg" alt="">
                        <img src="/front/img/ansa1.jpg" alt="">

                        <img src="/front/img/ansa3.jpg" alt="">
                        <img src="/front/img/ansa4.jpg" alt="">

                    </div><!-- End .entry-slider -->



                    <br><br>

                </div>

                <div id="servicioslist">

                    <h2>Nuestros servicios incluyen:</h2>

                    <ul>

                        <li>Montura</li>

                        <li>Balanceo</li>

                        <li>Alineación</li>

                        <li>Suspensión</li>

                        <li>Mecánica Ligera</li>

                        <li>Cambio de aceite y filtros</li>
                    </ul>
                </div>
            </div><!-- End .container -->
        </div><!-- End .about-section -->



    </main><!-- End .main -->


@endsection