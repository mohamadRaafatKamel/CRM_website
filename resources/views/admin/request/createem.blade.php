@extends('layouts.admin')
@section('title','Request EM')
@section('request_emergency','')
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
                                <li class="breadcrumb-item"><a href="{{route('admin.request.emergency')}}">{{ __('Emergency') }}</a>
                                </li>
                                <li class="breadcrumb-item active">إضافة
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">

                {{-- newwwwwwwwwwwwwwwwwwww --}}

                
<!-- Basic form layout section start -->
<section id="horizontal-form-layouts">
    <div class="row match-height">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title" id="basic-layout-form"></h4>
                    <a class="heading-elements-toggle"><i
                            class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                    </div>
                </div>
                @include('admin.include.alerts.success')
                @include('admin.include.alerts.errors')
                <div class="card-content collapse show">
                    <div class="card-body">
                        @if(isset($myorder->status_cc) && $myorder->status_cc != 4)
                            <form class="form form-horizontal" 
                            @if (isset($myorder->id) && $myorder->id != 0)
                            action="{{route('admin.request.update.em', $myorder -> id)}}" 
                            @else
                            action="{{route('admin.request.store.em')}}" 
                            @endif
                            method="POST" enctype="multipart/form-data">
                        @else
                        <form class="form form-horizontal">
                        @endif
                            @csrf

                            <div class="form-body">
                                <h4 class="form-section"><i class="ft-user"></i> البيانات الشخصية   </h4>

                            
                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="user_id">
                                        {{ __('Full Name') }}
                                    </label>
                                    <div class="col-md-6">
                                        <input type="text" id="fullname" readonly
                                                class="form-control" 
                                                @if(isset($myorder->fullname))
                                                    value="{{ $myorder->fullname }}"
                                                @else
                                                    value="{{ old('fullname') }}"
                                                @endif
                                                placeholder="{{ __('Full Name') }}" >
                                        @error('fullname')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="name_caregiver">{{ __('Name Of Care Giver') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="name_caregiver" 
                                                class="form-control"
                                                @if(isset($myorder->name_caregiver))
                                                    value="{{ $myorder->name_caregiver }}"
                                                @endif
                                                placeholder="{{ __('Name Of Care Giver') }}"
                                                name="name_caregiver">
                                        @error('name_caregiver')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="age">{{ __('Age') }}</label>
                                    <div class="col-md-2">
                                        <input type="number" id="age" 
                                            class="form-control"
                                            @if(isset($myorder->age))
                                                value="{{ $myorder->age }}"
                                                @else
                                                value="{{ old('age') }}"
                                            @endif
                                            placeholder="{{ __('Age') }}"
                                            name="age">
                                        @error('age')
                                            <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                    <label class="col-md-2 label-control" for="age">{{ __('Gender') }}</label>
                                    <div class="col-md-2">
                                        <select name="gender" id="gender"
                                                class="form-control @error('gender') is-invalid @enderror">
                                            <option value="">{{ __('Gender') }}</option>
                                            @if(isset($myorder -> gender))
                                            <option value="1"
                                                    @if($myorder -> gender == "1") selected @endif >{{ __('Male') }}</option>
                                            <option value="2"
                                                    @if($myorder -> gender == "2") selected @endif >{{ __('Female') }}</option>
                                            @else
                                                <option value="1" @if(old('gender') == "1") selected @endif >{{ __('Male') }}</option>
                                                <option value="2" @if(old('gender') == "2") selected @endif >{{ __('Female') }}</option>
                                            @endif
                                        </select>
                                        @error('gender')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="medical_type_id">{{ __('Medical Type') }}</label>
                                    <div class="col-md-6">
                                        <select class="select2 form-control" name="medical_type_id" id="medical_type_id" >
                                            <option value="">-- {{ __('Medical Type') }} --</option>
                                            @foreach($medicalTypes as $medicalType)
                                                <option value="{{ $medicalType->id }}"
                                                        @if(isset($myorder->medical_type_id))
                                                            @if($myorder->medical_type_id == $medicalType->id) selected @endif 
                                                        @endif 
                                                        @if(old('medical_type_id') == $medicalType->id) selected @endif >
                                                    {{ $medicalType->getMyName()}}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('medical_type_id')
                                            <span class="text-danger">{{$message}}</span>--}}
                                        @enderror
                                    </div>
                                </div>



                                <h4 class="form-section"><i class="ft-phone"></i> بيانات التواصل</h4>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="phone">{{ __('Phone') }} <span style="color: #ff4961;">*</span></label>
                                    <div class="col-md-2">
                                        <input type="text" id="phone" readonly
                                            class="form-control"
                                            @if(isset($myorder->phone))
                                            value="{{ $myorder->phone }}"
                                            @else
                                                value="{{ old('phone') }}"
                                            @endif
                                            placeholder="{{ __('Phone') }}" >
                                            @error('phone')
                                            <span class="text-danger">{{$message}}</span>
                                            @enderror
                                    </div>
                                    <div class="col-md-2">
                                        <input type="checkbox"  value="1" readonly
                                            id="whatapp" class="switchery0" data-color="success"
                                            @if (isset($myorder -> whatapp))
                                            @if($myorder -> whatapp  == 1 ) checked @endif
                                            @endif
                                            @if(old('whatapp') == 1) checked @endif />
                                        <label for="whatapp" class="card-title ml-1"> {{ __('Whatapp') }} </label>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="phone2">{{ __('Phone') }} 2</label>
                                    <div class="col-md-2">
                                        <input type="text" id="phone2"
                                            class="form-control"
                                            @if(isset($myorder->phone2))
                                            value="{{ $myorder->phone2 }}"
                                            @else
                                                value="{{ old('phone2') }}"
                                            @endif
                                            placeholder="{{ __('Phone') }}"
                                            name="phone2">
                                            @error('phone2')
                                                <span class="text-danger">{{$message}}</span>
                                            @enderror
                                    </div>
                                    <div class="col-md-2">
                                        <input type="checkbox"  value="1" name="whatapp2"
                                            id="whatapp2" class="switchery0" data-color="success"
                                            @if (isset($myorder -> whatapp2))
                                            @if($myorder -> whatapp2  == 1 ) checked @endif
                                            @endif 
                                            @if(old('whatapp2') == 1) checked @endif />
                                        <label for="whatapp" class="card-title ml-1"> {{ __('Whatapp') }} </label>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="whatsApp_group">{{ __('Name of whatsApp Group') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="whatsApp_group"
                                                class="form-control"
                                                @if(isset($myorder->whatsApp_group))
                                                value="{{ $myorder->whatsApp_group }}"
                                                @endif
                                                placeholder="{{ __('Name of whatsApp Group') }}"
                                                name="whatsApp_group">
                                        @error('whatsApp_group')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="governorate_id">{{ __('Governorate') }}</label>
                                    <div class="col-md-6">
                                        <select name="governorate_id" id="governorate_id" 
                                                class="select2 form-control ">
                                            <option></option>
                                            @if($governorates)
                                                @foreach($governorates as $governorate)
                                                    <option value="{{$governorate->id}}"
                                                            @if(isset($myorder->governorate_id))
                                                                @if($myorder->governorate_id == $governorate->id) selected @endif 
                                                            @endif
                                                            @if(old('governorate_id') == $governorate->id) selected @endif >
                                                        @if(app()->getLocale() == 'ar')
                                                            {{$governorate->governorate_name_ar}}
                                                        @else
                                                            {{$governorate->governorate_name_en}}
                                                        @endif
                                                    </option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="city_id">{{ __('Area') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" 
                                                @if(isset($myorder->city_id))
                                                value="{{$myorder->city_id }}" 
                                                @endif 
                                                id="city_id"
                                                class="form-control"
                                                placeholder="{{ __('Area') }}"
                                                name="city_id">
                                        @error('city_id')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="land_mark">{{ __('Land Mark') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="land_mark" 
                                                class="form-control"
                                                @if(isset($myorder->land_mark))
                                                value="{{ $myorder->land_mark }}"
                                                @else
                                                value="{{ old('land_mark') }}"
                                                @endif
                                                placeholder="{{ __('Land Mark') }}"
                                                name="land_mark">
                                        @error('land_mark')
                                            <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="floor">{{ __('Floor') }}</label>
                                    <div class="col-md-2">
                                        <input type="text" id="floor" 
                                                class="form-control"
                                                @if(isset($myorder->floor))
                                                value="{{ $myorder->floor }}"
                                                @else
                                                value="{{ old('floor') }}"
                                                @endif
                                                placeholder="{{ __('Floor') }}"
                                                name="floor">
                                        @error('floor')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                    <label class="col-md-2 label-control" for="apartment">{{ __('Apartment') }}</label>
                                    <div class="col-md-2">
                                        <input type="text" id="apartment" 
                                                class="form-control"
                                                @if(isset($myorder->apartment))
                                                value="{{ $myorder->apartment }}"
                                                @else
                                                value="{{ old('apartment') }}"
                                                @endif
                                                placeholder="{{ __('Apartment') }}"
                                                name="apartment">
                                        @error('apartment')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="adress">{{ __('Address') }} CC</label>
                                    <div class="col-md-6">
                                        <input type="text" id="adress"
                                               class="form-control"
                                               @if(isset($myorder->adress))
                                               value="{{ $myorder->adress }}"
                                               @endif
                                               placeholder="{{ __('Address') }}"
                                               readonly>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="adress2">{{ __('Address') }} </label>
                                    <div class="col-md-6">
                                        <input type="text" id="adress2"
                                               class="form-control"
                                               @if(isset($myorder->adress2))
                                                value="{{ $myorder->adress2 }}"
                                               @endif
                                               placeholder="{{ __('Address') }}"
                                               name="adress2">
                                        @error('adress2')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="location">{{ __('Location') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="location"
                                                class="form-control"
                                                @if(isset($myorder->location))
                                                value="{{ $myorder->location }}"
                                                @endif
                                                placeholder="{{ __('Location') }}"
                                                name="location">
                                        @error('location')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <h4 class="form-section"><i class="ft-paperclip"></i> بيانات الخدمه</h4>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="specialty_id">{{ __('Specialty') }}</label>
                                    <div class="col-md-6">
                                        <select class="select2 form-control" id="specialty_id" name="specialty_id">
                                            <option value="">-- {{ __('Select') }} {{ __('Specialty') }} -- </option>
                                            {{-- <option value="2">222</option> --}}
                                            @foreach($specialtys as $specialty)
                                                <option value="{{ $specialty->id }}"
                                                    @if(isset($myorder->specialty_id))
                                                        @if($myorder->specialty_id == $specialty->id) selected @endif
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
                                    <label class="col-md-2 label-control" for="type">{{ __('Out/In') }} <span style="color: #ff4961;">*</span></label>
                                    <div class="col-md-6">
                                        <select name="type" id="type" required
                                                class="form-control @error('type') is-invalid @enderror">
                                            @if(isset($myorder -> type))
                                            <option value="1"
                                                    @if($myorder -> type == "1") selected @endif
                                                    @if(old('type') == "1") selected @endif >{{ __('Emergency Call') }}</option>
                                            <option value="2"
                                                    @if($myorder -> type == "2") selected @endif
                                                    @if(old('type') == "2") selected @endif >{{ __('OutPatient') }}</option>
                                            <option value="3"
                                                    @if($myorder -> type == "3") selected @endif
                                                    @if(old('type') == "3") selected @endif >{{ __('InPatient') }}</option>
                                            @else
                                                <option value="1" @if (old('type') == "1") selected @endif>{{ __('Emergency Call') }}</option>
                                                <option value="2" @if (old('type') == "2") selected @endif>{{ __('Out Patient') }}</option>
                                                <option value="3" @if (old('type') == "3") selected @endif>{{ __('In Patient') }}</option>
                                            @endif
                                        </select>
                                        @error('type')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="referral_id">{{ __('Referral') }}</label>
                                    <div class="col-md-6">
                                        <select class="select2 form-control" id="referral_id" disabled multiple>
                                            @foreach($referrals as $referral)
                                                <option value="{{ $referral['id'] }}"
                                                    @if (isset($usersReferrals))
                                                        @if(in_array($referral['id'], $usersReferrals)) selected @endif
                                                    @endif
                                                    @if(old('referral_id') == $referral['id']) selected @endif
                                                >{{ $referral['name']}}</option>
                                            @endforeach
                                        </select>
                                        @error('referral_id')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="corporate_id">{{ __('Corporate') }}</label>
                                    <div class="col-md-6">
                                        <select class="select2 form-control" id="corporate_id" name="corporate_id">
                                            <option value=""> -- {{ __('Select') }}  {{ __('Corporate') }} --</option>
                                            @foreach($companys as $company)
                                                <option value="{{ $company->id }}"
                                                    @if(isset($myorder->corporate_id))
                                                        @if($myorder->corporate_id == $company->id) selected @endif
                                                    @endif
                                                    @if(old('corporate_id') == $company->id) selected @endif
                                                >{{ $company->org_name}}</option>
                                            @endforeach
                                        </select>
                                        @error('corporate_id')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="package_id">{{ __('Package') }}</label>
                                    <div class="col-md-6">
                                        <select class="select2 form-control" id="package_id" name="package_id">
                                            <option value="">-- {{ __('Select') }}  {{ __('Package') }} --</option>
                                            @foreach($packages as $package)
                                                <option value="{{ $package->id }}"
                                                    @if(isset($myorder->package_id))
                                                        @if($myorder->package_id == $package->id) selected @endif
                                                    @endif
                                                    @if(old('package_id') == $package->id) selected @endif
                                                >{{ $package->name_ar}}</option>
                                            @endforeach
                                        </select>
                                        @error('package_id')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="physician">{{ __('Physician') }}</label>
                                    <div class="col-md-4">
                                        <select class="select2 form-control" id="physician" name="physician">
                                            <option value="">-- {{ __('Select') }}  {{ __('Physician') }} --</option>
                                            @foreach($physicians as $physician)
                                                <option value="{{ $physician->id }}"
                                                    @if(isset($myorder->physician))
                                                        @if($myorder->physician == $physician->id) selected @endif
                                                    @endif
                                                    @if(old('physician') == $physician->id) selected @endif
                                                >{{ $physician->name}}</option>
                                            @endforeach
                                        </select>
                                        @error('physician')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="physician" 
                                                class="form-control"
                                                placeholder="{{ __('Add') }} {{ __('Physician') }}"
                                                name="physician_new">
                                        @error('physician_new')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="co">{{ __('C/O') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="co"
                                                class="form-control"
                                                @if(isset($myorder->co))
                                                value="{{ $myorder->co }}"
                                                @else
                                                value="{{ old('co') }}"
                                                @endif
                                                placeholder="{{ __('C/O') }}"
                                                name="co">
                                        @error('co')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="history">{{ __('History') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="history"
                                                class="form-control"
                                                @if(isset($myorder->history))
                                                value="{{ $myorder->history }}"
                                                @else
                                                value="{{ old('history') }}"
                                                @endif
                                                placeholder="{{ __('History') }}"
                                                name="history">
                                        @error('history')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="diagnose">{{ __('Diagnose') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="diagnose"
                                                class="form-control"
                                                @if(isset($myorder->diagnose))
                                                value="{{ $myorder->diagnose }}"
                                                @else
                                                value="{{ old('diagnose') }}"
                                                @endif
                                                placeholder="{{ __('diagnose') }}"
                                                name="diagnose">
                                        @error('diagnose')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="code_zone_patient_id">{{ __('Code Zone Patient ID') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="code_zone_patient_id" class="form-control"
                                                @if(isset($myorder->code_zone_patient_id))
                                                value="{{ $myorder->code_zone_patient_id }}"
                                                @else
                                                value="{{ old('code_zone_patient_id') }}"
                                                @endif
                                                placeholder="{{ __('Code Zone Patient ID') }}"
                                                name="code_zone_patient_id">
                                        @error('code_zone_patient_id')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="bed_number">{{ __('Bed Number') }}</label>
                                    <div class="col-md-6">
                                        <input type="text" id="bed_number"
                                                class="form-control"
                                                @if(isset($myorder->bed_number))
                                                value="{{ $myorder->bed_number }}"
                                                @endif
                                                placeholder="{{ __('Bed Number') }}"
                                                name="bed_number">
                                        @error('bed_number')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="symptoms">{{ __('Symptoms') }}</label>
                                    <div class="col-md-6">
                                        <textarea id="symptoms" placeholder="{{ __('Symptoms') }}" 
                                                class="form-control" name="symptoms"
                                                >@if(isset($myorder->symptoms)){{ $myorder->symptoms }}@else {{ old('symptoms') }} @endif</textarea>
                                        @error('symptoms')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="reason_cancel">{{ __('Cancellation reasone') }}</label>
                                    <div class="col-md-6">
                                        <textarea id="reason_cancel" placeholder="{{ __('Cancellation reasone') }}" 
                                                class="form-control" name="reason_cancel"
                                                >@if(isset($myorder->reason_cancel)){{ $myorder->reason_cancel }}@endif</textarea>
                                        @error('reason_cancel')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="schedule_date">{{ __('Schedule') }}</label>
                                    <div class="col-md-6">
                                        <input type="date" id="schedule_date" class="form-control"
                                               @if(isset($myorder->schedule_date))
                                                    value="{{ $myorder->schedule_date }}"
                                               @endif
                                               name = "schedule_date" value ="{{date('Y-m-d')}}"
                                               min="{{date('Y-m-d')}}" >
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="end_service_date">{{ __('End of Service Date') }}</label>
                                    <div class="col-md-6">
                                        <input type="date" id="end_service_date" class="form-control"
                                               @if(isset($myorder->end_service_date))
                                                    value="{{ $myorder->end_service_date }}"
                                               @endif
                                               @if(isset($myorder->schedule_date))
                                                    min="{{ $myorder->schedule_date }}"
                                               @endif
                                               name= "end_service_date"
                                               placeholder="{{ __('End of Service Date') }}" >
                                    </div>
                                </div>

                                <h4 class="form-section"><i class="ft-paperclip"></i> بيانات التكلفه</h4>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="expectation_cost">{{ __('Expectation Cost') }}</label>
                                    <div class="col-md-6">
                                        <input type="number" id="expectation_cost" class="form-control"
                                                @if(isset($myorder->expectation_cost))
                                                value="{{ $myorder->expectation_cost }}"
                                                @else
                                                value="{{ old('expectation_cost') }}"
                                                @endif
                                                placeholder="{{ __('Expectation Cost') }}"
                                                name="expectation_cost">
                                        @error('expectation_cost')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2 label-control" for="real_cost">{{ __('Real Cost') }}</label>
                                    <div class="col-md-6">
                                        <input type="number" id="real_cost" class="form-control"
                                                @if(isset($myorder->real_cost))
                                                value="{{ $myorder->real_cost }}"
                                                @else
                                                value="{{ old('real_cost') }}"
                                                @endif
                                                placeholder="{{ __('Real Cost') }}"
                                                name="real_cost">
                                        @error('real_cost')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </div>
                                </div>


                            </div>

                            @if(isset($myorder->status_cc) && $myorder->status_cc != 4)
                                <div class="form-actions">
                                    @if (isset($myorder->id) && $myorder->id != 0)
                                        <button type="submit" class="btn btn-primary" name="embtn" value="1">
                                            <i class="la la-check-square-o"></i> {{ __('Update') }}
                                        </button>
                                    @else
                                        <button type="submit" class="btn btn-primary" name="embtn" value="1">
                                            <i class="la la-check-square-o"></i> {{ __('Save') }}
                                        </button>
                                    @endif
                                    
                                </div>
                            @endif
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- // Basic form layout section end -->


                <!-- Action section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form"><b> <i class="ft-aperture"></i> {{ __('Actions') }} </b> </h4>
                                    <a class="heading-elements-toggle"><i
                                            class="la la-ellipsis-v font-medium-3"></i></a>
                                    <div class="heading-elements">
                                        <ul class="list-inline mb-0">
                                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-content collapse show">
                                    <div class="card-body">

                                            <div class="form-body">

                                                <div class="row">

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="service_id">{{ __('Service') }}</label>
                                                            <select class="select2 form-control" name="service_id" id="service_id"> 
                                                                <option value="">-- {{ __('Select') }} {{ __('Service') }} --</option>
                                                                @foreach($serves as $serve)
                                                                    <option value="{{ $serve->id }}"> [ {{ $serve->price}} ] {{ $serve->name_ar}}</option>
                                                                @endforeach
                                                            </select>
                                                            @error('service_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label for="action_price"> {{ __('Price') }} </label>
                                                            <input type="number" step="0.01" id="action_price" 
                                                                   class="form-control"
                                                                   placeholder="{{ __('Price') }} " readonly>
                                                            @error('price')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label for="state"> {{ __('Done') }} </label>
                                                            <select name="state" id="state" required
                                                                    class="form-control @error('state') is-invalid @enderror">
                                                                <option value="0" >{{ __('No') }}</option>
                                                                <option value="1" >{{ __('Yes') }}</option>
                                                            </select>
                                                            @error('state')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label for="action_date"> {{ __('Date') }} </label>
                                                            <input type="date" id="action_date"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Date') }} "
                                                                   {{-- value="{{ $datenaw }}" --}}
                                                                   name="action_date">
                                                            @error('action_date')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                                   
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label style=" height: 49px;"> </label>
                                                            <button type="submit" class="btn btn-primary" name="btn" value="saveAndNew">
                                                                <i class="la la-plus"></i>
                                                            </button>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-1">
                                                        <div class="form-group">
                                                            <label style=" height: 49px;"> </label>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                    @if (isset($actions))
                                                    @if (count($actions) > 0)
                                                    <div class="row">
                                                        <table class="table table-striped table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th></th>
                                                                    <th>{{ __('Service') }}</th>
                                                                    <th>{{ __('Price') }}</th>
                                                                    <th>{{ __('Take It') }}</th>
                                                                    <th>{{ __('Date') }}</th>
                                                                    <th> وقت الادخال</th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            @foreach ($actions as $action)
                                                                <tr>
                                                                    <th><input type="checkbox" value="{{ $action->id }}" name="actionbox[]" /></th>
                                                                    <td>{{ \App\Models\Service::getName($action->service_id)  }}</td>
                                                                    <td>{{ $action->price }}</td>
                                                                    <td>{{ $action->getState($action->state) }}</td>
                                                                    <td>{{ $action->action_date }}</td>
                                                                    <td>{{ $action->created_at }}</td>
                                                                    <td>
                                                                        <a href="{{route('admin.action.delete',$action->id)}}" class="btn btn-danger" ><i class="ft-trash-2"></i></a>
                                                                    </td>
                                                                </tr>
                                                            @endforeach
                                                            </tbody>
                                                        </table>

                                                        <div class="form-actions">
                                               
                                                            <button type="submit" name="actionbtn" value="takeit" class="btn btn-success">
                                                                <i class="la la-check-square-o"></i> {{ __('Take It') }}
                                                            </button>
                                                            <button type="submit" name="actionbtn" value="nottakeit" class="btn btn-warning">
                                                                <i class="la la-check-square-o"></i> {{ __('Not Take It') }}
                                                            </button>
                                                            <button type="submit" name="actionbtn" value="delete" class="btn btn-danger">
                                                                <i class="ft-trash-2"></i> {{ __('Delete') }}
                                                            </button>
                
                                                        </div>

                                                    </div>
                                                    @endif
                                                    @endif
                                                
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                {{-- section Action End --}}


                {{-- @if (isset($myorder->id) && $myorder->id != 0) --}}
                <!-- Basic form layout section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form"><b> <i class="ft-phone"></i> {{ __('Calls') }} </b> </h4>
                                    <a class="heading-elements-toggle"><i
                                            class="la la-ellipsis-v font-medium-3"></i></a>
                                    <div class="heading-elements">
                                        <ul class="list-inline mb-0">
                                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-content collapse show">
                                    <div class="card-body">

                                            <div class="form-body">
                                                
                                                

                                                <div class="row">

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label for="time"> {{ __('Time') }} </label>
                                                            <input type="datetime-local" id="time"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Time') }} "
                                                                   {{-- value="{{ $datenaw }}" --}}
                                                                   name="time">
                                                            @error('time')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="Note"> {{ __('Note') }} </label>
                                                            <textarea id="note" class="form-control" placeholder=" {{ __('Note') }}" 
                                                                name="note"></textarea>
                                                            @error('note')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    @if(isset($myorder->status_cc) && $myorder->status_cc != 4)
                                                        <div class="col-md-2">
                                                            <div class="form-group">
                                                                <label style=" height: 49px;"> </label>
                                                                <button type="submit" class="btn btn-primary" name="btn" value="saveAndNew">
                                                                    <i class="la la-plus"></i>
                                                                </button>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-1">
                                                            <div class="form-group">
                                                                <label style=" height: 49px;"> </label>
                                                                
                                                            </div>
                                                        </div>
                                                    @endif
                                                </div>
                                                
                                                    @if (isset($calls))
                                                    @if (count($calls) > 0)
                                                    <div class="row">
                                                        <table class="table table-striped table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th> الاجنت</th>
                                                                    <th>القسم</th>
                                                                    <th> وقت المكالمه</th>
                                                                    <th> ملحوظة</th>
                                                                    <th> وقت الادخال</th>
                                                                    <th> </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            @foreach ($calls as $call)
                                                                <tr>
                                                                    <td>{{ \App\Models\Admin::getAdminNamebyId($call->admin_id)  }}</td>
                                                                    <td>{{ \App\Models\RequestCall::getDepartment($call->department) }}</td>
                                                                    <td>{{ $call->call_time }}</td>
                                                                    <td>{{ $call->note }}</td>
                                                                    <td>{{ $call->created_at }}</td>
                                                                    <td>
                                                                        <a href="{{route('admin.call.delete',$call->id)}}" class="btn btn-danger" ><i class="ft-trash-2"></i></a>
                                                                    </td>
                                                                </tr>
                                                            @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    @endif
                                                    @endif
                                                
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                {{-- @endif --}}

                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <a class="heading-elements-toggle"><i
                                            class="la la-ellipsis-v font-medium-3"></i></a>
                                    <div class="heading-elements">
                                        <ul class="list-inline mb-0">
                                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-content collapse show">
                                    <div class="card-body">

                                            @if (isset($myorder->id) && $myorder->id != 0)
                                                @if(isset($myorder->status_cc) && $myorder->status_cc != 4)
                                                    <div class="form-actions">
                                                        
                                                        
                                                        <button type="submit" name="btn" value="done" class="btn btn-success">
                                                            <i class="la la-check-square-o"></i> {{ __('DONE') }}
                                                        </button>

                                                        <button type="submit" name="btn" value="hold" class="btn btn-warning">
                                                            <i class="la la-check-square-o"></i> {{ __('Hold') }}
                                                        </button>
                                                        <button type="submit" name="btn" value="approve" class="btn btn-warning">
                                                            <i class="la la-check-square-o"></i> {{ __('Hold to Approve') }}
                                                        </button>

                                                        <button type="submit" name="btn" value="cancel" class="btn btn-danger">
                                                            <i class="la la-check-square-o"></i> {{ __('Cancel') }}
                                                        </button>
                                                    </div>
                                                @endif
                                            @else
                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-primary">
                                                        <i class="la la-check-square-o"></i> {{ __('Save All') }}
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



            </div>
        </div>
    </div>

@endsection

@section('script')
    <script>
        jQuery(document).ready(function ($) {

            // service Price
            $('#service_id').change(function () {
                let service_id = $("#service_id option:selected").val();
                let medical_type_id = $("#medical_type_id option:selected").val();
                let corporate_id = $("#corporate_id option:selected").val();
                let price_list_id= 0;
                // console.log(service_id);
                // console.log(medical_type_id);
                // console.log(corporate_id);
                // console.log(price_list_id);
                
                let _token = '{{ csrf_token() }}';
                $.ajax({
                    url: "{{ route('ajax.service.get.price') }}",
                    type: 'post',
                    dataType: 'json',
                    data:{
                        service_id :service_id,
                        medical_type_id :medical_type_id,
                        corporate_id :corporate_id,
                        price_list_id :price_list_id,
                        _token: _token
                    },
                    success: function (response) {
                        // console.log(response)
                        if(response == null){
                            console.log('Not Found');
                        }else {
                            $('#action_price').val(response.price);
                        }
                    }
                });
            });

            $('#user_id').change(function () {
                $.ajax({
                    url: '../getUserInfo/' + $('#user_id').val(),
                    type: 'get',
                    dataType: 'json',
                    success: function (response) {
                        // console.log(response)
                        if(response == null){
                            console.log('Not Found');
                        }else {
                            console.log(response);
                            $('#fullname').val(response.username);
                            if(response.address !== null){
                                $('#adress').val(response.address);
                            }
                            $('#phone').val(response.phone);
                            $('#phone2').val(response.mobile);
                            $('#gender').val(response.gender);
                            $('#code_zone_patient_id').val(response.code_zone_patient_id);
                            $('#governorate_id').val(response.governorate_id).change();
                            $('#city_id').val(response.city_id);
                            $('#land_mark').val(response.land_mark);
                            $('#floor').val(response.floor);
                            $('#apartment').val(response.apartment);
                            $('#whatapp').prop( "checked",(response.whatapp)? true : false );
                            $('#whatapp2').prop( "checked",(response.whatapp2)? true : false );
                            $('#referral_id').val(response.fname).change();
                        }
                    }
                    // error: function (xhr, ajaxOptions, thrownError) {
                    //     input.val(0);
                    // }
                });
            });

            // Physician
            function referralPhysician(){
                let phy = $('#physician').val();
                if(phy !== null && phy !== ""){
                    $('#physician_dev').hide();
                }else{
                    $('#physician_dev').show();
                }
            }
            referralPhysician();
            $('#physician').change(function () {
                referralPhysician();
            });


        });
    </script>
@endsection