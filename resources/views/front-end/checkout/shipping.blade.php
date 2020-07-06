@extends('front-end.master')
@section('body')
    <div class="banner1">
        <div class="container">
            <h3><a href="{{route('/')}}">Home</a> / <span>Shipping</span></h3>
        </div>
    </div>
    <div class="container">
        <div class="content">
            <div class="single-wl3">
                <div class="row">
                    <div class="col-md-12 well text-center text-success">
                       Dear <strong>{{Session::get('customerName')}}</strong>.You have to give us product shipping info to complate your valuable order.If your billing info & Shipping info are same then just press on save shipping info button.
                    </div>
                        <div class="col-md-8 col-md-offset-2 well" >
                            <div> <h3 class="text-center">Shippng Info Gose here</h3></div>
                            <br>
                            {{Form::open(['route'=>'new-shipping','method'=>'post','class'=>'form'])}}
                                <div class="form-group">
                                    <input type="text" name="full_name" value="{{$customer->first_name.' '.$customer->last_name}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email_address" value="{{$customer->email_address}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone_number" value="{{$customer->phone_number}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <textarea name="address" id="" cols="30" rows="10" placeholder="Address" class="form-control">{{$customer->address}}</textarea>
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="btn" value="Save Shipping Info" class="btn btn-info btn-block">
                                </div>
                            {{Form::close()}}
                        </div>
                </div>
            </div>
        </div>
    </div>

@endsection