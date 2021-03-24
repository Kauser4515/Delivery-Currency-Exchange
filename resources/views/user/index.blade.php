@extends('layouts.app')

<!-- @push('plugin-styles') -->
  <!-- <link href="{{ asset('assets/plugins/plugin.css') }}" rel="stylesheet"> -->
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
                                <th>Email Address</th>
                                <th>User Role </th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            @foreach($users as $index => $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->name}}</td>
                                <td>{{ $user->email}}</td>
                                <td>@if($user->role == 3)
                                        <span class="table-info"> Supper Admin </span>
                                    @elseif($user->role == 4)
                                        <span class="table-primary"> Admin </span>
                                    @else
                                        <span class="table-success"> User </span>
                                    @endif
                                </td>
                                <td>
                                    @if($user->status == 1)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-danger">Block</span>
                                    @endif
                                </td>
                                <td>
                                    <a href="" class="btn btn-sm btn-primary"><span class="mdi mdi-eye"></span></a>
                                    <a href="" class="btn btn-sm btn-warning"><span class="mdi mdi-lead-pencil"></span></a>
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
</div>
@endsection

@push('plugin-scripts')
@endpush
@push('custom-scripts')
@endpush