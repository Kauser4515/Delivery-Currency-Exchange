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
                    <li class="breadcrumb-item"><a href="#">Calculator</a></li>
                    <li class="breadcrumb-item active">Calculated Value</li> 
                </ol>
            </div>
        </div>
    </div>
</div>
<section class="content">
    <div class="container-fluid">     
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title mb-0">Calculated Values</h3>
                        <a class="btn btn-primary btn-sm" href="{{ route('pricing.create') }}"><i class="fa fa-plus"></i> Add Calculation Value</a>
                    </div>
                    <!-- /.card-header -->
                    <div id="printable_area">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Country</th>
                                <th>Carrier</th>
                                <th>Carrier Type</th>
                                <th>File Type</th>
                                <th>Weight Category</th>
                                <th>Price</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            @foreach($pricings as $index => $pricing)
                            <tr>
                                <td>{{ $pricing->id}} </td>
                                <td>{{ $pricing->country->name }}</td>
                                <td>{{ $pricing->carrier->name }}</td>
                                <td>{{ $pricing->type->name }}</td>
                                <td>{{ $pricing->file->name }}</td>
                                <td>{{ $pricing->category->name }}</td>
                                <td>{{ $pricing->price }}</td>
                            </tr>
                            @endforeach
                            </tbody>
                            </table>  
                        </div> 
                        <div class="card-footer clearfix">
                            <ul class="pagination pagination-sm m-0 float-right">
                                {{ $pricings->links() }}
                            </ul>
                        </div>                         
                    </div>
                </div>
            </div>
        </div>
</section>
@endsection
@push('script')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tbody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
@endpush