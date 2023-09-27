
<!doctype html>
<html lang="en">
    <head>
        @include('partials.css')
        <title>@yield('title')</title>
    </head>
    <body>
        <header>
            @include('partials.header')
        </header>

        <section>
            {{-- @include('partials.addcustomer') --}}
            @yield('content')


        </section>
        @yield('section')

        <footer class="bg-light text-center text-lg-start">
            @include('partials.footer')
        </footer>
    </body>
</html>
