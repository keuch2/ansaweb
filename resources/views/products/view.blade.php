@extends('frontlayout.front')

@section('main-content')

    @php
        $GsPrice = ($product->final_price) * $dolarToGs;
        $RealPrice = ($product->final_price) * $dolarToReal;
        $GsOldPrice = ($product->price) * $dolarToGs;
    @endphp

    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="icon-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="#">Producto</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$product->brand->brand_name}}</li>
                </ol>
            </div><!-- End .container -->
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="product-single-container product-single-default">
                        <div class="row">
                            <div class="col-lg-7 col-md-6 product-single-gallery">
                                <div class="product-slider-container product-item">
                                    <div class="product-single-carousel owl-carousel owl-theme">
                                        <!-- main photo -->
                                        <div class="product-item">
                                            @if($product->photo)
                                                <img class="product-single-image" src="{{ url($product->photo)  }}" data-zoom-image="{{ url($product->photo)  }}"/>
                                            @else
                                                <img class="product-single-image" src="/front/img/noimage.png" data-zoom-image="/front/img/noimage.png"/>
                                            @endif
                                        </div>

                                        @if(isset($photos))
                                            @if(count($photos) > 0)
                                                @foreach($photos as $photo)
                                                    <div class="product-item">
                                                        <img class="product-single-image" src="{{ url($photo->photo) }}" data-zoom-image="{{ url($photo->photo) }}"/>
                                                    </div>
                                                @endforeach
                                            @endif
                                        @endif

                                    </div>
                                    <!-- End .product-single-carousel -->
                                    <span class="prod-full-screen">
                                            <i class="icon-plus"></i>
                                        </span>
                                </div>
                                <div class="prod-thumbnail row owl-dots" id='carousel-custom-dots'>
                                    <div class="col-3 owl-dot">
                                        @if($product->photo)
                                            <img src="{{ url($product->photo) }}"/>
                                        @else
                                            <img src="/front/img/noimage.png"/>
                                        @endif

                                    </div>
                                    @if(isset($photos))
                                        @if(count($photos) > 0)
                                            @foreach($photos as $photo)
                                                <div class="col-3 owl-dot">
                                                    <img src="{{ url($photo->photo) }}"/>
                                                </div>
                                            @endforeach
                                        @endif
                                    @endif

                                </div>
                            </div><!-- End .col-lg-7 -->

                            <div class="col-lg-5 col-md-6">
                                <div class="product-single-details">
                                    <h1 class="product-title">Producto {{$product->brand->brand_name}}</h1>


                                    <div class="price-box">
                                        <span class="old-price">Gs. {{number_format($GsOldPrice, 0, ',', '.')}}</span>
                                        <span class="product-price">Gs. {{number_format($GsPrice, 0, ',', '.')}}</span>
                                        <span class="othercurrencies">RS$ {{ number_format($RealPrice, 2, ',', '.')}}  /  US$ {{ number_format($product->final_price, 2, ',', '.')}}</span>
                                    </div><!-- End .price-box -->

                                    <div class="product-desc">
                                        <p>{{ $product->product_name }}</p>
                                    </div><!-- End .product-desc -->

                                    <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce86e3e90e9470012983137&product=inline-share-buttons' async='async'></script>

                                    <div class="sharethis-inline-share-buttons"></div>

                                    <br><br>

{{--                                    <h3>Especificaciones Técnicas</h3>--}}
{{--                                    <table class="table table-striped">--}}

{{--                                        <tbody>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">MARCA:</th>--}}
{{--                                            <td>{{$product->brand->brand_name}}</td>--}}
{{--                                        </tr>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">ARO:</th>--}}
{{--                                            <td>{{$product->radius->radius_name}} {{$product->radius->radius_value}}</td>--}}
{{--                                        </tr>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">LARGURA:</th>--}}
{{--                                            <td>{{$product->width->width_name}} {{$product->width->width_value}}</td>--}}
{{--                                        </tr>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">PERFIL:</th>--}}
{{--                                            <td>{{$product->profile->profile_name}} {{$product->profile->profile_value}}</td>--}}
{{--                                        </tr>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">INDICE DE CARGA (POR CUBIERTA):</th>--}}
{{--                                            <td>82 (475 Kg)</td>--}}
{{--                                        </tr>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">INDICE DE VELOCIDAD:</th>--}}
{{--                                            <td>T (190 Km/h)</td>--}}
{{--                                        </tr>--}}
{{--                                        <tr>--}}
{{--                                            <th scope="row">TIPO :</th>--}}
{{--                                            <td>{{$product->product_type}}</td>--}}
{{--                                        </tr>--}}

{{--                                        </tr>--}}
{{--                                        </tbody>--}}
{{--                                    </table>--}}


                                    <div class="product-action product-all-icons">
                                        <div class="product-single-qty">
                                            <!-- <input class="horizontal-quantity form-control" type="text"> -->
                                        </div><!-- End .product-single-qty -->

                                        <!-- <a href="cart.html" class="paction add-cart" title="Add to Cart">
                                            <span>Agregar al Carrito</span>
                                        </a> -->

                                    </div><!-- End .product-action -->

                                </div><!-- End .product-single-details -->
                            </div><!-- End .col-lg-5 -->
                        </div><!-- End .row -->
                    </div><!-- End .product-single-container -->

                    <div class="product-single-tabs">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="product-tab-desc" data-toggle="tab" href="#product-desc-content" role="tab" aria-controls="product-desc-content" aria-selected="true">Descripcion</a>
                            </li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="product-desc-content" role="tabpanel" aria-labelledby="product-tab-desc">
                                <div class="product-desc-content">
                                    <p><p>{!! $product->description !!}</p></p>
                                </div><!-- End .product-desc-content -->
                            </div><!-- End .tab-pane -->



                        </div><!-- End .tab-content -->
                    </div><!-- End .product-single-tabs -->
                </div><!-- End .col-lg-9 -->

                <div class="sidebar-overlay"></div>
                <div class="sidebar-toggle"><i class="icon-sliders"></i></div>
                <aside class="sidebar-product col-lg-3 padding-left-lg mobile-sidebar">
                    <div class="sidebar-wrapper">
                        <div class="widget widget-brand">
                            <a href="#">
                                <img src="{{ url($product->brand->photo) }}" alt="marca">
                            </a>
                        </div><!-- End .widget -->


{{--                        <div class="widget widget-featured">--}}
{{--                            <h3 class="widget-title">Otros Productos</h3>--}}

{{--                            <div class="widget-body">--}}
{{--                                <div class="owl-carousel widget-featured-products">--}}
{{--                                    <div class="featured-col">--}}

{{--                                        <div class="product product-sm">--}}
{{--                                            <figure class="product-image-container">--}}
{{--                                                <a href="product.html" class="product-image">--}}
{{--                                                    <img src="img/neumatico.jpg" alt="product">--}}
{{--                                                </a>--}}
{{--                                            </figure>--}}
{{--                                            <div class="product-details">--}}
{{--                                                <h2 class="product-title">--}}
{{--                                                    <a href="product.html">Neumatico</a>--}}
{{--                                                </h2>--}}

{{--                                                <div class="price-box">--}}
{{--                                                    <span class="product-price">Gs. 400.000</span>--}}
{{--                                                    <span class="othercurrencies">RS$ 2039  /  US$ 938</span>--}}
{{--                                                </div><!-- End .price-box -->--}}
{{--                                            </div><!-- End .product-details -->--}}
{{--                                        </div><!-- End .product -->--}}

{{--                                        <div class="product product-sm">--}}
{{--                                            <figure class="product-image-container">--}}
{{--                                                <a href="product.html" class="product-image">--}}
{{--                                                    <img src="img/neumatico.jpg" alt="product">--}}
{{--                                                </a>--}}
{{--                                            </figure>--}}
{{--                                            <div class="product-details">--}}
{{--                                                <h2 class="product-title">--}}
{{--                                                    <a href="product.html">Neumatico</a>--}}
{{--                                                </h2>--}}

{{--                                                <div class="price-box">--}}
{{--                                                    <span class="product-price">Gs. 400.000</span>--}}
{{--                                                    <span class="othercurrencies">RS$ 2039  /  US$ 938</span>--}}

{{--                                                </div><!-- End .price-box -->--}}
{{--                                            </div><!-- End .product-details -->--}}
{{--                                        </div><!-- End .product -->--}}

{{--                                        <div class="product product-sm">--}}
{{--                                            <figure class="product-image-container">--}}
{{--                                                <a href="product.html" class="product-image">--}}
{{--                                                    <img src="img/neumatico.jpg" alt="product">--}}
{{--                                                </a>--}}
{{--                                            </figure>--}}
{{--                                            <div class="product-details">--}}
{{--                                                <h2 class="product-title">--}}
{{--                                                    <a href="product.html">Neumatico</a>--}}
{{--                                                </h2>--}}

{{--                                                <div class="price-box">--}}
{{--                                                    <span class="product-price">Gs. 400.000</span>--}}
{{--                                                    <span class="othercurrencies">RS$ 2039  /  US$ 938</span>--}}
{{--                                                </div><!-- End .price-box -->--}}
{{--                                            </div><!-- End .product-details -->--}}
{{--                                        </div><!-- End .product -->--}}
{{--                                    </div><!-- End .featured-col -->--}}
{{--                                </div><!-- End .widget-featured-slider -->--}}
{{--                            </div><!-- End .widget-body -->--}}
{{--                        </div><!-- End .widget -->--}}
                    </div>
                </aside><!-- End .col-md-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->

        @if(isset($similarProducts))
            @if(count($similarProducts) > 0)
                <div class="featured-section">
                    <div class="container">
                        <h2 class="carousel-title">Productos Relacionados</h2>
                        <div class="featured-products owl-carousel owl-theme owl-dots-top">

                            @foreach($similarProducts as $similarProduct)

                                @php
                                    $GsPrice2 = ($similarProduct->final_price) * $dolarToGs;
                                    $RealPrice2 = ($similarProduct->final_price) * $dolarToReal;
                                @endphp

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="{{route('product-byId', ['productId'=>$similarProduct->id])}}" class="product-image">
                                            @if(!empty($similarProduct->photo))
                                                <img src="{{ url($similarProduct->photo) }}" alt="producto"/>
                                            @else
                                                <img src="/front/img/noimage.png" alt="producto"/>
                                            @endif
                                        </a>
                                    </figure>
                                    <div class="product-details">
                                        <h2 class="product-title">
                                            <a href="{{route('product-byId', ['productId'=>$similarProduct->id])}}">Producto {{$similarProduct->brand->brand_name}}</a>
                                        </h2>
                                        <div class="price-box">
                                            <span class="product-price">Gs. {{number_format($GsPrice2, 0, ',', '.')}}</span>
                                            <span class="othercurrencies">RS$ {{ number_format($RealPrice2, 2, ',', '.')}}  /  US$ {{ number_format($similarProduct->final_price, 2, ',', '.')}}</span>
                                        </div><!-- End .price-box -->
                                        <div class="product-action">
                                            <!--  <a href="product.html" class="paction add-cart" title="Add to Cart">
                                                <span>Agregar al Carrito</span>
                                            </a> --> -->
                                        </div><!-- End .product-action -->
                                    </div><!-- End .product-details -->
                                </div><!-- End .product -->
                            @endforeach

                        </div><!-- End .featured-proucts -->
                    </div><!-- End .container -->
                </div><!-- End .featured-section -->
            @endif
        @endif
    </main><!-- End .main -->


@endsection