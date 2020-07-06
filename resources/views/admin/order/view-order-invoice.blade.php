@extends('admin.master')
@section('mainContent')
    <br>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <body>
                        <header>
                            <h1>Invoice</h1>
                            <address>
                                <h3>Shipping Info</h3>
                                <p>{{$shipping->full_name}}</p>
                                <p>{{$shipping->address}}</p>
                                <p>{{$shipping->phone_number}}</p>
                            </address>
                            <address class="">
                                <h3>Billing Info</h3>
                                <p>{{$customer->first_name.' '.$customer->last_name}}</p>
                                <p>{{$customer->address}}</p>
                                <p>{{$customer->phone_number}}</p>
                            </address>
                            <span><img alt="" src="http://www.jonathantneal.com/examples/invoice/logo.png"><input type="file" accept="image/*"></span>
                        </header>
                        <article>
                            <h1>Recipient</h1>
                            <address>
                                <p>New Shop<br>c/o Some Guy</p>
                            </address>
                            <table class="meta">
                                <tr>
                                    <th><span>Invoice #</span></th>
                                    <td><span>0000{{$order->id}}</span></td>
                                </tr>
                                <tr>
                                    <th><span>Date</span></th>
                                    <td><span>{{$order->created_at}}</span></td>
                                </tr>
                                <tr>
                                    <th><span>Amount Due</span></th>
                                    <td><span id="prefix">TK</span><span>{{$order->order_total}}</span></td>
                                </tr>
                            </table>
                            <table class="inventory">
                                <thead>
                                <tr>
                                    <th><span>Item</span></th>
                                    <th><span>Description</span></th>
                                    <th><span>Rate</span></th>
                                    <th><span>Quantity</span></th>
                                    <th><span>Price</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                @php($sum=0)
                                @foreach($orderDetails as $orderDetail)
                                    <tr>
                                        <td><span>{{$orderDetail->product_name}}</span></td>
                                        <td><span>Experience Review</span></td>
                                        <td><span>TK</span><span>{{$orderDetail->product_price}}</span></td>
                                        <td><span>{{$orderDetail->product_quantity}}</span></td>
                                        <td><span>TK</span><span>{{$total = $orderDetail->product_price*$orderDetail->product_quantity}}</span></td>
                                    </tr>
                                    @php($sum+=$total)
                                @endforeach
                                </tbody>
                            </table>
                            {{--<a class="add">+</a>--}}
                            <table class="balance">
                                <tr>
                                    <th><span>Grand Total</span></th>
                                    <td><span>TK</span><span>{{$sum}}</span></td>
                                </tr>
                            </table>
                        </article>
                        <aside>
                            <h1><span>Additional Notes</span></h1>
                            <div>
                                <p>A finance charge of 1.5% will be made on unpaid balances after 30 days.</p>
                            </div>
                        </aside>
                    </body>
                </div>
            </div>
        </div>
    </div>

@endsection