@extends('layouts.app')
@section('title', 'Users')
 
@push('style')
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"> 
   <!-- Select2  -->
    <script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
    <link href="{{ asset('css/select2.min.css') }}" rel="stylesheet" />
    <script src="{{ asset('js/select2.min.js') }}"></script>
@endpush
@section('content')
<section class="content">
    <!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <!-- <h1 class="m-0 text-dark">All Users</h1> -->
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="#">Prising</a></li>
                    <li class="breadcrumb-item active">New Pricing</li> 
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<div class="container-fluid">
    <!-- /.row -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title mb-0">Add New Country</h3>
                </div> 
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <form role="form" action="{{ route('pricing.store') }}" method="post" autocomplete="off">
                                @csrf
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-2">
                                                <div class="form-group form-float">
                                                    <label for="country_id"> Country </label>
                                                    <select class="form-control js-example-basic-single @error('country_id') is-invalid @enderror" name="country_id" required>
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
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="carrier_id"> Carrier </label>
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
                                            </div>
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
                                            </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label for="price"> Amount</label>
                                                <input type="number" name="price" class="form-control @error('price') is-invalid @enderror" id="price" placeholder="Price">
                                                @error('price')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                 </div>   
                                <div class="text-right">
                                    <a href="{{ route('pricing.index') }}" class="btn btn-danger"><i class="fas fa-times"></i> Back </a>
                                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Submit </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div><!-- /.card-body -->
                <!-- <div class="card-footer clearfix">
                </div> -->
            </div><!-- /.card -->
        </div>
    </div> <!-- /.row -->
</div><!-- /.container-fluid -->
</section>
@endsection

@push('script')
    <script type="text/javascript">
        $(document).ready(function() {
        $('.js-example-basic-single').select2();
        });
    </script>
@endpush