<div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

<div class="mobile-menu-container">
    <div class="mobile-menu-wrapper">
        <span class="mobile-menu-close"><i class="icon-cancel"></i></span>
        <nav class="mobile-nav">
            <ul class="mobile-menu">
                <li><a href="{{route('home')}}">Inicio</a></li>
                <li>
                    <a href="#" class="sf-with-ul">Productos</a>

                    <ul>
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
{{--                                    deactivated by client    --}}
{{--                                <li><a href="#">Por Marca</a>--}}
{{--                                    <!-- marcas de neumaticos -->--}}
{{--                                    <ul>--}}
{{--                                        @foreach($brands as $brand)--}}
{{--                                            <li><a href="{{route('tires-list-byBrand', ['brandId' => $brand->id])}}">{{$brand->brand_name}}</a></li>--}}
{{--                                        @endforeach--}}
{{--                                    </ul>--}}
{{--                                </li>--}}

{{--                                <li><a href="{{route('tires-list')}}">Todos</a></li>--}}
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
{{--                                deactivated by client--}}
{{--                                <li><a href="#">Por Marca</a>--}}
{{--                                    <ul>--}}
{{--                                        @foreach($brands as $brand)--}}
{{--                                            <li><a href="{{route('products-list-byBrand', ['brandId' => $brand->id])}}">{{$brand->brand_name}}</a></li>--}}
{{--                                        @endforeach--}}
{{--                                    </ul>--}}
{{--                                </li>--}}

{{--                                <li><a href="{{route('products-list')}}">Todos</a></li>--}}
                            </ul>
                        </li>

                    </ul>
                </li>
                <li><a href="{{route('static-services')}}">Servicios</a></li>
                <li><a href="{{route('static-branchoffices')}}">Sucursales</a></li>
                <li><a href="{{route('static-aboutus')}}">Acerca de ANSA</a></li>
            </ul>
        </nav><!-- End .mobile-nav -->

        <div class="social-icons">
            <a href="#" class="social-icon" target="_blank"><i class="icon-facebook"></i></a>
            <a href="#" class="social-icon" target="_blank"><i class="icon-instagram"></i></a>
        </div><!-- End .social-icons -->
    </div><!-- End .mobile-menu-wrapper -->
</div><!-- End .mobile-menu-container -->