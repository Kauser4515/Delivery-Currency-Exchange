<!DOCTYPE html>
<head>
  <title>Practical</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- CSRF Token -->
  <meta name="_token" content="{{ csrf_token() }}">
  <link rel="shortcut icon" href="{{ asset('/favicon.ico') }}">
  <!-- plugin css -->
    
     
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/plugins/@mdi/font/css/materialdesignicons.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/plugins/perfect-scrollbar/perfect-scrollbar.css') }}">
  <!-- end plugin css -->
  @stack('plugin-styles')
  <!-- common css -->
  <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">

  <!-- end common css -->
  @stack('style')
</head>
<body data-base-url="{{url('/')}}">
  <div class="container-scroller" id="app">
    @if (auth()->check() && request()->route()->getName() != "")
        @include('layouts.partial.header')
        <div class="container-fluid page-body-wrapper">
          @include('layouts.partial.sidebar')
     @endif
      <div class="main-panel">
        <div class="content-wrapper">
          @yield('content')
        </div>
        @include('layouts.partial.footer')

      </div>
    </div>
  </div>
  <!-- base js -->
@push('script')

  <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script> 
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script type="text/javascript" src="{{ asset('js/app.js') }}"></script>
  @stack('plugin-scripts')
  <script type="text/javascript" src="{{ asset('assets/js/off-canvas.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/hoverable-collapse.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/dashboard.js') }}" ></script>
  <script type="text/javascript" src="{{ asset('assets/js/misc.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/settings.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/js/todolist.js') }}"></script>
  @endpush
  @stack('custom-scripts')
  @stack('script')
</body>
</html>