<div class="banners-section">
    <div class="container">
        <h2 class="subtitle text-center"><span>Buscar Neumáticos por Medida</span></h2>
        <form id="searchForm" method="get" action="{{route('search.results')}}">
        <div class="row">

            <div class="col-md-3">
                <h5>Radio</h5>
                <select id="radius_id" name="radius_id" class="form-control">
                    <option value="0">Todos</option>
                    @foreach($radiuses as $item)
                        <option value="{{$item->id}}">{{$item->radius_name}}</option>
                    @endforeach
                    <option>155</option><option>165</option><option>175</option><option>185</option><option>195</option><option>205</option><option>215</option><option>225</option><option>235</option><option>245</option><option>255</option><option>265</option><option>275</option><option>285</option><option>295</option><option>305</option><option>315</option><option>320</option><option>340</option><option>380</option><option>385</option><option>420</option><option>425</option><option>480</option><option>520</option><option>600</option><option>650</option><option>710</option><option>800</option><option>850</option><option>2.50</option><option>03.00</option><option>03.50</option><option>04.10</option><option>05.00</option><option>06.50</option><option>06.00</option><option>07.00</option><option>07.50</option><option>08.25</option><option>09.00</option><option>09.50</option><option>10.5/80</option><option>10.00</option><option>11L</option><option>11.00</option><option>11.2</option><option>12.5/80</option><option>12.4</option><option>12.00</option><option>13.00</option><option>13.6</option><option>14.00</option><option>14.9</option><option>16.9</option><option>16.00</option><option>17.5</option><option>18.00</option><option>18.4</option><option>20.8</option><option>20.5</option><option>21.00</option><option>23</option><option>23.5</option><option>23.1</option><option>24.5</option><option>26.5</option><option>28.00</option><option>29.5</option><option>30.00</option><option>31.00</option><option>32.00</option><option>33.00</option><option>35.00</option><option>37</option><option>90</option>
                </select>
            </div>
            <div class="col-md-3">
                <h5>Perfil</h5>
                <select id="profile_id" name="profile_id" class="form-control">
                    <option value="0">Todos</option>
                    @foreach($profiles as $item)
                        <option value="{{$item->id}}">{{$item->profile_name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-3">
                <h5>Ancho</h5>
                <select id="width_id" name="widht_id" class="form-control">
                    <option value="0">Todos</option>
                    @foreach($widths as $item)
                        <option value="{{$item->id}}">{{$item->width_name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-3">
                <h5 style="color:#003399;">.</h5>
                <a href="#" onclick="$('#searchForm').submit()" class="form-control btn-dark">BUSCAR</a>
            </div>

        </div>
        </form>

    </div>
</div>
