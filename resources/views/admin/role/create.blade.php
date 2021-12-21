@extends('layouts.admin')
@section('title','الصلاحيات')
@section('content')

    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">الرئيسية </a>
                                </li>
                                <li class="breadcrumb-item"><a href="{{route('admin.role')}}"> الصلاحيات </a>
                                </li>
                                <li class="breadcrumb-item active">إضافة الصلاحيات
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
                                    <h4 class="card-title" id="basic-layout-form"> إضافة الصلاحيات </h4>
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
                                        <form class="form" action="{{route('admin.role.store')}}" method="POST"
                                              enctype="multipart/form-data">
                                            @csrf

                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> البيانات   </h4>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="projectinput1"> الاسم </label>
                                                            <input type="text" value="" id="name"
                                                                   class="form-control"
                                                                   placeholder=" الاسم" required
                                                                   name="name">
                                                            @error('name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div>

                                                <h4>التخصصات</h4>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="specialty_view" name="role_info[]"
                                                                   id="specialty_view"
                                                                   class="switchery" data-color="success"/>
                                                            <label for="specialty_view"
                                                                   class="card-title ml-1">عرض </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="specialty_cr" name="role_info[]"
                                                                   id="specialty_cr"
                                                                   class="switchery" data-color="success"/>
                                                            <label for="specialty_cr"
                                                                   class="card-title ml-1">انشاء </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="specialty_idt" name="role_info[]"
                                                                   id="specialty_idt"
                                                                   class="switchery" data-color="success"/>
                                                            <label for="specialty_idt"
                                                                   class="card-title ml-1">تعديل </label>
                                                        </div>
                                                    </div>

                                                </div>




                                            </div>

                                            <div class="form-actions">
                                                <button type="button" class="btn btn-warning mr-1"
                                                        onclick="history.back();">
                                                    <i class="ft-x"></i> تراجع
                                                </button>
                                                <button type="submit" class="btn btn-primary">
                                                    <i class="la la-check-square-o"></i> حفظ
                                                </button>
                                            </div>
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
