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
                    <li class="breadcrumb-item"><a href="#">Category</a></li>
                    <li class="breadcrumb-item active">Show Category</li> 
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
                        <h3 class="card-title mb-0">All Categories</h3>
                        <a class="btn btn-primary btn-sm" href="{{ route('category.create') }}"><i class="fa fa-plus"></i> Add New Category</a>
                    </div>
                    <!-- /.card-header -->
                    <div id="printable_area">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Category</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            @foreach($categories as $index => $category)
                            <tr>
                                <td>{{ $category->id}}</td>
                                <td><input type="text" name="name" class="form-control" value="{{ $category->name }}" id="name"> 
                                </td>
                                 <td><a href="{{ route('category.edit', $category->id) }}" class="btn btn-sm btn-warning"><i class="fas fa-save"></i></a></td>
                            </tr>@endforeach
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