@extends('frontlayout.front')

@section('main-content')

    <main class="main">

        <div class="home-top-container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="banner banner-image">
                            <a href="#">
                                <img src="front/img/mra.jpg" alt="banner">
                            </a>
                        </div><!-- End .banner -->
                    </div><!-- End .col-lg-5 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .home-top-container -->

        <!-- BUSCADOR -->
        <div class="banners-section">
            <div class="container">
                <h2 class="subtitle text-center"><span>Buscar Neumáticos por Medida</span></h2>

                <div class="row">

                    <div class="col-md-3">
                        <h5>Largura</h5>
                        <select id="" name="" class="form-control">
                            <option>Todos</option>
                            <option>155</option><option>165</option><option>175</option><option>185</option><option>195</option><option>205</option><option>215</option><option>225</option><option>235</option><option>245</option><option>255</option><option>265</option><option>275</option><option>285</option><option>295</option><option>305</option><option>315</option><option>320</option><option>340</option><option>380</option><option>385</option><option>420</option><option>425</option><option>480</option><option>520</option><option>600</option><option>650</option><option>710</option><option>800</option><option>850</option><option>2.50</option><option>03.00</option><option>03.50</option><option>04.10</option><option>05.00</option><option>06.50</option><option>06.00</option><option>07.00</option><option>07.50</option><option>08.25</option><option>09.00</option><option>09.50</option><option>10.5/80</option><option>10.00</option><option>11L</option><option>11.00</option><option>11.2</option><option>12.5/80</option><option>12.4</option><option>12.00</option><option>13.00</option><option>13.6</option><option>14.00</option><option>14.9</option><option>16.9</option><option>16.00</option><option>17.5</option><option>18.00</option><option>18.4</option><option>20.8</option><option>20.5</option><option>21.00</option><option>23</option><option>23.5</option><option>23.1</option><option>24.5</option><option>26.5</option><option>28.00</option><option>29.5</option><option>30.00</option><option>31.00</option><option>32.00</option><option>33.00</option><option>35.00</option><option>37</option><option>90</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <h5>Perfil</h5>
                        <select id="" name="" class="form-control">
                            <option>Todos</option>
                            <option>12.50</option><option>13.50</option><option>30</option><option>35</option><option>4.10</option><option>40</option><option>45</option><option>50</option><option>55</option><option>60</option><option>65</option><option>70</option><option>75</option><option>80</option><option>85</option><option>90</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <h5>Aro</h5>
                        <select id="" name="" class="form-control">
                            <option>Todos</option>
                            <option>08</option><option>09</option><option>10</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>16.5</option><option>17.5</option><option>17</option><option>18</option><option>19</option><option>19.5</option><option>20</option><option>21</option><option>22</option><option>22.5</option><option>24.5</option><option>24</option><option>25</option><option>26</option><option>28</option><option>30</option><option>30.5</option><option>32</option><option>34</option><option>36</option><option>38</option><option>42</option><option>46</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <h5 style="color:#003399;">.</h5>
                        <a href="#" class="form-control btn-dark">BUSCAR</a>
                    </div>

                </div>

            </div>
        </div>
        <!-- END BUSCADOR -->

        <div class="mb-5"></div><!-- margin -->

        <!-- DESTACADOS -->
        <div class="container">
            <h2 class="subtitle">
                <span>Destacados</span>
            </h2>

            <div class="featured-products owl-carousel owl-theme owl-nav-top">

                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->
                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->
                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->
                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->
                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->
                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->

                <div class="product">
                    <figure class="product-image-container">
                        <a href="product.html" class="product-image">
                            <img src="img/neumatico.jpg" alt="product">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Neumático Goodyear</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">Gs. 550.000</span>
                            <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <!-- <a href="product.html" class="paction add-cart" title="Add to Cart">
                                <span>Agregar al Carrito</span>
                            </a> -->
                        </div><!-- End .product-action -->
                    </div><!-- End .product-details -->
                </div><!-- End .product -->


            </div><!-- End .featured-products -->
        </div><!-- End .container -->
        <!-- END DESTACADOS -->

        <div class="mb-5"></div><!-- margin -->
        <!-- PROMOCIONES -->
        <div class="banners-section">
            <div class="container">
                <h2 class="subtitle text-center"><span>Promociones</span></h2>
                <div class="cats-carousel owl-carousel owl-theme">
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="img/balanceo.jpg" alt="banner">
                        </a>
                    </div><!-- End .banner -->

                </div><!-- End .cat-carousel -->
            </div><!-- End .container -->
        </div><!-- End .banners-section -->
        <!-- END PROMOCIONES -->

        <div class="mb-5"></div><!-- margin -->
        <!-- NUESTRAS MARCAS -->
        <div class="partners-container">
            <div class="container">
                <h2 class="subtitle">
                    <span>Nuestras Marcas</span>
                </h2>
                <div class="partners-carousel owl-carousel owl-theme">
                    <a href="#" class="partner">
                        <img src="img/marcas/1.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/2.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/3.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/4.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/5.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/6.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/7.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/8.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/9.jpg" alt="logo">
                    </a>
                    <a href="#" class="partner">
                        <img src="img/marcas/10.jpg" alt="logo">
                    </a>

                </div><!-- End .partners-carousel -->
            </div><!-- End .container -->
        </div><!-- End .partners-container -->
        <!-- END NUESTRAS MARCAS -->

        <div class="mb-5"></div><!-- margin -->

        <!-- OFERTAS -->
        <div class="container arrived-products">
            <h2 class="subtitle">
                <span>Ofertas</span>
            </h2>

            <div class="row">

                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="product product-overlay">
                        <figure class="product-image-container">
                            <a href="product.html" class="product-image">
                                <img src="img/neumatico.jpg" alt="product">
                            </a>
                            <span class="product-label label-sale">10% OFF</span>
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
                                <a href="product.html">Neumatico</a>
                            </h2>
                            <div class="price-box">
                                <span class="old-price">Gs. 330.000</span>
                                <span class="product-price">Gs. 300.000</span>
                                <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                            </div><!-- End .price-box -->
                        </div><!-- End .product-details -->
                    </div><!-- End .product -->
                </div><!-- End .col-xl-2 -->
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="product product-overlay">
                        <figure class="product-image-container">
                            <a href="product.html" class="product-image">
                                <img src="img/neumatico.jpg" alt="product">
                            </a>
                            <span class="product-label label-sale">10% OFF</span>
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
                                <a href="product.html">Neumatico</a>
                            </h2>
                            <div class="price-box">
                                <span class="old-price">Gs. 330.000</span>
                                <span class="product-price">Gs. 300.000</span>
                                <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                            </div><!-- End .price-box -->
                        </div><!-- End .product-details -->
                    </div><!-- End .product -->
                </div><!-- End .col-xl-2 -->
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="product product-overlay">
                        <figure class="product-image-container">
                            <a href="product.html" class="product-image">
                                <img src="img/neumatico.jpg" alt="product">
                            </a>
                            <span class="product-label label-sale">10% OFF</span>
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
                                <a href="product.html">Neumatico</a>
                            </h2>
                            <div class="price-box">
                                <span class="old-price">Gs. 330.000</span>
                                <span class="product-price">Gs. 300.000</span>
                                <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                            </div><!-- End .price-box -->
                        </div><!-- End .product-details -->
                    </div><!-- End .product -->
                </div><!-- End .col-xl-2 -->
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="product product-overlay">
                        <figure class="product-image-container">
                            <a href="product.html" class="product-image">
                                <img src="img/neumatico.jpg" alt="product">
                            </a>
                            <span class="product-label label-sale">10% OFF</span>
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
                                <a href="product.html">Neumatico</a>
                            </h2>
                            <div class="price-box">
                                <span class="old-price">Gs. 330.000</span>
                                <span class="product-price">Gs. 300.000</span>
                                <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                            </div><!-- End .price-box -->
                        </div><!-- End .product-details -->
                    </div><!-- End .product -->
                </div><!-- End .col-xl-2 -->
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="product product-overlay">
                        <figure class="product-image-container">
                            <a href="product.html" class="product-image">
                                <img src="img/neumatico.jpg" alt="product">
                            </a>
                            <span class="product-label label-sale">10% OFF</span>
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
                                <a href="product.html">Neumatico</a>
                            </h2>
                            <div class="price-box">
                                <span class="old-price">Gs. 330.000</span>
                                <span class="product-price">Gs. 300.000</span>
                                <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                            </div><!-- End .price-box -->
                        </div><!-- End .product-details -->
                    </div><!-- End .product -->
                </div><!-- End .col-xl-2 -->
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="product product-overlay">
                        <figure class="product-image-container">
                            <a href="product.html" class="product-image">
                                <img src="img/neumatico.jpg" alt="product">
                            </a>
                            <span class="product-label label-sale">10% OFF</span>
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
                                <a href="product.html">Neumatico</a>
                            </h2>
                            <div class="price-box">
                                <span class="old-price">Gs. 330.000</span>
                                <span class="product-price">Gs. 300.000</span>
                                <span class="othercurrencies">RS$ 2039  /  US$ 938</span>
                            </div><!-- End .price-box -->
                        </div><!-- End .product-details -->
                    </div><!-- End .product -->
                </div><!-- End .col-xl-2 -->



            </div><!-- End .row -->
        </div><!-- End .container -->
        <!-- END OFERTAS -->

        <div class="mb-5"></div><!-- margin -->


    </main><!-- End .main -->

@endsection