<!DOCTYPE html>
<html lang="pl">
  <head>
    @include('layouts.partials.head')
  </head>

  <body>

	@include('layouts.partials.nav')
                                      <p style="padding-left: 200px;">
                                      <a class="navua" href="https://www.kia.com/pl/uvo-connect-informacje-prawne/"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"></path>
                                <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"></path>
                              </svg></a>
                              >
                              <a class="navua" href="https://www.kia.com/pl/sprzedaz/promocje/">Sprzedaż</a>

                              >

                              <b><a class="navua" href="http://kia.test/">⚙️Konfigurator</a></b>

                                      </p>
        @include('layouts.partials.header')


	@yield('content')

	@include('layouts.partials.footer')

	@include('layouts.partials.footer-scripts')


  </body>
</html>
