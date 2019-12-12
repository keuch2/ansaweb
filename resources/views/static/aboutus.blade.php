@extends('frontlayout.front')

@section('main-content')

    <main class="main">


        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Sobre America Neumaticos</li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="about-section">
            <div class="container">
                <h2 class="title">Sobre America Neumaticos</h2>

                <div class="container">

                    <div class="entry-slider owl-carousel owl-theme" data-plugin-options="{'autoplay': true, 'autoplayTimeout': 2000}">
                        <img src="/front/img/ansa1.jpg" alt="">
                        <img src="/front/img/ansa2.jpg" alt="">
                        <img src="/front/img/ansa3.jpg" alt="">
                        <img src="/front/img/ansa4.jpg" alt="">
                        <img src="/front/img/ansa5.jpg" alt="">
                    </div><!-- End .entry-slider -->
                    <br><br>
                </div>

                <h4>Más de 35 años trabajando con la mejor tecnología e innovación en el mercado.</h4>

                <p>La empresa se destaca hoy en día por su gran alcance a nivel nacional teniendo nueve sucursales a disposición de los clientes.</p>
                <p>Desde sus inicios en 1982, América Neumaticos S.A (ANSA), ha ido evolucionando abriendo el primer Autocentro en 1997. Así como el primer Autocentro Premium en el 2006, dando una atención diferenciada a lo que existía.</p>
                <p>Actualmente, seguimos trabajando pensando en la comodidad del cliente, en el 2017, inauguramos nuestra nueva sucursal ubicada en Mariano Roque Alonso (Gran Asunción) con tecnología de punta al mejor precio, valor y calidad.</p>
                <p>Nuestro éxito en su mayoría ha sido por la fuerza de las marcas reconocidas a nivel mundial que comercializamos: Goodyear, Titan, Rinaldi, Hyundai, Actioil, Tortuga, Xtire, Maxion, Alcoa.
                </p>
            </div><!-- End .container -->
        </div><!-- End .about-section -->

        @if(isset($brands))
            @if(count($brands) > 0)
                <div class="partners-container">
                    <div class="container">
                        <h2 class="subtitle">
                            <span>Nuestras Marcas</span>
                        </h2>
                        <div class="partners-carousel owl-carousel owl-theme">
                            @foreach($brands as $brand)
                                @if(!empty($brand->photo))

                                <a href="{{route('tires-list-byBrand', ['brandId' => $brand->id])}}" class="partner">
                                    <img src="{{ url($brand->photo) }}" alt="logo">
                                </a>
                                @endif
                            @endforeach
                        </div><!-- End .partners-carousel -->
                    </div><!-- End .container -->
                </div><!-- End .partners-container -->
            @endif
        @endif

    </main><!-- End .main -->

@endsection