@extends('layouts.app')

@push('plugin-styles')
  <!-- <link href="{{ asset('assets/plugins/plugin.css') }}" rel="stylesheet"> -->
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
@endpush
@section('content')

<div class="row">
    <div class="col-sm-12">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="">Users</a></li>
            <li class="breadcrumb-item active">All Users</li> 
        </ol>
    </div>
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="p-4 border-bottom bg-light">
            <h4 class="card-title mb-0">Manage User Table</h4>
            </div>
            <div class="card-body">
                <div class="fluid-container">
                    <div id="printable_area">
                        <table class="table table-hover" id="myTable">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Email Address</th>
                                <th>User Role </th>
                                <!-- <th>Actions</th> -->
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            @foreach($users as $index => $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->name}}</td>
                                <td>{{ $user->phone}}</td>
                                <td>{{ $user->email}}</td>
                                <td>@if($user->user_role_id == 1)
                                        <span class="table-info"> Supper Admin </span>
                                    @elseif($user->user_role_id == 2)
                                        <span class="table-primary"> Admin </span>
                                    @else
                                        <span class="table-success"> User </span>
                                    @endif
                                </td>
                                <!-- <td>
                                    <a href="{{ route('admin.user.edit', $user->id) }}" class="btn btn-sm btn-warning"><span class="mdi mdi-lead-pencil"></span></a>
                                </td> -->
                            </tr>
                            @endforeach
                            </tbody>
                        </table>  
                    </div>  
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('plugin-scripts')
@endpush
@push('custom-scripts')
<script type="text/javascript" src="//cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
@endpush