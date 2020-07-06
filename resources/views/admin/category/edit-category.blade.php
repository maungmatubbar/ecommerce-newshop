@extends('admin.master')
@section('mainContent')
    <div class="row">
        <div class="col-lg-12">
            <div class="well">
                <p class="lead text-center text-info">Edit Category Info Form</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="well">
                <div class="row">
                    <form class="form-horizontal" method="post" action="{{route('update-category')}}">
                        {{csrf_field()}}
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Category Name</label>
                            <div class="col-lg-9">
                                <input type="text" name="category_name" value="{{$category->category_name}}"  class="form-control"/>
                                <input type="hidden" name="category_id" value="{{$category->id}}"  class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Category Description</label>
                            <div class="col-lg-9 radio">
                                <textarea name="category_description" rows="10" class="form-control" >{{$category->category_description}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Publication Status</label>
                            <div class="col-lg-9">
                                <lable><input type="radio" name="publication_status" value="1" {{$category->publication_status==1?'checked':''}}> Published</lable>
                                <lable><input type="radio" name="publication_status" value="0" {{$category->publication_status==1?'':'checked'}}> Unpublished</lable>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                                <input type="submit" name="btn" value="Update Category Info" class="btn btn-success btn-block">
                            </div>
                        </div>
                    </form>
                    <h4 class="col-lg-9 col-lg-offset-3 text-success">{{Session::get('message')}}</h4>
                </div>
            </div>
        </div>
    </div>
@endsection
