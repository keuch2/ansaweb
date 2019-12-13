@php

@endphp
@extends('frontlayout.front')

@section('main-content')

    <main class="main">

{{--        <div class="home-top-container">--}}
{{--            <div class="container">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-lg-12">--}}
{{--                        <div class="banner banner-image">--}}
{{--                            <a href="#">--}}
{{--                                <img src="front/img/mra.jpg" alt="banner">--}}
{{--                            </a>--}}
{{--                        </div><!-- End .banner -->--}}
{{--                    </div><!-- End .col-lg-5 -->--}}
{{--                </div><!-- End .row -->--}}
{{--            </div><!-- End .container -->--}}
{{--        </div><!-- End .home-top-container -->--}}


        <div class="home-top-container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-carousel owl-theme">

                            @if(isset($banners))
                                @if(count($banners) > 0)
                                    @foreach($banners as $banner)
                                        <div class="item">
                                            <a href="#">
                                                <img src="{{ url($banner->photo) }}" alt="banner">
                                            </a>
                                        </div>
                                    @endforeach
                                @else
                                    <div class="item">
                                        <a href="#">
                                            <img src="/front/img/mra.jpg" alt="banner">
                                        </a>
                                    </div>
                                @endif
                            @else
                                <div class="item">
                                    <a href="#">
                                        <img src="/front/img/mra.jpg" alt="banner">
                                    </a>
                                </div>

                            @endif
                        </div><!-- End .banner -->

                    </div><!-- End .col-lg-5 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .home-top-container -->






        <!-- BUSCADOR -->
        @include('parts.home_search')
        <!-- END BUSCADOR -->

        <div class="mb-5"></div><!-- margin -->

        @if(isset($featured))
            @if(count($featured) > 0)
                <!-- DESTACADOS -->
                <div class="container">
                    <h2 class="subtitle">
                        <span>Neumáticos Destacados</span>
                    </h2>

                    <div class="featured-products owl-carousel owl-theme owl-nav-top">
                        @foreach($featured as $ft)
                            @php
                                $GsPrice = ($ft->final_price) * $dolarToGs;
                                $RealPrice = ($ft->final_price) * $dolarToReal;

                            @endphp

                            <div class="product">
                                <figure class="product-image-container">
                                    <a href="{{route('tire-byId', ['tireId'=>$ft->id])}}" class="product-image">
                                        @if(!empty($ft->photo))
                                            <img src="{{ url($ft->photo) }}" alt="neumatico" style="margin-left:auto; margin-right:auto; display:block;height: 240px; width: auto;">
                                        @else
                                            <img src="/front/img/noimage.png" style="margin-left:auto; margin-right:auto; display:block;height: 240px; width: auto;"/>
                                        @endif
                                    </a>
                                </figure>
                                <div class="product-details">
                                    <div class="ratings-container">
                                    </div><!-- End .product-container -->
                                    <h2 class="product-title">
                                        <a href="{{route('tire-byId', ['tireId'=>$ft->id])}}">Neumático {{$ft->brand->brand_name}} {{$ft->tire_name}}</a>
                                    </h2>
                                    <div class="price-box">
                                        @if($ft->show_price)
                                            <span class="product-price">Gs. {{number_format($GsPrice, 0, ',', '.')}}</span>
                                            <span class="othercurrencies">RS$ {{ number_format($RealPrice, 2, ',', '.')}}  /  US$ {{ number_format($ft->final_price, 2, ',', '.')}}</span>
                                        @else
                                            <span class="product-price">Consulte precio con un representante</span>
                                        @endif
                                    </div><!-- End .price-box -->
                                    <div class="product-action">
                                        <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                            <span>Agregar al Carrito</span>
                                        </a> -->
                                    </div><!-- End .product-action -->
                                </div><!-- End .product-details -->
                            </div><!-- End .product -->
                        @endforeach
                    </div><!-- End .featured-products -->

                </div><!-- End .container -->
                <!-- END DESTACADOS -->
            @endif
        @endif

        <div class="mb-5"></div><!-- margin -->

        @if(isset($promotions))
            @if(count($promotions) > 0)
                <!-- PROMOCIONES -->
                <div class="banners-section">
                    <div class="container">
                        <h2 class="subtitle text-center"><span>Promociones</span></h2>
                        <div class="cats-carousel owl-carousel owl-theme">
                            @foreach($promotions as $promotion)
                                <div class="banner banner-image">
                                    <a href="#">
                                        @if(!empty($promotion->photo))
                                            <img src="{{ url($promotion->photo) }}" alt="promotion">
                                        @endif
                                    </a>
                                </div><!-- End .banner -->
                            @endforeach
                        </div><!-- End .cat-carousel -->
                    </div><!-- End .container -->
                </div><!-- End .banners-section -->
                <!-- END PROMOCIONES -->
            @endif
        @endif

        <div class="mb-5"></div><!-- margin -->
        @if(isset($brands))
            @if(count($brands) > 0)
                <!-- NUESTRAS MARCAS -->
                <div class="partners-container">
                    <div class="container">
                        <h2 class="subtitle">
                            <span>Nuestras Marcas</span>
                        </h2>
                        <div class="partners-carousel owl-carousel owl-theme">
                            @foreach($brands as $brand)
                                <a href="{{route('tires-list-byBrand', ['brandId' => $brand->id])}}" class="partner">
                                    @if(!empty($brand->photo))
                                        <img src="{{ url($brand->photo) }}" alt="logo">
                                    @endif
                                </a>
                            @endforeach
                        </div><!-- End .partners-carousel -->
                    </div><!-- End .container -->
                </div><!-- End .partners-container -->
                <!-- END NUESTRAS MARCAS -->
            @endif
        @endif

        <div class="mb-5"></div><!-- margin -->

        @if(isset($offers))
            @if(count($offers) > 0)
                <!-- OFERTAS -->
                <div class="container arrived-products">
                    <h2 class="subtitle">
                        <span>Ofertas</span>
                    </h2>

                    <div class="row">
                        @foreach($offers as $offer)
                            @php
                                $GsPrice = ($offer->final_price) * $dolarToGs;
                                $RealPrice = ($offer->final_price) * $dolarToReal;
                                $GsOldPrice = ($offer->price) * $dolarToGs;
                            @endphp

                            <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                            <div class="product product-overlay">
                                <figure class="product-image-container">
                                    <a href="{{route('tire-byId', ['tireId'=>$offer->id])}}" class="product-image">
                                        @if(!empty($offer->photo))
                                            <img src="{{ url($offer->photo) }}" alt="neumatico">
                                        @endif
                                    </a>
{{--                                    deactivated by customer request--}}
{{--                                    <span class="product-label label-sale">{{ number_format($offer->discount_rate, 0, ',', '.')}} % OFF</span>--}}
                                    <div class="product-action">
                                        <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                            <span>Agregar al Carrito</span>
                                        </a> -->
                                    </div><!-- End .product-action -->
                                </figure>
                                <div class="product-details">
                                    <div class="ratings-container">
                                    </div><!-- End .product-container -->
                                    <h2 class="product-title">
                                        <a href="{{route('tire-byId', ['tireId'=>$offer->id])}}">Neumático {{$offer->brand->brand_name}} {{$offer->tire_name}}</a>
                                    </h2>
                                    <div class="price-box">
{{--                                        deactivated by customer request--}}
{{--                                        <span class="old-price">Gs. {{number_format($GsOldPrice, 0, ',', '.')}}</span>--}}
                                        <span class="product-price">Gs. {{number_format($GsPrice, 0, ',', '.')}}</span>
                                        <span class="othercurrencies">RS$ {{ number_format($RealPrice, 2, ',', '.')}}  /  US$ {{ number_format($offer->final_price, 2, ',', '.')}}</span>
                                    </div><!-- End .price-box -->

                                </div><!-- End .product-details -->
                            </div><!-- End .product -->
                        </div><!-- End .col-xl-2 -->
                        @endforeach

                    </div><!-- End .row -->
                </div><!-- End .container -->
                <!-- END OFERTAS -->
            @endif
        @endif

        <div class="mb-5"></div><!-- margin -->


    </main><!-- End .main -->

@endsection