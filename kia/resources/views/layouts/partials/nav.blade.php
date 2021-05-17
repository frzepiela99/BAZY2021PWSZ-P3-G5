    <div class="navbar navbar-inverse" style="background-color: #05141f;">
      <div class="container d-flex justify-content-between">
          @if (Route::has('login'))
      <div class = "col-10" style="text-align: left;">
        			<a class="ftr" href="https://www.kia.com/pl/jazdy-testowe/" target="_self">Jazda testowa</a>
        			&nbsp;&nbsp;&nbsp;
        			<a class="ftr" href="https://www.kia.com/pl/katalogi-i-cenniki/" target="_self">Katalogi i cenniki</a>
        			&nbsp;&nbsp;&nbsp;
        			<a class="ftr" href="https://www.kia.com/pl/dealerzy/" target="_self">Dealerzy </a>
        			&nbsp;&nbsp;&nbsp;
        			<a class="ftr" href="https://www.kia.com/pl/internetowy-salon/" target="_self">Internetowy salon Kia</a>
        			&nbsp;&nbsp;&nbsp;
        			<a class="ftr" href="https://www.kia.com/pl/kontakt/">Kontakt</a>
      </div>
      <div class = "col-10" style="text-align: left;">
            @auth
                <a class="ftr" href="{{ url('/home') }}">Strona główna</a>&nbsp;&nbsp;&nbsp;
                <a class="ftr" href="{{ url('/koszyk') }}">🛒 Koszyk</a>&nbsp;&nbsp;&nbsp;
                <a class="ftr" href="{{ route('logout') }}"
                                                       onclick="event.preventDefault();
                                                                     document.getElementById('logout-form').submit();">
                                                        {{ __('Wyloguj się') }}
                                                    </a>
                                                                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                                                            @csrf
                                                                                        </form>
            @else
                 <a class="ftr" href="{{ route('login') }}">Logowanie</a>&nbsp;&nbsp;&nbsp;
                 <a class="ftr" href="{{ url('/koszyk') }}">🛒 Koszyk</a>&nbsp;&nbsp;&nbsp;

                @if (Route::has('register'))
                    <a class="ftr" href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Rejestracja</a>&nbsp;&nbsp;&nbsp;
                @endif
             @endauth
      @endif
      </div>

      </div>
      </div>
    </div>
    <div class="navbar navbar-inverse bg-white">
             <div class="container d-flex justify-content-between" style="line-height: 2cm;">
                  <style>
                    a.navu:link {color: black; font-size:15px; font-weight: 700;}
                    a.navu:visited {color: black; font-size:15px; font-weight: 700;}

                    a.navua:link {color: black; font-size:13px;}
                    a.navua:visited {color: black; font-size:13px;}
                  </style>

               <div class="col" style="text-align: left;">
                 <a class="navu" href="#" class="text-white">Modele</a>
                 &nbsp;&nbsp;
                  <a class="navu" href="#" class="text-white">Sprzedaż</a>
                  &nbsp;&nbsp;
                  <a class="navu" href="#" class="text-white">Używane</a>
               </div>
               <div class="col" style="text-align: center;">
                 <img src="https://www.kia.com/etc.clientlibs/settings/wcm/designs/eut/clientlib/resources/rbr/logo_kia_black-rbr.png" alt="KIA" width="82" height="26">
               </div>
               <div class="col" style="text-align: right;">
                 <div class="col" style="text-align: left;">
                      <a class="navu" href="#">Flota</a>
                      &nbsp;
                      <a class="navu" href="#" >Serwis</a>
                      &nbsp;
                      <a class="navu" href="#" >Świat Kia</a>
                      &nbsp;
                      <a class="navu" href="#" >⚙️Konfigurator</a>
                 </div>
               </div>
             </div>
    </div>

