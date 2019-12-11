@extends('frontlayout.front')

@section('main-content')

    @php
    //dd($products);
    @endphp
    <main class="main">
        <div class="banner banner-cat">
            <div class="banner-content container">
                <h1 class="banner-title">
                    Productos
                </h1>
            </div><!-- End .banner-content -->
        </div><!-- End .banner -->

        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Productos</a></li>
                </ol>
            </div><!-- End .container -->
        </nav>


        <div class="container">
            <nav class="toolbox">
                <div class="toolbox-item toolbox-show">
                    <label>Mostrando {{$products->currentPage()}} de {{$products->total()}} resultados</label>
                    {{$products->links()}}
                </div><!-- End .toolbox-item -->
            </nav>

            <div class="product-wrapper">
                <div class="row row-sm category-grid">
                    @foreach($products as $product)

                        @php
                            $GsPrice = ($product->final_price) * $dolarToGs;
                            $RealPrice = ($product->final_price) * $dolarToReal;
                            $GsOldPrice = ($product->price) * $dolarToGs;

                            //dd($GsPrice, $RealPrice, $GsOldPrice);
                        @endphp

                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid-product">
                                <figure class="product-image-container">
                                    <a href="{{route('product-byId', ['productId'=>$product->id])}}" class="product-image">
{{--                                        @if(!empty($tire->photo))--}}
{{--                                            <img src="{{ url($tire->photo) }}" alt="neumatico">--}}
{{--                                        @endif--}}

                                        @if($product->photo)
                                            <img src="{{ url($product->photo) }}" alt="producto"/>
                                        @else
                                            <img src="/front/img/noimage.png"/>
                                        @endif

                                    </a>
                                </figure>
                                <div class="product-details">
                                    <h2 class="product-title">
{{--                                        <a href="{{route('product-byId', ['productId'=>$product->id])}}">Producto {{$product->brand->brand_name}}</a>--}}
                                        <a href="{{route('product-byId', ['productId'=>$product->id])}}">Producto {{$product->product_name}}</a>
                                    </h2>
                                    <div class="price-box">
                                        <span class="product-price">Gs. {{number_format($GsPrice, 0, ',', '.')}}</span>
                                        <span class="othercurrencies">RS$ {{ number_format($RealPrice, 2, ',', '.')}}  /  US$ {{ number_format($product->final_price, 2, ',', '.')}}</span>
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
                    <label>Mostrando {{$products->currentPage()}} de {{$products->total()}} resultados</label>
                </div><!-- End .toolbox-item -->

                {{$products->links()}}
            </nav>
        </div><!-- End .container -->

        <div class="mb-5"></div><!-- margin -->
    </main><!-- End .main -->



@endsection