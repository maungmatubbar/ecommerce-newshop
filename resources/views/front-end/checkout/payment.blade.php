@extends('front-end.master')
@section('body')
    <div class="banner1">
        <div class="container">
            <h3><a href="{{route('/')}}">Home</a> / <span>Payment</span></h3>
        </div>
    </div>
    <div class="container">
        <div class="content">
            <div class="single-wl3">
                <div class="row">
                    <div class="col-md-12 well text-center text-success">
                       Dear <strong>{{Session::get('customerName')}}</strong>.You have to give us product payment method.
                    </div>
                        <div class="col-md-8 col-md-offset-2 well" >
                            <div> <h3 class="text-center">Payment Info Gose here</h3></div>
                            <br>
                            {{Form::open(['route'=>'new-order','method'=>'post','class'=>'form'])}}
                                <table class="table">
                                    <tr>
                                        <th>Cash On Delivery</th>
                                        <td><input type="radio" name="payment_type" value="Cash"> Cash On Delivery</td>
                                    </tr>
                                    <tr>
                                        <th>Paypal</th>
                                        <td><input type="radio" name="payment_type" value="Paypal"> Paypal</td>
                                    </tr>
                                    <tr>
                                        <th>Bkash</th>
                                        <td><input type="radio" name="payment_type" value="Bkash"> Bkash</td>
                                    </tr>
                                    <tr>
                                        <td><input type="submit" name="btn" class="btn btn-success" value="Confirm Order"></td>
                                    </tr>
                                </table>
                            {{Form::close()}}
                        </div>
                </div>
            </div>
        </div>
    </div>
@endsection