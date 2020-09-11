@extends('dashboard.dashboard')

@section('content')

    <!-- Show product details -->

    <style>
        .size{
            width: 1000%;
            height: 100%;
        }
    </style>


    <div class="row justify-content-center">

        <!-- Table with panel -->
        <div class="card card-cascade narrower size">

            <!--Card image-->
            <div
                class="view view-cascade gradient-card-header purple-gradient narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">

                <div>
                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">

                    </button>
                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">

                    </button>
                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">

                    </button>
                </div>

                <a style="font-size: 30px" class="white-text mx-3 narrower "> P r o d u c t </a>

                <div>
                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">

                    </button>
                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">

                    </button>
                    <button type="button" class="btn btn-outline-white btn-rounded btn-sm px-2">

                    </button>
                </div>

            </div>
            <!--/Card image-->

            <div class="px-4 ">

                <div class="table-wrapper">
                    <!--Success Alert-->
                    @if(session()->has('message'))
                        <div class="alert alert-success" role="alert">
                            <b>{{ session()->get('message') }}</b>
                        </div>
                @endif
                <!--Table-->
                    <div class="table-responsive">
                        <table class="table table-hover mb-0" id="tableA" >

                            <!--Table head-->
                            <thead>
                            <tr>
                                <th class="th-lg" style="font-size: large">
                                    <b>Category</b>
                                </th>

                                <th class="th-lg" style="font-size: large">
                                    <b>Product</b>
                                </th>

                                <th class="th-lg" style="font-size: large">
                                    <b>Update</b>
                                </th>

                                <th class="th" style="font-size: large">
                                    <b>Action</b>
                                </th>

                            </tr>
                            </thead>
                            <!--Table head-->

                            <!--Table body-->
                            <tbody>
                            @foreach($products as $product)
                                <tr>
                                    <th>{{$product->category_name}}</th>
                                    <th>{{$product->product_name}}</th>
                                    <th>
                                        <form action="{{url('/edit_product')}}" method="get">
                                            @csrf
                                            <input type="hidden" name="id" value="{{$product->id}}">
                                            <button type="submit" name="submit" class="btn btn-warning btn-sm">Edit</button>

                                        </form>
                                    </th>
                                    <th>
                                        <form action="{{url('/delete_product')}}" method="post">
                                            {{ method_field('DELETE') }}
                                            @csrf
                                            <input type="hidden" name="id" value="{{$product->id}}">
                                            <button onclick="return confirm('Do you want to delete this product?')" type="submit" name="submit" class="btn btn-danger btn-sm">Delete</button>

                                        </form>
                                    </th>

                                </tr>
                            @endforeach
                            </tbody>
                            <!--Table body-->
                        </table>
                    </div>
                    <!--Data Table -->
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody>
                        <tr>
                            <td class="gutter">
                                <div class="line number1 index0 alt2" style="display: none;">1</div>
                            </td>
                            <td class="code">
                                <div class="container" style="display: none;">
                                    <div class="line number1 index0 alt2" style="display: none;">&nbsp;</div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <!--Table-->
                </div>

            </div>

        </div>
        <!-- Table with panel -->
    </div>





@endsection

