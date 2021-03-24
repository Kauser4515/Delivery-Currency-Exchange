@extends('layouts.app')
@section('title', 'Users')
 
@push('style')
@endpush

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <!-- <h1 class="m-0 text-dark">All Users</h1> -->
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('pricing.index') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="#">Prising</a></li>
                        <li class="breadcrumb-item active">New Pricing</li> 
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
@endsection

@push('script')
@endpush