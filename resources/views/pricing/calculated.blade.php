<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="_token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" href="{{ asset('/favicon.ico') }}">

    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"> 
    <link rel="stylesheet" href="{{ asset('css/calculate.css') }}"> 
    <!-- <link rel="stylesheet" href="{{ asset('css/app.css') }}">  -->
</head>
    <!-- Content Header (Page header) -->
<body>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-1">
                </div>
                <div class="col-6">
                    <!-- <h1 class="m-0 text-dark">Calculator</h1> -->
                </div><!-- /.col -->
            </div>
        </div>
    </div>
    <section class="content" id="printable_area">
        <div class="container-fluid">
            <!-- /.row -->
            <div class="row">
                <div class="col-1">
                </div>
                <div class="col-10">
                    <div class="card">
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <div class="col-md-12">
                                    <form role="form" action="{{ route('priceCalculate') }}" method="get" autocomplete="off">
                                        @csrf
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <div class="form-group form-float">
                                                        <label for="country_id"> Country </label>
                                                        <select class="form-control js-example-basic-single @error('country_id') is-invalid @enderror" name="country_id" required>
                                                            <option value=""selected disabled>Select</option>
                                                            @foreach($pricings as $pricing)
                                                            <option value="{{ $pricing->country_id }}">{{ $pricing->country->name }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('country_id')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label for="carrier_id"> Carriers </label>
                                                        <select class="form-control js-example-basic-single @error('carrier_id') is-invalid @enderror" name="carrier_id" required>
                                                            <option value=""selected disabled>Select</option>
                                                            @foreach($pricings as $pricing)
                                                            <option value="{{ $pricing->carrier_id }}">{{ $pricing->carrier->name }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('carrier_id')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div> 
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label for="category_id"> Category </label>
                                                        <select class="form-control js-example-basic-single @error('category') is-invalid @enderror" name="category_id" required>
                                                            <option value=""selected disabled>Select</option>
                                                            @foreach($pricings as $pricing)
                                                            <option value="{{ $pricing->category_id }}">{{ $pricing->category->name }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('category_id')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label for="weight"> Weight </label>
                                                        <input type="number" name="weight" min="0" class="form-control @error('weight') is-invalid @enderror" id="weight" placeholder="Price">
                                                        @error('weight')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label for="combWeight"> Amount </label>
                                                        <input type="number" name="combWeight" min="0" class="form-control" id="combWeight" value="{{$price}}" placeholder="00.0" readonly>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group"><br>
                                                        <button type="submit" onclick="" class="btn btn-success">Submit</button>
                                                    </div>
                                                </div>
                                            </div>
                                         </div> 
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.card -->
                    <div class="row price">
                        <option  value="{{ $country }}">Country Name: {{ $pricing->country->name }}, </option>
                        <option value="{{ $carrier }}">Carrier Name: {{ $pricing->carrier->name }}, </option>
                        <option value="{{ $category }}">Category: {{ $pricing->category->name }}, </option>
                        <option >Total Price: {{ $price }}.</option>
                    </div><br>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
                    <button class="btn btn-info" onclick="printDiv('printable_area')">Print</button>
<footer class="footer" id="printable_area">
  <div class="container-fluid clearfix">
    <span class="text-muted d-block d-sm-inline-block">Copyright ©  <a href="https://ekshop.gov.bd" target="_blank">EkShop | a2i</a> {{ date('Y')  }}</span>
  </div>
</footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    // <!-- For Div Print --> 
    function printDiv(printable_area) {
        var printContents = document.getElementById(printable_area).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
    // select 2 dropdown
    $(".select2.form-control:not(.dont-select-me)").select2({
        placeholder: "Select option",
        allowClear: true
    });
    // for all type of alert
        @if(Session::has('message'))
    var type = "{{ Session::get('alert-type') }}";
    switch (type) {
        case 'info':
            toastr.info("{{ Session::get('message') }}");
            break;
        case 'success':
            toastr.success("{{ Session::get('message') }}");
            break;
        case 'warning':
            toastr.warning("{{ Session::get('message') }}");
            break;
        case 'error':
            toastr.error("{{ Session::get('message') }}");
            break;
    }
    @endif
</script>
</body>
</html>