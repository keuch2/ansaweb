@extends('frontlayout.front')

@section('main-content')


{{--    <main class="main">--}}
{{--        <nav aria-label="breadcrumb" class="breadcrumb-nav">--}}
{{--            <div class="container">--}}
{{--                <ol class="breadcrumb">--}}
{{--                    <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>--}}
{{--                    <li class="breadcrumb-item active" aria-current="page">Sucursales</li>--}}
{{--                </ol>--}}
{{--            </div><!-- End .container -->--}}

{{--        </nav><div class="page-header">--}}
{{--            <div class="container">--}}
{{--                <h1>Sucursales</h1>--}}
{{--            </div><!-- End .container -->--}}
{{--        </div><!-- End .page-header -->--}}

{{--        <div class="container">--}}
{{--            <div id="map"></div><!-- End #map -->--}}

{{--            <!-- Google Map-->--}}

{{--            <div class="row">--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>CASA CENTRAL</h3>--}}
{{--                        <p>Pitiantuta esq. Oleary y 1 de Diciembre<br>--}}
{{--                            Tel. (0336)273125<br>--}}
{{--                            Pedro Juan Caballero</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>MARIANO ROQUE ALONSO</h3>--}}
{{--                        <p>Ruta Transchaco Km. 17,5 esquina Avda. Gral. Díaz <br>--}}
{{--                            Tel. (021) 755 403</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>FERNANDO DE LA MORA</h3>--}}
{{--                        <p>Ruta Mcal. Estigarribia Km. 5 y Juan de Salazar<br>--}}
{{--                            Tel. (021)524145</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>ENCARNACION</h3>--}}
{{--                        <p>Ruta 6 km 3,5 - Barrio Santa María<br>--}}
{{--                            Tel. (071) 208562 / 208563</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>SALTO DEL GUAIRA</h3>--}}
{{--                        <p>Avda. Paraguay c/ Pablo VI<br>--}}
{{--                            Tel. (046) 242819</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>CIUDAD DEL ESTE</h3>--}}
{{--                        <p>Avda. San Blas - Ruta Internacional Km. 5<br>--}}
{{--                            Tel. (061) 570725</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>SANTA RITA</h3>--}}
{{--                        <p>Gaspar Rodríguez de Francia / Ruta VII - Barrio Sinuelo II<br>--}}
{{--                            Tel. (0984) 679751</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>CAPITAN BADO</h3>--}}
{{--                        <p>Avda. Internacional c/ José E. Diaz<br>Tel. (037) 230 450</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-md-3">--}}
{{--                    <div class="sucursal">--}}
{{--                        <h3>BELLA VISTA</h3>--}}
{{--                        <p>Gral Diaz e/ Ruta Internacional<br>Tel. (038) 238 546</p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}


{{--        </div><!-- End .container -->--}}

{{--        <div class="mb-8"></div><!-- margin -->--}}
{{--    </main><!-- End .main -->--}}


<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Sucursales</li>
            </ol>
        </div><!-- End .container -->

    </nav><div class="page-header">
        <div class="container">
            <h1>Sucursales</h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->

    <div class="container">


        <div class="row">

            <div class="col-md-6">
                <img src="/front/img/mapa.jpg" width="100%">
            </div>


            <div class="col-md-6">


                <div class="row">
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>CASA CENTRAL</h3>
                            <img src="/front/img/locales/casacentral.jpg">
                            <p>Pitiantuta esq. Oleary y 1 de Diciembre<br>
                                Tel. (0336)273125<br>
                                Pedro Juan Caballero
                            </p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/ryh9NsbyqvdeNTeV9" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>MARIANO ROQUE ALONSO</h3>
                            <img src="/front/img/locales/mariano.jpg">
                            <p>Ruta Transchaco Km. 17,5 esquina Avda. Gral. Díaz <br>
                                Tel. (021) 755 403</p>
                            <p>
                                <a class="maplink" href="https://maps.app.goo.gl/mLGrABZrvAnr1Y8y7" target="_blank">ver en mapa</a>
                            </p>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>ENCARNACION</h3>
                            <img src="/front/img/locales/encarnacion.jpg">
                            <p>Ruta 6 km 3 - Barrio Santa María<br>
                                Tel. 217279562 / +595 984 679 722</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/CRBo8cFBhMWSnarbA" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>SALTO DEL GUAIRA</h3>
                            <img src="/front/img/locales/saltodelguaira.jpg">
                            <p>Avda. Paraguay c/ Pablo VI<br>
                                Tel. (046) 242819</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/tVPYunBFq7gGKsR86" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>CIUDAD DEL ESTE</h3>
                            <img src="/front/img/locales/ciudaddeleste.jpg">
                            <p>Avda. San Blas - Ruta Internacional Km. 5<br>
                                Tel. (061) 570725</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/tbrfQA2GS8jWr4MN7" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>SANTA RITA</h3>
                            <img src="/front/img/locales/santarita.jpg">
                            <p>Gaspar Rodríguez de Francia / Ruta VII - Barrio Sinuelo II<br>
                                Tel. (0984) 679 735</p>
                            <p>
                                <a class="maplink" href="https://maps.app.goo.gl/xoq5PajUCzg6oD4EA" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>CAPITAN BADO</h3>
                            <img src="/front/img/locales/capitanbado.jpg">
                            <p>Avda. Internacional c/ José E. Diaz<br>Tel. (037) 230 450</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/b1U67dbngRDpS66f6" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>BELLA VISTA</h3>
                            <img src="/front/img/locales/bellavista.jpg">
                            <p>Gral Diaz e/ Ruta Internacional<br>Tel. (038) 238 546</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/amiRi1nmynhBW3kU9" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                </div>


            </div>


        </div>



    </div><!-- End .container -->

    <div class="mb-8"></div><!-- margin -->
</main><!-- End .main -->

    @section('footer_scripts')


{{--        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDc3LRykbLB-y8MuomRUIY0qH5S6xgBLX4"></script>--}}
{{--        <script src="/front/assets/js/jquery.gmap.js"></script>--}}

{{--        <script type="text/javascript">--}}

{{--            $('#map').gMap({--}}


{{--                zoom: 6,--}}
{{--                doubleclickzoom: true,--}}
{{--                controls: {--}}
{{--                    panControl: true,--}}
{{--                    zoomControl: true,--}}
{{--                    mapTypeControl: true,--}}
{{--                    scaleControl: true,--}}
{{--                    streetViewControl: false,--}}
{{--                    overviewMapControl: false--}}
{{--                },--}}
{{--                markers: [--}}

{{--                    {--}}
{{--                        latitude:-22.555366,--}}
{{--                        longitude:-55.718493,--}}
{{--                        html: "Casa Central"--}}
{{--                    },--}}

{{--                    {--}}
{{--                        latitude:-25.204563,--}}
{{--                        longitude:-57.525122,--}}
{{--                        html: "Mariano Roque Alonso"--}}
{{--                    },--}}

{{--                    {--}}
{{--                        latitude:-25.329102,--}}
{{--                        longitude:-57.544691,--}}
{{--                        html: "Fernando de la Mora"--}}
{{--                    },--}}

{{--                    {--}}
{{--                        latitude:-27.307728,--}}
{{--                        longitude:-55.839396,--}}
{{--                        html: "Encarnacion"--}}
{{--                    },--}}

{{--                    {--}}
{{--                        latitude:-24.061220,--}}
{{--                        longitude:-54.307098,--}}
{{--                        html: "Salto del Guaira"--}}
{{--                    },--}}

{{--                    {--}}
{{--                        latitude:-25.4994966,--}}
{{--                        longitude:-54.6602588,--}}
{{--                        html: "Ciudad del Este"--}}
{{--                    },--}}

{{--                    {--}}
{{--                        latitude:-25.7906925,--}}
{{--                        longitude:-55.106021,--}}
{{--                        html: "Santa Rita"--}}
{{--                    }--}}

{{--                ]--}}
{{--            });--}}

{{--        </script>--}}

    @endsection



@endsection