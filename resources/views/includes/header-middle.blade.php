<div class="header-middle sticky-header">
    <div class="container">
        <div class="header-left">
            <a href="{{route('home')}}" class="logo">
                <img src="/front/img/logo.png" alt="ANSA">
            </a>

            <nav class="main-nav">
                <ul class="menu sf-arrows">
                    <li><a href="{{route('home')}}">Inicio</a></li>
                    <li>
                        <a href="#" class="sf-with-ul">Neumáticos</a>

                        <ul>
                            <li><a href="#">Por tipo de vehículo</a>
                                <!-- tipos de vehiculos -->
                                <ul>
                                    @foreach($vehicleTypes as $vehicleType)
                                        <li><a href="{{route('tires-list-byVehicleType', ['vehicleTypeId' => $vehicleType->id])}}">{{$vehicleType->vehicle_type}}</a></li>

                                    @endforeach
                                </ul>
                            </li>
{{--                            deactivated by client--}}
{{--                            <li><a href="#">Por Marca</a>--}}
{{--                                <!-- marcas de neumaticos -->--}}
{{--                                <ul>--}}
{{--                                    @foreach($brands as $brand)--}}
{{--                                        <li><a href="{{route('tires-list-byBrand', ['brandId' => $brand->id])}}">{{$brand->brand_name}}</a></li>--}}
{{--                                    @endforeach--}}
{{--                                </ul>--}}
{{--                            </li>--}}

{{--                            <li><a href="{{route('tires-list')}}">Todos</a></li>--}}
                        </ul>
                    </li>

                    <li>
                        <a href="#" class="sf-with-ul">Productos</a>
                        <ul>
                            <li><a href="#">Categorías</a>
                                <!-- categorias de productos -->
                                <ul>
                                    @foreach($productCategories as $productCategory)
                                        <li><a href="{{route('products-list-byCategoryId', ['productCategoryId' => $productCategory->id])}}">{{$productCategory->category_name}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
{{--                            deactivated by client--}}
{{--                            <li><a href="#">Por Marca</a>--}}
{{--                                <ul>--}}
{{--                                    @foreach($brands as $brand)--}}
{{--                                        <li><a href="{{route('products-list-byBrand', ['brandId' => $brand->id])}}">{{$brand->brand_name}}</a></li>--}}
{{--                                    @endforeach--}}
{{--                                </ul>--}}
{{--                            </li>--}}

{{--                            <li><a href="{{route('products-list')}}">Todos</a></li>--}}
                        </ul>
                    </li>

                    <li><a href="{{route('static-services')}}">Servicios</a></li>
                    <li><a href="{{route('static-branchoffices')}}">Sucursales</a></li>
                    <li><a href="{{route('static-aboutus')}}">Acerca de ANSA</a></li>
                </ul>
            </nav>

{{--            <div class="header-search">--}}
{{--                <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>--}}


{{--                <form action="#" method="get">--}}
{{--                    <div class="header-search-wrapper">--}}
{{--                        <input type="search" class="form-control" name="q" id="q" placeholder="Buscar..." required>--}}
{{--                        <div class="select-custom">--}}
{{--                            <select id="cat" name="cat">--}}
{{--                                <option value="">Neumáticos</option>--}}
{{--                                <option value="">Todos los productos</option>--}}
{{--                            </select>--}}
{{--                        </div><!-- End .select-custom -->--}}
{{--                        <button class="btn" type="submit"><i class="icon-search"></i></button>--}}
{{--                    </div><!-- End .header-search-wrapper -->--}}
{{--                </form>--}}

{{--                <form id="searchForm" method="get" action="{{route('search.results')}}">--}}
{{--                    <div class="header-search-wrapper">--}}

{{--                        <div class="select-custom">--}}
{{--                            --}}{{--                <h5>Ancho</h5>--}}
{{--                            <h5>Largura</h5>--}}
{{--                            <select id="width_id" name="widht_id" class="form-control">--}}
{{--                                <option value="0">Todos</option>--}}
{{--                                @foreach($widths as $item)--}}
{{--                                    <option value="{{$item->id}}">{{$item->width_name}}</option>--}}
{{--                                @endforeach--}}
{{--                            </select>--}}
{{--                        </div>--}}

{{--                        <div class="select-custom">--}}
{{--                            <h5>Perfil</h5>--}}
{{--                            <select id="profile_id" name="profile_id" class="form-control">--}}
{{--                                <option value="0">Todos</option>--}}
{{--                                @foreach($profiles as $item)--}}
{{--                                    <option value="{{$item->id}}">{{$item->profile_name}}</option>--}}
{{--                                @endforeach--}}
{{--                            </select>--}}
{{--                        </div>--}}

{{--                        <div class="select-custom">--}}
{{--                            <h5>Aro</h5>--}}
{{--                            <select id="radius_id" name="radius_id" class="form-control">--}}
{{--                                <option value="0">Todos</option>--}}
{{--                                @foreach($radiuses as $item)--}}
{{--                                    <option value="{{$item->id}}">{{$item->radius_name}}</option>--}}
{{--                                @endforeach--}}
{{--                                <option>155</option><option>165</option><option>175</option><option>185</option><option>195</option><option>205</option><option>215</option><option>225</option><option>235</option><option>245</option><option>255</option><option>265</option><option>275</option><option>285</option><option>295</option><option>305</option><option>315</option><option>320</option><option>340</option><option>380</option><option>385</option><option>420</option><option>425</option><option>480</option><option>520</option><option>600</option><option>650</option><option>710</option><option>800</option><option>850</option><option>2.50</option><option>03.00</option><option>03.50</option><option>04.10</option><option>05.00</option><option>06.50</option><option>06.00</option><option>07.00</option><option>07.50</option><option>08.25</option><option>09.00</option><option>09.50</option><option>10.5/80</option><option>10.00</option><option>11L</option><option>11.00</option><option>11.2</option><option>12.5/80</option><option>12.4</option><option>12.00</option><option>13.00</option><option>13.6</option><option>14.00</option><option>14.9</option><option>16.9</option><option>16.00</option><option>17.5</option><option>18.00</option><option>18.4</option><option>20.8</option><option>20.5</option><option>21.00</option><option>23</option><option>23.5</option><option>23.1</option><option>24.5</option><option>26.5</option><option>28.00</option><option>29.5</option><option>30.00</option><option>31.00</option><option>32.00</option><option>33.00</option><option>35.00</option><option>37</option><option>90</option>--}}
{{--                            </select>--}}
{{--                        </div>--}}

{{--                        <div class="col-md-3">--}}
{{--                            <h5 style="color:#003399;">.</h5>--}}
{{--                            <a href="#" onclick="$('#searchForm').submit()" class="form-control btn-dark">BUSCAR</a>--}}
{{--                        </div>--}}

{{--                    </div>--}}
{{--                </form>--}}

{{--            </div><!-- End .header-search -->--}}


        </div><!-- End .header-left -->

        <div class="header-right">
            <button class="mobile-menu-toggler" type="button">
                <i class="icon-menu"></i>
            </button>
            <div class="header-contact">
                <span>Call Center</span>
                <a href="https://wa.me/595984679739" target="_blank"><strong>+595 984 679739<img src="/front/img/whatsapp.png" width="25px" style="display: inline;"></strong></a>
            </div><!-- End .header-contact -->


        </div><!-- End .header-right -->
    </div><!-- End .container -->
</div><!-- End .header-middle -->