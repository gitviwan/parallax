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
            <form action="{{url('/edit_submit')}}" method="post">
                {{ method_field('PUT') }}
                @csrf
                <input type="hidden" name="id" value="{{$product->id}}">
                <div class="row">
                    <div class="col-md-5 select-outline">
                        <!-- Material input -->
                        <div class="md-form">
                            <i class="fas fa-bacon prefix"></i>
                            <input type="text" value="{{$product->product_name}}" name="product" id="inputIconEx2" class="form-control validate @error('product') is-invalid @enderror" autofocus required>
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
                            <option value="{{$product->category_id}}"  selected>{{$product->category_name}}</option>
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
                        <center> <button  id="btn" type="submit" class="btn btn-warning btn-lg btn-block btn-rounded">Update</button></center>

                    </div>
                </div>
            </form>
        </div>
    </div>



@endsection
