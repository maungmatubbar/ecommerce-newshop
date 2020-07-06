@extends('admin.master')
@section('mainContent')
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-heading">
                <div class="panel-title">
                    <h3 class="text-center text-info">Manage Order</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Manage Order
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead class="bg-primary">
                            <tr>
                                <th>Sl No</th>
                                <th>Customer Name</th>
                                <th>Order Total</th>
                                <th>Order Date</th>
                                <th>Order Status</th>
                                <th>Payment Type</th>
                                <th>Payment Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            @php($i=1)
                            @foreach($orders as $order)
                            <tbody>
                                <td>{{$i++}}</td>
                                <td>{{$order->first_name.' '.$order->last_name}}</td>
                                <td>{{$order->order_total}}</td>
                                <td>{{$order->created_at}}</td>
                                <td>{{$order->order_status}}</td>
                                <td>{{$order->payment_type}}</td>
                                <td>{{$order->order_status}}</td>
                                <td>
                                    <a href="{{route('view-order-detail',['id'=>$order->id])}}" title="View Order Details" class="btn btn-xs btn-info"><span class="glyphicon glyphicon-zoom-in"></span></a>
                                    <a href="{{route('view-order-invoice',['id'=>$order->id])}}" title="View Order Invoice" class="btn btn-xs btn-success"><span class="glyphicon glyphicon-zoom-out"></span></a>
                                    <a href="{{route('download-invoice',['id'=>$order->id])}}" title="Download Order Invoice"  class="btn btn-xs  btn-primary"><span class="glyphicon glyphicon-download"></span></a>
                                    <a href="" title="Edit Order"  class="btn btn-xs  btn-warning"><span class="glyphicon glyphicon-edit"></span></a>
                                    <a href="" title="Delete Order" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
                                </td>
                            </tbody>
                            @endforeach
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