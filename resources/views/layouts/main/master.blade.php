<!doctype html>
<html lang="en">

  <head>
    <title>CarRental &mdash;  @yield('title')</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   @include('layouts/main/links')



  </head>

  <body>


    <div class="site-wrap" id="home-section">

      @include("layouts/main/navbar")


      <div class="hero" style="background-image: url({{asset('main/images/hero_1_a.jpg')}});">

        @yield('hero')
        
      </div>



    @yield('content')


      @include('layouts/main/footer')

    </div>

   @include('layouts/main/script')


  </body>

</html>

