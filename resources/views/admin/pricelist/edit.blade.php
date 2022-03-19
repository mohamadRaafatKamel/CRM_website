@extends('layouts.admin')
@section('title','تعديل')
@section('pricelist_view','')
@section('content')
<?php 
if(! $permissoin = \App\Models\Role::havePremission(['pricelist_idt']))
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
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">{{ __('Home') }} </a>
                                </li>
                                <li class="breadcrumb-item"><a href="{{route('admin.pricelist')}}">  تخصص </a>
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
                                        @if ($permissoin)
                                        <form class="form form-horizontal" action="{{route('admin.pricelist.update',$datas -> id)}}" method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                        @endif

                                        <div class="form-body">
                                            <h4 class="form-section"><i class="ft-home"></i> البيانات   </h4>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="name">الاسم </label>
                                                <div class="col-md-6">
                                                    <input type="text" value="{{$datas -> name}}" id="name"
                                                            class="form-control" required {{ $readonly }}
                                                            placeholder="الاسم "
                                                            name="name">
                                                    @error('name')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="copy_from">{{ __('Copy From') }}</label>
                                                <div class="col-md-6">
                                                    <select class="select2 form-control" name="copy_from" {{ $readonly }}>
                                                        <option value="">-- {{ __('Copy From') }} --</option>
                                                        @foreach($priceLists as $priceList)
                                                            <option value="{{ $priceList->id }}"
                                                                @if ($priceList->id == $datas ->copy_from) selected @endif>
                                                                    {{ $priceList->name}}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('copy_from')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="disabled">الحالة</label>
                                                <div class="col-md-6">
                                                    <input type="checkbox" value="0" name="disabled" id="disabled" {{ $readonly }}
                                                            class="switchery" data-color="success" 
                                                            @if($datas -> disabled  == 0 ) checked @endif/>
                                                    @error('disabled')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="main_pl">main</label>
                                                <div class="col-md-6">
                                                    <input type="checkbox"  value="1" name="main_pl" {{ $readonly }}
                                                            id="main_pl" class="switchery" data-color="success" 
                                                            @if($datas -> main_pl  == 1 ) checked @endif/>
                                                    @error('main_pl')
                                                        <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <h4 class="form-section"><i class="ft-home"></i> {{ __('Role') }}   </h4>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="category_id">{{ __('Category') }}</label>
                                                <div class="col-md-6">
                                                    <select class="select2 form-control" name="category_id">
                                                        <option value="">-- {{ __('Category') }} --</option>
                                                        @foreach($categorys as $category)
                                                            <option value="{{ $category->id }}">
                                                                @if (App::getLocale() == 'ar')
                                                                    {{ $category->name_ar}}
                                                                @else
                                                                    {{ $category->name_en}}
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
                                                <label class="col-md-2 label-control" for="up_down">{{ __('Up Down') }}</label>
                                                <div class="col-md-6">
                                                    <select class="select2 form-control" name="up_down">
                                                        <option value="1">{{ __('Down') }}</option>
                                                        <option value="2">{{ __('Up') }}</option>
                                                    </select>
                                                    @error('up_down')
                                                        <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="percentage_cash">{{ __('Percentage Cash') }}</label>
                                                <div class="col-md-6">
                                                    <select class="select2 form-control" name="percentage_cash">
                                                        <option value="1">{{ __('Percentage') }}</option>
                                                        <option value="2">{{ __('Cash') }}</option>
                                                    </select>
                                                    @error('percentage_cash')
                                                        <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-2 label-control" for="value">{{ __('Value') }} </label>
                                                <div class="col-md-6">
                                                    <input type="number" step="0.01" value="" id="value" class="form-control" 
                                                            placeholder="{{ __('Value') }}" name="value">
                                                    @error('value')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </div>
                                            </div>

                                            <button type="submit" class="btn btn-primary" name="btn" value="saveAndNew">
                                                <i class="la la-check-square-o"></i> {{ __('New') }}
                                            </button>

                                        </div>



                                            @if ($permissoin)
                                                <div class="form-actions">
                                                    
                                                    <a href="{{ route('admin.pricelist') }}" class="btn btn-warning">
                                                        <i class="la la-check-square-o"></i> تراجع
                                                    </a>
                                                    <button type="submit" class="btn btn-primary">
                                                        <i class="la la-check-square-o"></i>  تحديث
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
