@extends('layouts.admin')
@section('title','تعديل')
@section('serves_view','')
@section('content')
<?php 
if(! $permissoin = \App\Models\Role::havePremission(['serves_idt']))
    $readonly="readonly";
else 
    $readonly="";
?>
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">الرئيسية </a>
                                </li>
                                <li class="breadcrumb-item"><a href="{{route('admin.service')}}">  خدمة </a>
                                </li>
                                <li class="breadcrumb-item active">تعديل
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                <!-- Basic form layout section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form">تعديل</h4>
                                    <a class="heading-elements-toggle"><i
                                            class="la la-ellipsis-v font-medium-3"></i></a>
                                    <div class="heading-elements">
                                        <ul class="list-inline mb-0">
                                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                @include('admin.include.alerts.success')
                                @include('admin.include.alerts.errors')
                                <div class="card-content collapse show">
                                    <div class="card-body">
                                        <form class="form form-horizontal" action="{{route('admin.service.update',$datas -> id)}}" method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> البيانات  </h4>
                                                
                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="name_ar">الاسم بالعربي</label>
                                                    <div class="col-md-6">
                                                        <input type="text" value="{{$datas -> name_ar}}" id="name_ar"
                                                                   class="form-control" required
                                                                   placeholder="الاسم بالعربي" {{ $readonly }}
                                                                   name="name_ar">
                                                            @error('name_ar')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="name_en">الاسم بالانجليزي</label>
                                                    <div class="col-md-6">
                                                        <input type="text" value="{{$datas -> name_en}}" id="name_en"
                                                                   class="form-control" required {{ $readonly }}
                                                                   placeholder="الاسم بالانجليزي"
                                                                   name="name_en">
                                                            @error('name_en')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="type">{{ __('Type') }}</label>
                                                    <div class="col-md-6">
                                                        <select name="type" class="form-control" id="type" {{ $readonly }} required>
                                                            <option value="">-- {{ __('Type') }} --</option>
                                                            <option value="1" @if($datas -> type == '1') selected @endif>{{ __("InPatient") }}</option>
                                                            <option value="2" @if($datas -> type == '2') selected @endif>{{ __("OutPatient") }}</option>
                                                            <option value="3" @if($datas -> type == '3') selected @endif>{{ __("Lab") }}</option>
                                                        </select>
                                                        @error('type')
                                                        <span class="text-danger">{{$message}}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="description">وصف</label>
                                                    <div class="col-md-6">
                                                        <textarea id="description" class="form-control" placeholder="وصف"  {{ $readonly }}
                                                                name="description">{{$datas -> description}}</textarea>
                                                            @error('description')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="img">اضف صوره</label>
                                                    <div class="col-md-6">
                                                        <input type="file" id="img" {{ $readonly }}
                                                                   class="form-control" value=""
                                                                   accept="image/*"
                                                                   name="img">
                                                            @error('img')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                    </div>
                                                    <div class="col-md-2">
                                                        @if($datas -> image != null)
                                                            <img width="50px" height="50px" src="../../../{{$datas -> image}}">
                                                        @endif
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="specialty_id">{{ __('Specialty') }}</label>
                                                    <div class="col-md-6">
                                                        <select class="select2 form-control" id="specialty_id" name="specialty_id">
                                                            <option value="">-- {{ __('Select') }} {{ __('Specialty') }} -- </option>
                                                            @foreach($specialtys as $specialty)
                                                                <option value="{{ $specialty->id }}"
                                                                    @if(isset($datas->specialty_id))
                                                                        @if($datas->specialty_id == $specialty->id) selected @endif
                                                                    @endif
                                                                    @if(old('specialty_id') == $specialty->id) selected @endif
                                                                >{{ $specialty->name_ar}}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('specialty_id')
                                                        <span class="text-danger">{{$message}}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="category_id">{{ __('Category Parent') }}</label>
                                                    <div class="col-md-6">
                                                        <select class="select2 form-control" name="category_id"  {{ $readonly }} >
                                                            <option value="">-- {{ __('Category Parent') }} --</option>
                                                            @foreach($categorys as $general)
                                                                <option @if ($datas ->category_id == $general->id) selected @endif 
                                                                    value="{{ $general->id }}">
                                                                    @if (App::getLocale() == 'ar')
                                                                        {{ $general->name_ar}}
                                                                    @else
                                                                        {{ $general->name_en}}
                                                                    @endif
                                                                    
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                        @error('category_id')
                                                        <span class="text-danger">{{$message}}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label class="col-md-2 label-control" for="parent_id">الحالة</label>
                                                    <div class="col-md-2">
                                                        <input type="checkbox"  value="0" name="disabled"
                                                                   id="switcheryColor4" {{ $readonly }}
                                                                   class="switchery" data-color="success" 
                                                                   @if($datas -> disabled  == 0 ) checked @endif />
                                                            @error('disabled')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                    </div>
                                                    <label class="col-md-2 label-control" for="parent_id">{{ __('site') }}</label>
                                                    <input type="checkbox"  value="1" name="site"
                                                            id="site" {{ $readonly }}
                                                            class="switchery" data-color="success" 
                                                            @if($datas -> site  == 1 ) checked @endif />
                                                    @error('site')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>

                                            </div>

                                            @if ($permissoin)
                                                <div class="form-actions">
                                                    <button type="button" class="btn btn-warning mr-1"
                                                            onclick="history.back();">
                                                          {{ __('Back') }}
                                                    </button>
                                                    <button type="submit" class="btn btn-primary">
                                                          {{ __('Save') }}
                                                    </button>
                                                </div>
                                            @endif
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Basic form layout section end -->
            </div>
        </div>
    </div>

@endsection
