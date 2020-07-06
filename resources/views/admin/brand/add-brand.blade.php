@extends('admin.master')
@section('mainContent')
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <h3 class="text-center text-success">Add Brand</h3>
                <h4 class="text-center text-success">{{Session::get('message')}}</h4>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="well">
                <div class="row">
                    {{Form::open(['route'=>'new-brand','method'=>'POST','class'=>'form-horizontal'])}}
                        <div class="form-group">
                            {{Form::label('brand_name','Brand Name',['class'=>'control-label col-sm-4'])}}
                            <div class="col-sm-8">
                                {{Form::text('brand_name',$value=null,['class'=>'form-control'])}}
                                <span class="text-warning">{{$errors->has('brand_name')?$errors->first('brand_name'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            {{Form::label('brand_description','Brand Description',['class'=>'control-label col-sm-4'])}}
                            <div class="col-sm-8">
                                {{Form::textarea('brand_description',$value=null,['class'=>'form-control'])}}
                                <span class="text-warning">{{$errors->has('brand_description')?$errors->first('brand_description'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            {{Form::label('publication_status','Publication Status',['class'=>'control-label col-sm-4'])}}
                            <div class="col-sm-8">
                                <label for="publication_status">{{Form::radio('publication_status',1)}} Published </label>
                                <label for="publication_status">{{Form::radio('publication_status',0)}} Unpublished</label>
                                <br>
                                <span class="text-warning">{{$errors->has('publication_status')?$errors->first('publication_status'):' '}}</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-4">
                                {{Form::submit('Save Brand Info',['class'=>'btn btn-success btn-block'])}}
                            </div>
                        </div>
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>
@endsection