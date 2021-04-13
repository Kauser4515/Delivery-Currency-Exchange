@extends('layouts.app')
@section('title', 'Users')
 
@push('style')
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"> 
@endpush
 
@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark"></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('pricing.index') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="#">Carrier</a></li>
                        <li class="breadcrumb-item active">New Carrier</li> 
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

<section class="content">
    <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title mb-0">Add New Carrier</h3>
                        <a class="btn btn-primary btn-sm" href="{{ route('carrier.index') }}"><i class="fa fa-plus"></i> All Carriers</a>
                    </div> 
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <form role="form" action="{{ route('carrier.store') }}" method="post" autocomplete="off">
                                    @csrf
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-11">
                                                <div class="form-group">
                                                    <label for="name">Carrier Name<span class="text-danger">*</span></label>
                                                    <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Type...">
                                                    @error('name')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                     </div>  
                                     <div class="container">
                                        <div class="row">
                                            <div class="col-md-11">
                                                <div class="form-group">
                                                    <label for="status">Carrier Status</label>
                                                    <input type="number" name="status" class="form-control @error('status') is-invalid @enderror" id="status" max="1" min="0">
                                                    @error('status')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                     </div>        
                                    <div class="text-right">
                                        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Submit </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                    <!-- <div class="card-footer clearfix">
                    </div> -->
                </div>
                <!-- /.card -->
            </div>
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
</section>
@endsection

@push('script')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

@endpush