@extends('admin.master')
@section('mainContent')
    <div class="row">
        <div class="col-sm-12">
            <div class="panel">
                <div class="panel-body panel-danger">
                    <h3 class="text-center text-muted">Manage Product Info</h3>
                    <h4 class="text-center text-success">{{Session::get('message')}}</h4>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DataTables For Manage Product
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead class="bg-primary">
                                <tr>
                                    <th>Sl No</th>
                                    <th>Category Name</th>
                                    <th>Brand Name</th>
                                    <th>Product Name</th>
                                    <th>Product Image</th>
                                    <th>Product Price</th>
                                    <th>Product Qty</th>
                                    <th>PC Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php($i=1)
                                @foreach($products as $product)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$product->category_name}}</td>
                                    <td>{{$product->brand_name}}</td>
                                    <td>{{$product->product_name}}</td>
                                    <td><img src="{{asset($product->product_image)}}" alt="" width="100" height="150"></td>
                                    <td>{{$product->product_price}}</td>
                                    <td>{{$product->product_quantity}}</td>
                                    <td>{{$product->publication_status?'Published':'Unpublished'}}</td>
                                    <td>
                                        @if($product->publication_status==1)
                                        <a href="" title="Unpublish" class="btn btn-xs btn-info"><span class="glyphicon glyphicon-arrow-up"></span></a>
                                        @else
                                        <a href="" title="Publish" class="btn btn-xs  btn-warning"><span class="glyphicon glyphicon-arrow-down"></span></a>
                                        @endif
                                        <a href="{{route('edit-product',['id'=>$product->id])}}" title="Edit" class="btn btn-xs btn-success"><span class="glyphicon glyphicon-edit"></span></a>
                                        <a href="" title="View"  class="btn btn-xs  btn-primary"><span class="glyphicon glyphicon-zoom-in"></span></a>
                                        <a href="" title="Delete" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
                                    </td>
                                </tr>

                                @endforeach

                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
@endsection
