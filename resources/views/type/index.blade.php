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
                <!-- <h1 class="m-0 text-dark">Calculator</h1> -->
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{ route('type.index') }}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="#">Carrier Type</a></li>
                    <li class="breadcrumb-item active">Show Carrier Type</li> 
                </ol>
            </div>
        </div>
    </div>
</div>
<section class="content">
    <div class="container-fluid">     
        <div class="row float-center">
            <div class="col-2">
            </div>
            <div class="col-8">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title mb-0">All Carrier Type</h3>
                        <a class="btn btn-primary btn-sm" href="{{ route('type.create') }}"><i class="fa fa-plus"></i> Add New Carrier Type</a>
                    </div>
                    <!-- /.card-header -->
                    <div id="printable_area">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Carrier Type</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            @foreach($types as $index => $type)
                            @if($type->id != 0)
                            <tr>
                                <td>{{ $type->id}}</td>
                                <td>{{ $type->name }}</td>
                            </tr>
                            @endif
                            @endforeach
                            </tbody>
                            </table>  
                        </div>                          
                    </div>
                </div>
            </div>
        </div>
</section>
@endsection
@push('script')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
@endpush