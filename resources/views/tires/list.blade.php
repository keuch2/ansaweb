@extends('frontlayout.front')

@section('main-content')


    <main class="main">
        <div class="banner banner-cat">
            <div class="banner-content container">
                <h1 class="banner-title">
                    Neumáticos
                </h1>
            </div><!-- End .banner-content -->
        </div><!-- End .banner -->

        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Neumáticos</a></li>
                </ol>
            </div><!-- End .container -->
        </nav>


        <div class="container">
            <nav class="toolbox">
                <div class="toolbox-item toolbox-show">
                    <label>Mostrando {{$tires->currentPage()}} de {{$tires->total()}} resultados</label>
                    {{$tires->links()}}
                </div><!-- End .toolbox-item -->
            </nav>

            <div class="product-wrapper">
                <div class="row row-sm category-grid">
                    @foreach($tires as $tire)

                        @php
                            if($tire->show_price)
                            {
                                $GsPrice = ($tire->final_price) * $dolarToGs;
                                $RealPrice = ($tire->final_price) * $dolarToReal;
                                $GsOldPrice = ($tire->price) * $dolarToGs;
                            }
                        @endphp

                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid-product">
                                <figure class="product-image-container">
                                    <a href="{{route('tire-byId', ['tireId'=>$tire->id])}}" class="product-image">
{{--                                        @if(!empty($tire->photo))--}}
{{--                                            <img src="{{ url($tire->photo) }}" alt="neumatico">--}}
{{--                                        @endif--}}

                                        @if($tire->photo)
                                            <img src="{{ url($tire->photo) }}" alt="neumatico" height="50%"/>
                                        @else
                                            <img src="/front/img/noimage.png"/>
                                        @endif

                                    </a>
                                </figure>
                                <div class="product-details">
                                    <h2 class="product-title">
{{--                                        <a href="{{route('tire-byId', ['tireId'=>$tire->id])}}">Neumático {{$tire->brand->brand_name}}</a>--}}
                                        <a href="{{route('tire-byId', ['tireId'=>$tire->id])}}">Neumático {{$tire->brand->brand_name}} {{$tire->tire_name}}</a>
                                    </h2>
                                    <div class="price-box">
                                        @if($tire->show_price)
                                            <span class="product-price">Gs. {{number_format($GsPrice, 0, ',', '.')}}</span>
                                            <span class="othercurrencies">RS$ {{ number_format($RealPrice, 2, ',', '.')}}  /  US$ {{ number_format($tire->final_price, 2, ',', '.')}}</span>
                                        @else
                                            <span class="product-price">Consulte precio con un representante</span>
                                        @endif
                                    </div><!-- End .price-box -->
                                    <!-- <div class="product-grid-action">
                                            <a href="product.html" class="paction add-cart" title="Add to Cart">
                                            <span>Agregar al Carrito</span>
                                        </a>
                                    </div> --><!-- End .product-action -->
                                </div><!-- End .product-details -->
                            </div><!-- End .product -->
                        </div><!-- End .col-xl-3 -->
                    @endforeach

                </div><!-- End .row -->
            </div>

            <nav class="toolbox toolbox-pagination">
                <div class="toolbox-item toolbox-show">
                    <label>Mostrando {{$tires->currentPage()}} de {{$tires->total()}} resultados</label>
                </div><!-- End .toolbox-item -->

                {{$tires->links()}}
            </nav>
        </div><!-- End .container -->

        <div class="mb-5"></div><!-- margin -->
    </main><!-- End .main -->



@endsection