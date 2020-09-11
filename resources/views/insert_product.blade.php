@extends('dashboard.dashboard')

@section('content')
    <style>
        .md-outline.select-wrapper+label {
            top: .5em !important;
            z-index: 2 !important;
        }
    </style>
    <!--Success Alert-->
    @if(session()->has('message'))
        <div class="alert alert-success" role="alert">
            <h5><b>{{ session()->get('message') }}</b></h5>
        </div>
    @endif
    <div class="card card-cascade narrower">
        <div class="card-body card-body-cascade ">
            <form action="{{url('/product_submit')}}" method="post">
                @csrf
                <div class="row">
                    <div class="col-md-5 select-outline">
                        <!-- Material input -->
                        <div class="md-form">
                            <i class="fas fa-bacon prefix"></i>
                            <input type="text" name="product" id="inputIconEx2" class="form-control validate @error('product') is-invalid @enderror" autofocus required>
                            <label for="inputIconEx2">Product Name </label>
                            @error('product')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                    <div id="category" class="offset-1 col-md-5 select-outline">
                        <select id="ear" name="category" class="mdb-select md-form md-outline colorful-select dropdown-primary validate @error('category') is-invalid @enderror" required>
                            <option value="" disabled selected>Select category</option>
                            @foreach($categories as $category)
                                <option value="{{$category->id}}">{{$category->category_name}}</option>
                            @endforeach
                        </select>
                        <label id="label">Category</label>
                        @error('category')
                        <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="row">
                    <div class=" col-md-11" style="margin-top: 40px">
                        <center> <button disabled id="btn" type="submit" class="btn btn-purple btn-lg btn-block btn-rounded">Submit</button></center>

                    </div>
                </div>
            </form>
        </div>
    </div>



    <!-- SCRIPTS -->
    <script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>


    <script>

        $(document).ready(function() {

            $('#btn').attr('disabled',true);


            // button active/nonactive
            $('[name="category"]').change(function () {
                if ($('[name="category"]').val() !== ''){
                    $('#btn').attr('disabled',false);
                } else {
                    $('#btn').attr('disabled',true);
                }
            });
        });
    </script>
@endsection
