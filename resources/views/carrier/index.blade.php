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
                    <li class="breadcrumb-item"><a href="{{ route('pricing.index') }}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="#">Carriers</a></li>
                    <li class="breadcrumb-item active">Show Carriers</li> 
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
                        <h3 class="card-title mb-0">All Carriers</h3>
                        <a class="btn btn-primary btn-sm" href="{{ route('carrier.create') }}"><i class="fa fa-plus"></i> Add New Carrier</a>
                    </div>
                    <!-- /.card-header -->
                    <div id="printable_area">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Country</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            @foreach($carriers as $index => $carrier)
                            <tr>
                                <td>{{ $carrier->id}}</td>
                                <td>{{ $carrier->name }}</td>
                                <td>
                                     @if($carrier->status == 1)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-danger">Block</span>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{ route('carrier.edit', $carrier->id) }}" class="btn btn-warning"><i class="menu-icon mdi mdi-border-color"></i></a>
                                </td>
                            </tr>
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