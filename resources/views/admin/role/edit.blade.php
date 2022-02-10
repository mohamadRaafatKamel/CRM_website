@extends('layouts.admin')
@section('title','تعديل')
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
                                <li class="breadcrumb-item active">تعديل الصلاحيات
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
                                        <form class="form" action="{{route('admin.role.update',$role -> id)}}" method="POST"
                                              enctype="multipart/form-data">
                                            @csrf

                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> البيانات   </h4>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="projectinput1"> الاسم </label>
                                                            <input type="text" value="{{ $role->name }}" id="name"
                                                                   class="form-control"
                                                                   placeholder=" الاسم" required
                                                                   name="name">
                                                            @error('name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Request') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="request_all" name="role_info[]"
                                                                   id="request_all"
                                                                   @if(isset($myRoleInfo['request_all']) and $myRoleInfo['request_all'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="request_all"
                                                                   class="card-title ml-1">{{ __('All Request') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="request_emergency" name="role_info[]"
                                                                   id="request_emergency"
                                                                   @if(isset($myRoleInfo['request_emergency']) and $myRoleInfo['request_emergency'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="request_emergency"
                                                                   class="card-title ml-1">{{ __('All Emergency') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="request_out" name="role_info[]"
                                                                   id="request_out"
                                                                   @if(isset($myRoleInfo['request_out']) and $myRoleInfo['request_out'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="request_out"
                                                                   class="card-title ml-1">{{ __('All OutPatient') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="request_in" name="role_info[]"
                                                                   id="request_in"
                                                                   @if(isset($myRoleInfo['request_in']) and $myRoleInfo['request_in'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="request_in"
                                                                   class="card-title ml-1">{{ __('All InPatient') }} </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Users') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="user_patent" name="role_info[]"
                                                                   id="user_patent"
                                                                   @if(isset($myRoleInfo['request_in']) and $myRoleInfo['request_in'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="user_patent"
                                                                   class="card-title ml-1">{{ __('All Patent') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="user_doctor" name="role_info[]"
                                                                   id="user_doctor"
                                                                   @if(isset($myRoleInfo['user_doctor']) and $myRoleInfo['user_doctor'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="user_doctor"
                                                                   class="card-title ml-1">{{ __('All Doctor') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="user_partner" name="role_info[]"
                                                                   id="user_partner"
                                                                   @if(isset($myRoleInfo['user_partner']) and $myRoleInfo['user_partner'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="user_partner"
                                                                   class="card-title ml-1">{{ __('All Partner') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="user_nurse" name="role_info[]"
                                                                   id="user_nurse"
                                                                   @if(isset($myRoleInfo['user_nurse']) and $myRoleInfo['user_nurse'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="user_nurse"
                                                                   class="card-title ml-1">{{ __('All Nurse') }} </label>
                                                        </div>
                                                    </div>
                                                </div>


                                                <h4>التخصصات</h4>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="specialty_view" name="role_info[]"
                                                                   id="specialty_view"
                                                                   @if(isset($myRoleInfo['specialty_view']) and $myRoleInfo['specialty_view'] == '1')
                                                                       checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="specialty_view"
                                                                   class="card-title ml-1">عرض </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="specialty_cr" name="role_info[]"
                                                                   id="specialty_cr"
                                                                   @if(isset($myRoleInfo['specialty_cr']) and $myRoleInfo['specialty_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="specialty_cr"
                                                                   class="card-title ml-1">انشاء </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="specialty_idt" name="role_info[]"
                                                                   id="specialty_idt"
                                                                   @if(isset($myRoleInfo['specialty_idt']) and $myRoleInfo['specialty_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="specialty_idt"
                                                                   class="card-title ml-1">تعديل </label>
                                                        </div>
                                                    </div>

                                                </div>

                                                <h4>{{ __('Serves') }}</h4>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="serves_view" name="role_info[]"
                                                                   id="serves_view"
                                                                   @if(isset($myRoleInfo['serves_view']) and $myRoleInfo['serves_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="serves_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="serves_cr" name="role_info[]"
                                                                   id="serves_cr"
                                                                   @if(isset($myRoleInfo['serves_cr']) and $myRoleInfo['serves_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="serves_cr"
                                                                   class="card-title ml-1">{{ __('Create') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="serves_idt" name="role_info[]"
                                                                   id="serves_idt"
                                                                   @if(isset($myRoleInfo['serves_idt']) and $myRoleInfo['serves_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="serves_idt"
                                                                   class="card-title ml-1">{{ __('Edit') }} </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Survey') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="survey_view" name="role_info[]"
                                                                   id="survey_view"
                                                                   @if(isset($myRoleInfo['survey_view']) and $myRoleInfo['survey_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="survey_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    
                                                </div>

                                                <label><strong> {{ __('Company') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="company_view" name="role_info[]"
                                                                   id="company_view"
                                                                   @if(isset($myRoleInfo['company_view']) and $myRoleInfo['company_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="company_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="company_cr" name="role_info[]"
                                                                   id="company_cr"
                                                                   @if(isset($myRoleInfo['company_cr']) and $myRoleInfo['company_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="company_cr"
                                                                   class="card-title ml-1">{{ __('Create') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="company_idt" name="role_info[]"
                                                                   id="company_idt"
                                                                   @if(isset($myRoleInfo['company_idt']) and $myRoleInfo['company_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="company_idt"
                                                                   class="card-title ml-1">{{ __('Edit') }} </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Package') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="package_view" name="role_info[]"
                                                                   id="package_view"
                                                                   @if(isset($myRoleInfo['package_view']) and $myRoleInfo['package_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="package_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="package_cr" name="role_info[]"
                                                                   id="package_cr"
                                                                   @if(isset($myRoleInfo['package_cr']) and $myRoleInfo['package_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="package_cr"
                                                                   class="card-title ml-1">{{ __('Create') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="package_idt" name="role_info[]"
                                                                   id="package_idt"
                                                                   @if(isset($myRoleInfo['package_idt']) and $myRoleInfo['package_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="package_idt"
                                                                   class="card-title ml-1">{{ __('Edit') }} </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Referral') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="referral_view" name="role_info[]"
                                                                   id="referral_view"
                                                                   @if(isset($myRoleInfo['referral_view']) and $myRoleInfo['referral_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="referral_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="referral_cr" name="role_info[]"
                                                                   id="referral_cr"
                                                                   @if(isset($myRoleInfo['referral_cr']) and $myRoleInfo['referral_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="referral_cr"
                                                                   class="card-title ml-1">{{ __('Create') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="referral_idt" name="role_info[]"
                                                                   id="referral_idt"
                                                                   @if(isset($myRoleInfo['referral_idt']) and $myRoleInfo['referral_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="referral_idt"
                                                                   class="card-title ml-1">{{ __('Edit') }} </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Admin') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="admin_view" name="role_info[]"
                                                                   id="admin_view"
                                                                   @if(isset($myRoleInfo['admin_view']) and $myRoleInfo['admin_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="admin_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="admin_cr" name="role_info[]"
                                                                   id="admin_cr"
                                                                   @if(isset($myRoleInfo['admin_cr']) and $myRoleInfo['admin_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="admin_cr"
                                                                   class="card-title ml-1">{{ __('Create') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="admin_idt" name="role_info[]"
                                                                   id="admin_idt"
                                                                   @if(isset($myRoleInfo['admin_idt']) and $myRoleInfo['admin_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="admin_idt"
                                                                   class="card-title ml-1">{{ __('Edit') }} </label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <label><strong> {{ __('Permission') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="role_view" name="role_info[]"
                                                                   id="role_view"
                                                                   @if(isset($myRoleInfo['role_view']) and $myRoleInfo['role_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="role_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="role_cr" name="role_info[]"
                                                                   id="role_cr"
                                                                   @if(isset($myRoleInfo['role_cr']) and $myRoleInfo['role_cr'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="role_cr"
                                                                   class="card-title ml-1">{{ __('Create') }} </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="role_idt" name="role_info[]"
                                                                   id="role_idt"
                                                                   @if(isset($myRoleInfo['role_idt']) and $myRoleInfo['role_idt'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="role_idt"
                                                                   class="card-title ml-1">{{ __('Edit') }} </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <label><strong> {{ __('Setting') }} </strong></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="setting_view" name="role_info[]"
                                                                   id="setting_view"
                                                                   @if(isset($myRoleInfo['setting_view']) and $myRoleInfo['setting_view'] == 1)
                                                                   checked
                                                                   @endif
                                                                   class="switchery" data-color="success"/>
                                                            <label for="setting_view"
                                                                   class="card-title ml-1">{{ __('View') }} </label>
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
                                                    <i class="la la-check-square-o"></i>  تحديث
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
