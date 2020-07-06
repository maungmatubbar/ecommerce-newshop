@extends('admin.master')
@section('mainContent')
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <h3 class="text-center text-success">Edit Brand Info</h3>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <div class="row">
                    {{Form::open(['route'=>'update-brand','method'=>'POST','class'=>'form-horizontal'])}}
                    <div class="form-group">
                        {{Form::label('brand_name','Brand Name',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::text('brand_name',$brand->brand_name,['class'=>'form-control'])}}
                            {{Form::hidden('brand_id',$brand->id,['class'=>'form-control'])}}
                            <span class="text-warning">{{$errors->has('brand_name')?$errors->first('brand_name'):' '}}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('brand_description','Brand Description',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            {{Form::textarea('brand_description',$brand->brand_description,['class'=>'form-control'])}}
                            <span class="text-warning">{{$errors->has('brand_description')?$errors->first('brand_description'):' '}}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        {{Form::label('publication_status','Publication Status',['class'=>'control-label col-sm-4'])}}
                        <div class="col-sm-8">
                            <label for="publication_status">{{Form::radio('publication_status',1,$brand->publication_status==1?true:'')}} Published </label>
                            <label for="publication_status">{{Form::radio('publication_status',0,$brand->publication_status==0?true:'')}} Unpublished</label>
                            <br>
                            <span class="text-warning">{{$errors->has('publication_status')?$errors->first('publication_status'):' '}}</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-4">
                            {{Form::submit('Update Brand Info',['class'=>'btn btn-success btn-block'])}}
                        </div>
                    </div>
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>
@endsection