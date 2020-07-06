@extends('front-end.master')
@section('body')
    <div class="banner1">
        <div class="container">
            <h3><a href="{{route('/')}}">Home</a> / <span>Checkout</span></h3>
        </div>
    </div>
    <div class="container">
        <div class="content">
            <div class="single-wl3">
                <div class="row">
                    <div class="col-md-12 well">
                        <h3>You have to login complete you avalable order.If your are not registered then please register first.</h3>
                    </div>
                    <div class="col-md-5 well" >
                        <div> <h3 class="text-center">Register</h3></div>
                        <br>
                        {{Form::open(['route'=>'customer-sign-up','method'=>'post','class'=>'form'])}}
                            <div class="form-group">
                                <input type="text" name="first_name" placeholder="First Name" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="text" name="last_name" placeholder="Last Name" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email_address" placeholder="Email" class="form-control" id="email_address">
                                <span class="text-success" id="res"></span>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Password" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="text" name="phone_number" placeholder="Phone Number" class="form-control">
                            </div>
                            <div class="form-group">
                                <textarea name="address" id="" cols="30" rows="10" placeholder="Address" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="btn" value="Register" class="btn btn-info btn-block">
                            </div>
                        {{Form::close()}}

                    </div>
                    <div class="col-md-5 well col-md-offset-2">
                        <div> <h3 class="text-center">Login</h3></div>
                        <p class="text-danger">{{Session::get('message')}}</p>
                        <br>

                        {{Form::open(['route'=>'customer-login','method'=>'post'])}}
                            <div class="form-group">
                                <input type="email" name="email_address" placeholder="Email" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Password" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="btn" value="Login" class="btn btn-success btn-block">
                            </div>
                        {{Form::close()}}


                    </div>
                </div>
            </div>
        </div>
     </div>
    <script>
        var email_address = document.getElementById('email_address');
        email_address.onblur = function () {
            var xmlHttp = new XMLHttpRequest();
            var data = document.getElementById('email_address').value;
            var serverPage = 'http://localhost/blogsite/public/ajax-email-check/'+data;
            xmlHttp.open('GET',serverPage);
            xmlHttp.onreadystatechange = function () {
                if(xmlHttp.readyState == 4 && xmlHttp.status==200){
                    document.getElementById('res').innerHTML=xmlHttp.responseText;
                }
            }
            xmlHttp.send(null);
        }
    </script>
    @endsection