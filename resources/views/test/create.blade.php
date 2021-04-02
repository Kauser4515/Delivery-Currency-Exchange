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
                        <li class="breadcrumb-item"><a href="#">Category</a></li>
                        <li class="breadcrumb-item active">New Carrier</li> 
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
<section class="content">
    <div class="container">
        <h1>Ajax Data Insert</h1>
        <form action="" class="btn-submit" method="POST">

           <div class="form-group">
                <label>Country:</label>
                <input type="text" name="country" class="form-control" placeholder="country" required="">

            </div>
            <div class="form-group">
                <label>Carrier:</label>
                <input type="text" name="carrier" class="form-control" placeholder="carrier" required="">
            </div>

           
            <div class="form-group">
                <button class="btn btn-success">Submit</button>
            </div>

        </form>
    </div>
</section>
@endsection

@push('script')
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">


    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(".btn-submit").click(function(e){

        e.preventDefault();

        var country = $("input[name=country]").val();
        var carrier = $("input[name=carrier]").val();
        var url = '{{ url('postinsert') }}';

        $.ajax({
           url:url,
           method:'POST',
           data:{
                  Code:country, 
                  Chief:carrier
                },
           success:function(response){
              if(response.success){
                  alert(response.message) //Message come from controller
              }else{
                  alert("Error")
              }
           },
           error:function(error){
              console.log(error)
           }
        });
    });

</script>
<script type="text/javascript">
     $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(".btn-submit").click(function(e){

        e.preventDefault();

        var data = $(this).serialize();
        console.log(data);
        var url = '{{ url('postinsert') }}';

        $.ajax({
           url:url,
           method:'POST',
           data:data,
           success:function(response){
              if(response.success){
                  alert(response.message) //Message come from controller
              }else{
                  alert("Error")
              }
           },
           error:function(error){
              console.log(error)
           }
        });
    });
</script>
@endpush