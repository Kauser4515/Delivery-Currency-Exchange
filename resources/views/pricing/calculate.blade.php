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
    <!-- Select2  -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <link href="css/select2.min.css" rel="stylesheet" />
    <script src="js/select2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

</head>

<body>
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-1">
            </div>
            <div class="col-sm-6">
                <!-- <h1 class="m-0 text-dark">Calculator</h1> -->
            </div><!-- /.col -->
        </div>
    </div>
</div>
<section class="content">
    <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
            <div class="col-1">
            </div><!-- /.col-1 -->
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
                                                    <select class="form-control js-example-basic-single  @error('country_id') is-invalid @enderror" name="country_id" required>
                                                        <option value=""selected disabled>Select</option>
                                                        @foreach($countries as $country)
                                                        <option value="{{ $country->id }}">{{ $country->name }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('country_id')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div><!-- /.col-md-2 -->
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="carrier_id"> Carriers </label>
                                                    <select class="form-control js-example-basic-single @error('carrier_id') is-invalid @enderror" name="carrier_id" required>
                                                        <option value=""selected disabled>Select</option>
                                                        @foreach($carriers as $carrier)
                                                        <option value="{{ $carrier->id }}">{{ $carrier->name }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('carrier_id')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div><!-- /.col-md-2 -->
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="category_id"> Category </label>
                                                    <select class="form-control js-example-basic-single @error('category') is-invalid @enderror" name="category_id" required>
                                                        <option value=""selected disabled>Select</option>
                                                        @foreach($categories as $category)
                                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('category_id')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div><!-- /.col-md-2 -->
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="weight"> Weight </label>
                                                    <input type="number" name="weight" min="0" class="form-control @error('weight') is-invalid @enderror" id="weight" placeholder="kg">
                                                    @error('weight')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                    @enderror
                                                </div>
                                            </div><!-- /.col-md-2 -->
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="combWeight"> Amount</label>
                                                    <input type="number" name="combWeight" min="0" class="form-control" id="combWeight" placeholder="00.0" readonly>
                                                </div>
                                            </div><!-- /.col-md-2 -->
                                            <div class="col-md-2">
                                                <div class="form-group"><br>
                                                    <button type="submit" onclick="" class="btn btn-success">Submit</button>
                                                </div>
                                            </div><!-- /.col-md-2 -->
                                        </div><!-- /.row -->
                                     </div> 
                                </form>
                            </div>
                        </div>
                    </div><!-- /.card-header -->
                </div><!-- /.card -->
            </div><!-- /.col-10 -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</section>
<script type="text/javascript">
    $(document).ready(function() {
    $('.js-example-basic-single').select2();
    });
</script>
</body>
<footer class="foot">
  <div class="container-fluid clearfix">
    <span class="text-muted d-block d-sm-inline-block">Copyright ©  <a href="https://ekshop.gov.bd" target="_blank">EkShop | a2i</a> {{ date('Y')  }} </span>
  </div>
</footer>
</html>