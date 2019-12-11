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

                    <li><a href="#">Servicios</a></li>
                    <li><a href="{{route('static-branchoffices')}}">Sucursales</a></li>
                    <li><a href="{{route('static-aboutus')}}">Acerca de ANSA</a></li>
                </ul>
            </nav>

            <div class="header-search">
                <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>
                <form action="#" method="get">
                    <div class="header-search-wrapper">
                        <input type="search" class="form-control" name="q" id="q" placeholder="Buscar..." required>
                        <div class="select-custom">
                            <select id="cat" name="cat">
                                <option value="">Neumáticos</option>
                                <option value="">Todos los productos</option>
                            </select>
                        </div><!-- End .select-custom -->
                        <button class="btn" type="submit"><i class="icon-search"></i></button>
                    </div><!-- End .header-search-wrapper -->
                </form>
            </div><!-- End .header-search -->
        </div><!-- End .header-left -->

        <div class="header-right">
            <button class="mobile-menu-toggler" type="button">
                <i class="icon-menu"></i>
            </button>
            <div class="header-contact">
                <span>Call Center</span>
                <a href="tel:#"><strong>+595 21 123 456</strong></a>
            </div><!-- End .header-contact -->


        </div><!-- End .header-right -->
    </div><!-- End .container -->
</div><!-- End .header-middle -->