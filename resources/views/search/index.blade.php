@extends('frontlayout.front')
@section('main-content')
    <main class="main">
        <div class="banner banner-cat">
            <div class="banner-content container">
                <h1 class="banner-title">
                    Resultados de Busqueda
                </h1>
            </div><!-- End .banner-content -->
        </div><!-- End .banner -->

        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Busqueda</a></li>
                </ol>
            </div><!-- End .container -->
        </nav>

        <div class="container">
            <nav class="toolbox">


                <div class="toolbox-item toolbox-show">
                    <label>Mostrando {{$tires->firstItem()}}–{{$tires->lastItem()}} de {{$tires->total()}} resultados</label>
                </div><!-- End .toolbox-item -->


            </nav>

            <div class="product-wrapper">
                <div class="row row-sm category-grid">

                    @foreach($tires as $tire)
                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="grid-product">
                            @if($tire->tirePhotos()->count()>0)
                            <figure class="product-image-container">
                                <a href="{{route('tire-byId',['tireId'=>$tire->id])}}" class="product-image">
                                    <img src="{{$tire->tirePhotos[0]->photo}}" alt="{{$tire->tire_name}}">
                                </a>
                            </figure>
                            @endif
                            <div class="product-details">
                                <h2 class="product-title">
                                    <a href="product.html">{{$tire->tire_name}}</a>
                                </h2>
                                <div class="price-box">
                                    <span class="product-price">Gs. {{\App\Helpers\AnsaHelper::getGsPrice($tire->price)}}</span>
                                    <span class="othercurrencies">RS$ {{\App\Helpers\AnsaHelper::getRsPrice($tire->price)}}  /  US$ {{$tire->price}}</span>
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
                    <label>Mostrando {{$tires->firstItem()}}–{{$tires->lastItem()}} de {{$tires->total()}} resultados</label>
                </div><!-- End .toolbox-item -->
                {!! $tires->links() !!}
                {{--<ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link page-link-btn" href="#"><i class="icon-angle-left"></i></a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><span>...</span></li>
                    <li class="page-item"><a class="page-link" href="#">15</a></li>
                    <li class="page-item">
                        <a class="page-link page-link-btn" href="#"><i class="icon-angle-right"></i></a>
                    </li>
                </ul>--}}
            </nav>
        </div><!-- End .container -->

        <div class="mb-5"></div><!-- margin -->
    </main><!-- End .main -->
@endsection