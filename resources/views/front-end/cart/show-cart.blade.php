@extends('front-end.master')
@section('body')
    <div class="content">
        <div class="single-wl3">
            <div class="container">
                <div class="row">
                    <div class="col-md-11 col-md-offset-1">
                        <h3 class="text-success text-center">My Shopping Cart</h3>
                        <table class="table table-bordered table-hover">
                            <tr class="bg-warning">
                                <th>Sl No</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th>Action</th>
                            </tr>
                            @php($i=1)
                            <?php $sum=0; ?>
                            @foreach($cartProducts as $cartProduct)
                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{$cartProduct->name}}</td>
                                <td><img src="{{asset($cartProduct->options->image)}}" width="50" height="70" alt="produt image"></td>
                                <td>TK.{{$cartProduct->price}}</td>
                                <td>
                                    {{Form::open(['route'=>'update-cart'])}}
                                        <input type="number" class="input-sm form-control" name="qty" value="{{$cartProduct->qty}}" min="1">
                                        <input type="hidden" class="input-sm form-control" name="rowId" value="{{$cartProduct->rowId}}">
                                        <input type="submit" class="btn btn-success btn-xs" name="btn" value="Update">
                                    {{Form::close()}}
                                </td>
                                <td>{{$total = $cartProduct->qty*$cartProduct->price}}</td>
                                <td>
                                    <a href="{{route('delete-cart-item',['rowId'=>$cartProduct->rowId])}}" class="btn btn-danger btn-xs" title="Delete">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </td>
                            </tr>
                                <?php $sum = $total+$sum;?>
                            @endforeach
                        </table>
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>Total (tk.)</th>
                                <td>{{$sum}}</td>
                            </tr>
                            <tr>
                                <th>Vat (tk.)</th>
                                <td>{{$vat = 0 }}</td>
                            </tr>
                            <tr>
                                <th>Grand Total (tk.)</th>
                                <td>{{$orderTotal = $sum+$vat}}</td>
                                <?php
                                    Session::put('orderTotal',$orderTotal);
                                ?>
                            </tr>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-md-11 col-md-offset-1">
                            @if(Session::get('customerId') && Session::get('shippingId'))
                                <a href="{{route('checkout-payment')}}" class="btn btn-success pull-right">Checkout</a>
                            @elseif(Session::get('customerId'))
                                <a href="{{route('checkout-shipping')}}" class="btn btn-success pull-right">Checkout</a>
                            @else
                                <a href="{{route('checkout')}}" class="btn btn-success pull-right">Checkout</a>
                            @endif
                            <a href="" class="btn btn-success ">Continue Shopping</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
