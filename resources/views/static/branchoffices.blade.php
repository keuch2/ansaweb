@extends('frontlayout.front')

@section('main-content')

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
                            <h3>TRUCK CENTER</h3>
                            <img src="/front/img/locales2/pjc-truck.jpg">
                            <p>Pitiantuta esq. 1 de Diciembre<br>
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
                            <h3>ANSA SHOPPING CHINA PJC</h3>
                            <img src="/front/img/locales2/pjc-shoppingchina.jpg">
                            <p>Pitiantuta esq. 1 de Diciembre<br>
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
                            <h3>ENCARNACION</h3>
                            <img src="/front/img/locales/encarnacion2.jpg">
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
                            <img src="/front/img/locales2/saltodelguaira.jpg">
                            <p>Avda. Paraguay c/ Pablo VI<br>
                                Tel. (046) 242819</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/tk7xT5M93PWDH5EM6" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>CIUDAD DEL ESTE</h3>
                            <img src="/front/img/locales2/cde.jpg">
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
                            <img src="/front/img/locales2/santarita.jpg">
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
                            <img src="/front/img/locales2/capitanbado.jpg">
                            <p>Avda. Internacional c/ José E. Diaz<br>Tel. (037) 230 450</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/euXE3ukszrQXgc4p6" target="_blank">ver en mapa</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="sucursal">
                            <h3>BELLA VISTA</h3>
                            <img src="/front/img/locales2/bellavista.jpg">
                            <p>Gral Diaz e/ Ruta Internacional<br>Tel. (038) 238 546</p>
                            <p>
                                <a class="maplink" href="https://goo.gl/maps/K8k7DPTcwdm1XxoF6" target="_blank">ver en mapa</a>
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


    @endsection



@endsection