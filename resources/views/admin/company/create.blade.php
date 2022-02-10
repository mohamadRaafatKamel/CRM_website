@extends('layouts.admin')
@section('title','company')
@section('company_cr','')
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
                                <li class="breadcrumb-item"><a href="{{route('admin.company')}}">  company </a>
                                </li>
                                <li class="breadcrumb-item active"> Add company
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
                                    <h4 class="card-title" id="basic-layout-form"> Add company </h4>
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
                                        <form class="form" action="{{route('admin.company.store')}}" method="POST"
                                              enctype="multipart/form-data">
                                            @csrf

                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> البيانات   </h4>

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="org_name"> الاسم  </label>
                                                            <input type="text"  id="org_name"
                                                                   class="form-control" required
                                                                   placeholder="الاسم "
                                                                   name="org_name">
                                                            @error('org_name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email"> email </label>
                                                            <input type="email"  id="email"
                                                                   class="form-control"
                                                                   placeholder="email  "
                                                                   name="email">
                                                            @error('email')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone"> phone </label>
                                                            <input type="text"  id="phone"
                                                                   class="form-control"
                                                                   placeholder="phone"
                                                                   name="phone">
                                                            @error('phone')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="website"> website </label>
                                                            <input type="text"  id="website"
                                                                   class="form-control"
                                                                   placeholder="website"
                                                                   name="website">
                                                            @error('website')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="contact_person_name"> contact person name </label>
                                                            <input type="contact_person_name"  id="contact_person_name"
                                                                   class="form-control"
                                                                   placeholder="contact_person_name"
                                                                   name="contact_person_name">
                                                            @error('contact_person_name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="registration_num"> registration Number </label>
                                                            <input type="registration_num"  id="registration_num"
                                                                   class="form-control"
                                                                   placeholder="registration_num"
                                                                   name="registration_num">
                                                            @error('registration_num')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="tax_certificate_num"> tax certificate Number </label>
                                                            <input type="tax_certificate_num"  id="tax_certificate_num"
                                                                   class="form-control"
                                                                   placeholder="tax_certificate_num"
                                                                   name="tax_certificate_num">
                                                            @error('tax_certificate_num')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="type"> {{ __('Type') }} </label>
                                                            <select name="type" class="form-control" id="type" required>
                                                                <option value="1">تامين</option>
                                                                <option value="9">{{ __("other") }}</option>
                                                            </select>
                                                            @error('type')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="pay"> {{ __('Pay') }} </label>
                                                            <select name="pay" class="form-control" id="pay" required>
                                                                <option value="1">{{ __('later') }}</option>
                                                                <option value="2">{{ __("cash") }}</option>
                                                            </select>
                                                            @error('pay')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="description"> وصف </label>
                                                            <textarea id="description" class="form-control" placeholder="وصف" 
                                                                name="description"></textarea>
                                                            @error('description')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                                </div>

                                            </div>


                                            <div class="form-actions">
                                                
                                                <a href="{{ route('admin.company') }}" class="btn btn-warning">
                                                    <i class="la la-check-square-o"></i> تراجع
                                                </a>
                                                
                                                <button type="submit" class="btn btn-primary" name="btn" value="saveAndNew">
                                                    <i class="la la-check-square-o"></i> حفظ و جديد
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
