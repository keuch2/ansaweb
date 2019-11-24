<div class="header-top">
    <div class="container">

        <div class="header-left header-dropdowns">
            <div style="padding-right: 20px;color:#000;">SELECCIONAR DIVISA</div>
            {{ csrf_field() }}
            <div class="header-dropdown">
                @php
                    $currentCurrencyLabel = Session::get('currency_label');
                    if(empty($currentCurrencyLabel))
                    {
                        Session::put('currency_id', 0);
                        Session::put('currency_label', $currencies[0]['label']);
                        Session::put('currency_code', $currencies[0]['code']);
                    }
                @endphp

                <a href="#" id="current_currency">{{$currentCurrencyLabel}}</a>
                <div class="header-menu">
                    <ul>
                        @foreach($currencies as $currency)
                            <li><a href="#" onclick="setCurrency('{{$currency['id']}}')">{{$currency['label']}}</a></li>
                        @endforeach

                    </ul>
                </div><!-- End .header-menu -->
            </div><!-- End .header-dropown -->
        </div><!-- End .header-left -->

        <div class="header-right">
            <p class="welcome-msg">Bienvenido Usuario!</p>

            <div class="header-dropdown dropdown-expanded">
                <a href="#">Links</a>
                <div class="header-menu">
                    <ul>
                        <li><a href="my-account.html">MI CUENTA </a></li>
                        <li><a href="contact.html">CONTACTENOS</a></li>
                        <li><a href="#" class="login-link">LOG IN</a></li>
                    </ul>
                </div><!-- End .header-menu -->
            </div><!-- End .header-dropown -->
        </div><!-- End .header-right -->
    </div><!-- End .container -->
</div><!-- End .header-top -->