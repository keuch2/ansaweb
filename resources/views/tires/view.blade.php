@extends('frontlayout.front')

@section('main-content')

    @php
        if($tire->show_price)
        {
            $GsPrice = ($tire->final_price) * $dolarToGs;
            $RealPrice = ($tire->final_price) * $dolarToReal;
            $GsOldPrice = ($tire->price) * $dolarToGs;
        }
    @endphp

    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="icon-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="#">Neumático</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$tire->brand->brand_name}}</li>
                </ol>
                @php dd('test'); @endphp
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
                                            @if($tire->photo)
                                                <img class="product-single-image" src="{{ url($tire->photo)  }}" data-zoom-image="{{ url($tire->photo)  }}"/>
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
                                        @if($tire->photo)
                                            <img src="{{ url($tire->photo) }}"/>
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
                                    <h1 class="product-title">Neumático {{$tire->brand->brand_name}}  {{$tire->tire_name}}</h1>


                                    <div class="price-box">
                                        @if($tire->show_price)
                                            @if($tire->discount_rate > 0)
{{--                                                deactivated by customer request--}}
{{--                                                <span class="old-price">Gs. {{number_format($GsOldPrice, 0, ',', '.')}}</span>--}}
                                            @endif
                                            <span class="product-price">Gs. {{number_format($GsPrice, 0, ',', '.')}}</span>
                                            <span class="othercurrencies">RS$ {{ number_format($RealPrice, 2, ',', '.')}}  /  US$ {{ number_format($tire->final_price, 2, ',', '.')}}</span>
                                        @else
                                            <span class="product-price">Consulte precio con un representante</span>
                                        @endif
                                    </div><!-- End .price-box -->

                                    <div class="product-desc">
                                        <p>{{ $tire->tire_name }}</p>
                                    </div><!-- End .product-desc -->

                                    <script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5ce86e3e90e9470012983137&product=inline-share-buttons' async='async'></script>

                                    <div class="sharethis-inline-share-buttons"></div>

                                    <br><br>

                                    <h3>Especificaciones Técnicas</h3>

                                    <table class="table table-striped">

                                        <tbody>
                                        <tr>
                                            <th scope="row">MARCA:</th>
                                            <td>{{$tire->brand->brand_name}}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">ARO:</th>
                                            <td>{{$tire->radius->radius_name}} {{$tire->radius->radius_value}}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">LARGURA:</th>
                                            <td>{{$tire->width->width_name}} {{$tire->width->width_value}}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">PERFIL:</th>
                                            <td>{{$tire->profile->profile_name}} {{$tire->profile->profile_value}}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">TIPO :</th>
                                            <td>{{$tire->tire_type}}</td>
                                        </tr>

                                        </tr>
                                        </tbody>
                                    </table>


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
                                    <p><p>{!! $tire->description !!}</p></p>
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
                            @if($tire->brand->photo)
                                <a href="#">
                                    <img src="{{ url($tire->brand->photo) }}" alt="marca">
                                </a>
                            @endif
                        </div><!-- End .widget -->
                    </div>
                </aside><!-- End .col-md-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->


        @if(isset($similarTires))
            @if(count($similarTires) > 0)
                <div class="featured-section">
                    <div class="container">
                        <h2 class="carousel-title">Productos Relacionados</h2>
                        <div class="featured-products owl-carousel owl-theme owl-dots-top">

                            @foreach($similarTires as $similarTire)

                                @php
                                    if($similarTire->show_price)
                                    {
                                        $GsPrice2 = ($similarTire->final_price) * $dolarToGs;
                                        $RealPrice2 = ($similarTire->final_price) * $dolarToReal;
                                    }
                                @endphp

                                <div class="product">
                                    <figure class="product-image-container">
                                        <a href="{{route('tire-byId', ['tireId'=>$similarTire->id])}}" class="product-image">
                                            @if(!empty($similarTire->photo))
{{--                                                <img src="{{ url($similarTire->photo) }}" alt="neumatico" style="margin-left:auto; margin-right:auto; display:block;height: 240px; width: auto;"/>--}}
                                                <img src="{{ url($similarTire->photo) }}" alt="neumatico"/>
                                            @else
{{--                                                <img src="/front/img/noimage.png" alt="neumatico" style="margin-left:auto; margin-right:auto; display:block;height: 240px; width: auto;"/>--}}
                                                <img src="/front/img/noimage.png" alt="neumatico"/>
                                            @endif
                                        </a>
                                    </figure>
                                    <div class="product-details">
                                        <h2 class="product-title">
{{--                                            <a href="{{route('tire-byId', ['tireId'=>$similarTire->id])}}">Neumático {{$similarTire->brand->brand_name}}</a>--}}
                                            <a href="{{route('tire-byId', ['tireId'=>$similarTire->id])}}">Neumático {{$similarTire->brand->brand_name}} {{$similarTire->tire_name}}</a>
                                        </h2>
                                        <div class="price-box">
                                            @if($similarTire->show_price)
                                                <span class="product-price">Gs. {{number_format($GsPrice2, 0, ',', '.')}}</span>
                                                <span class="othercurrencies">RS$ {{ number_format($RealPrice2, 2, ',', '.')}}  /  US$ {{ number_format($similarTire->final_price, 2, ',', '.')}}</span>
                                            @else
                                                <span class="product-price">Consulte precio con un representante</span>
                                            @endif
                                        </div><!-- End .price-box -->
                                        <div class="product-action">
                                            <!--  <a href="product.html" class="paction add-cart" title="Add to Cart">
                                                <span>Agregar al Carrito</span>
                                            </a> -->
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