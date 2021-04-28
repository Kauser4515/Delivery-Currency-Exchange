@extends('layouts.app')
@section('title', 'Users')

@push('script')
    <!-- Select2  -->
    <script type="" src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
    <script src="{{ asset('js/select2.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    $('.js-example-basic-single').select2();
    });
</script><!-- This Script for Select2 Option -->
@endpush
@push('style')
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link href="{{ asset('css/select2.min.css') }}" rel="stylesheet" />
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
                    <h3 class="card-title mb-0">Add New Price</h3>
                    <a class="btn btn-primary btn-sm" href="{{ route('pricing.index') }}"><i class="fa fa-plus"></i> All pricings</a>
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
                                                <label for="country_id">Country</label>
                                                <select class="form-control js-example-basic-single @error('country_id') is-invalid @enderror" name="country_id" required>
                                                    <option value="" selected disabled>Select</option>
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
                                                    <label for="carrier_id">Carrier</label>
                                                    <select nchange="displayDivDemo('hideValuesOnSelect', this)" class="form-control js-example-basic-single @error('carrier_id') is-invalid @enderror" name="carrier_id" required>
                                                        <option value="" selected disabled>Select</option>
                                                        @foreach($carriers as $carrier)
                                                        @if($carrier->status == 1)
                                                        <option value="{{ $carrier->id }}">{{ $carrier->name }}</option>
                                                        @endif
                                                        @endforeach
                                                    </select>
                                                    @error('carrier_id')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div id="hideValuesOnSelect" class="col-md-2">
                                                <div class="form-group">
                                                    <label for="type_id">Carrier Type</label>
                                                    <select class="form-control js-example-basic-single @error('type_id') is-invalid @enderror" name="type_id" required>
                                                        @foreach($types as $type)
                                                        <option value="{{ $type->id }}">{{ $type->name }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('type_id')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="file_id"> File </label>
                                                    <select class="form-control js-example-basic-single @error('file') is-invalid @enderror" name="file_id" required>
                                                        <option value="" selected disabled>Select</option>
                                                        @foreach($files as $file)
                                                        <option value="{{ $file->id }}">{{ $file->name }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('file_id')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label for="category_id">Category</label>
                                                    <select class="form-control js-example-basic-single @error('category') is-invalid @enderror" name="category_id" required>
                                                        <option value="" selected disabled>Select</option>
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
                                                <label for="price">Amount</label>
                                                <input type="text" name="price" class="form-control @error('price') is-invalid @enderror" id="price" min="1" placeholder="Price">
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
                                    <!-- <a href="{{ route('pricing.index') }}" class="btn btn-danger"><i class="fas fa-times"></i> Back </a> -->
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
@push('custom-scripts')
    <script type="text/javascript">
    $(document).ready(function() {
    $('.js-example-basic-single').select2();
    });
</script>
@endpush