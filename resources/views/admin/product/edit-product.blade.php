@extends('admin.master')
@section('mainContent')
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <h3 class="text-center text-success">Edit Product</h3>
                <h4 class="text-center text-success">{{Session::get('message')}}</h4>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <div class="row">
                    {{Form::open(['route'=>'update-product','method'=>'POST','enctype'=>'multipart/form-data','class'=>'form-horizontal','name'=>'edit_product_form'])}}
                    <div class="form-group">
                        {{Form::label('category_name','Category Name',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            <select name="category_id" id="" class="form-control">
                                <option>--Select Category Name--</option>
                                @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->category_name}}</option>
                                @endforeach
                            </select>
                            <span class="text-warning">{{$errors->has('category_name')?$errors->first('category_name'):' '}}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('brand','Brand Name',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            <select name="brand_id" id="" class="form-control">
                                <option>--Select Brand Name--</option>
                                @foreach($brands as $brand)
                                    <option value="{{$brand->id}}">{{$brand->brand_name}}</option>
                                @endforeach
                            </select>
                            {{--<span class="text-warning">{{$errors->has('brand_name')?$errors->first('brand_name'):' '}}</span>--}}
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('product_name','Proudct Name',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::text('product_name',$product->product_name,['class'=>'form-control'])}}
                            {{Form::text('id',$product->id,['class'=>'form-control'])}}
                            <span class="text-warning">{{$errors->has('product_name')?$errors->first('product_name'):' '}}
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('product_price','Product Price',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::number('product_price',$product->product_price,['class'=>'form-control'])}}
                            <span class="text-warning">{{$errors->has('product_price')?$errors->first('product_price'):' '}}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('product_quen','Product Quantity',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::number('product_quantity',$product->product_quantity,['class'=>'form-control'])}}
                            <span class="text-warning">{{$errors->has('product_quantity')?$errors->first('product_quantity'):' '}}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('product_s_description','Product Short Desciption',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::textarea('product_short_description',$product->product_short_description,['rows'=>5,'class'=>'form-control'])}}
                            {{-- <span class="text-warning">{{$errors->has('product_short_description')?$errors->first('product_short_description'):' '}}</span>--}}
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('product_l_description','Product Long Desciption',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::textarea('product_long_description',$product->product_long_description,['rows'=>5,'id'=>'editor','class'=>'form-control'])}}
                            {{-- <span class="text-warning">{{$errors->has('product_long_description')?$errors->first('product_long_description'):' '}}</span>--}}
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('product_img','Product Image',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            <span><img class="img-rounded" hight="200" width="150" src="{{asset($product->product_image)}}" alt=""></span>
                            <input type="file" name="product_image" accept="/*">
                            {{--<span class="text-warning">{{$errors->has('product_image')?$errors->first('product_image'):' '}}</span>--}}
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('publication_st','Publication Status',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            <label for="">{{Form::radio('publication_status',1,$product->publication_status==1?'true': '')}} Published </label>
                            <label for="">{{Form::radio('publication_status',0,$product->publication_status==1?'' :'true')}} Unpublished</label>
                            <br>
                            {{--<span class="text-warning">{{$errors->has('publication_status')?$errors->first('publication_status'):' '}}</span>--}}
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-4">
                            {{Form::submit('Updata Product Info',['class'=>'btn btn-success btn-block'])}}
                        </div>
                    </div>
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>
    <script>
        document.forms['edit_product_form'].elements['category_id'].value='{{$product->category_id}}';
        document.forms['edit_product_form'].elements['brand_id'].value='{{$product->brand_id}}';
    </script>
@endsection

