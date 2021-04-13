@extends('layouts.app')
@section('title', 'Users')
 
@push('style')
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}"> 
@endpush

@section('content')
      <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2"> 
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark"></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('pricing.index') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="#">Category</a></li>
                        <li class="breadcrumb-item active">New Test</li> 
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
                            <h3 class="card-title mb-0">New Test</h3>
                            <a class="btn btn-primary btn-sm" href="{{ route('category.index') }}"><i class="fa fa-plus"></i> All Test</a>
                        </div> 
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row justify-content-center">
                                <div class="col-md-6">
                                    <form role="form" action="{{ route('test.store') }}" method="post" autocomplete="off">
                                        @csrf 
                                        @if ($errors->any())
                                            <div class="alert alert-danger">
                                                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif
                                        <div class="form-group">
                                                <input type="hidden" name="_token" id="csrf" value="{{Session::token()}}">
                                            <label for="country">Country:</label>
                                            <input type="text" class="form-control" id="country" placeholder="Enter country" name="country">
                                          </div>
                                          <div class="form-group">
                                            <label for="carrier">Carrier:</label>
                                            <input type="carrier" class="form-control" id="carrier" placeholder="Enter carrier" name="carrier">
                                          </div>
                                          <button type="submit" class="btn btn-primary" id="butsave">Submit</button>
                                        <script>
                                        $(document).ready(function() {
                                            $('#butsave').on('click', function() {
                                              var country = $('#country').val();
                                              var carrier = $('#carrier').val();
                                              if(country!="" && carrier!="" ){
                                                /*  $("#butsave").attr("disabled", "disabled"); */
                                                  $.ajax({
                                                      url: "/userData",
                                                      type: "POST",
                                                      data: {
                                                          _token: $("#csrf").val(),
                                                          type: 1,
                                                          country: country,
                                                          carrier: carrier,
                                                      },
                                                      cache: false,
                                                      success: function(dataResult){
                                                          console.log(dataResult);
                                                          var dataResult = JSON.parse(dataResult);
                                                          if(dataResult.statusCode==200){
                                                            window.location = "/userData";              
                                                          }
                                                          else if(dataResult.statusCode==201){
                                                             alert("Error occured !");
                                                          }
                                                      }
                                                  });
                                              }
                                              else{
                                                  alert('Please fill all the field !');
                                              }
                                          });
                                        });
                                        </script>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
@endpush