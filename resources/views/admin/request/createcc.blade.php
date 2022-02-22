@extends('layouts.admin')
@section('title','Request CC')
{{-- @section('request_all','') --}}
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
                                <li class="breadcrumb-item"><a href="{{route('admin.request.cc')}}">  {{ __('Request') }} </a>
                                </li>
                                <li class="breadcrumb-item active">إضافة
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
                                    <h4 class="card-title" id="basic-layout-form">   </h4>
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
                                        @if(isset($myorder->status_cc) && $myorder->status_cc != 4)
                                            <form class="form" 
                                            @if (isset($myorder->id) && $myorder->id != 0)
                                            action="{{route('admin.request.update', $myorder -> id)}}" 
                                            @else
                                            action="{{route('admin.request.store')}}" 
                                            @endif
                                            method="POST" enctype="multipart/form-data">
                                        @endif
                                            @csrf

                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> البيانات   </h4>

                                                <div class="row">
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="user_id">{{ __('Patient Name') }}</label>
                                                            <select class="select2 form-control" name="user_id" id="user_id">
                                                                <option value=""></option>
                                                                @foreach($users as $user)
                                                                    <option value="{{ $user->id }}"
                                                                            @if(isset($myorder->user_id))
                                                                                @if($myorder->user_id == $user->id) selected @endif 
                                                                            @endif 
                                                                            @if(old('user_id') == $user->id) selected @endif >
                                                                        {{ $user->username." [ ".$user->phone." ]"}}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                            @error('user_id')
                                                                <span class="text-danger">{{$message}}</span>--}}
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="fullname"> {{ __('Full Name') }} <span style="color: #ff4961;">*</span> </label>
                                                            <input type="text" id="fullname" required
                                                                   class="form-control" 
                                                                   @if(isset($myorder->fullname))
                                                                        value="{{ $myorder->fullname }}"
                                                                    @else
                                                                        value="{{ old('fullname') }}"
                                                                   @endif
                                                                   placeholder="{{ __('Full Name') }}"
                                                                   name="fullname">
                                                            @error('fullname')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="name_caregiver"> {{ __('Name Of Care Giver') }} </label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="doctor_id">{{ __('Consultant') }}</label>
                                                            <select class="select2 form-control" name="doctor_id" id="doctor_id">
                                                                <option value="">{{ __('Consultant') }}</option>
                                                                @foreach($doctors as $doctor)
                                                                    <option value="{{ $doctor->id }}"
                                                                            @if(isset($myorder->doctor_id))
                                                                            @if($myorder->doctor_id == $doctor->id) selected @endif @endif
                                                                    >
                                                                        {{ $doctor->username }}</option>
                                                                @endforeach
                                                            </select>
                                                            @error('doctor_id')
                                                            <span class="text-danger">{{$message}}</span>--}}
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone"> {{ __('Phone') }} <span style="color: #ff4961;">*</span></label>
                                                            <input type="text" id="phone" required
                                                                   class="form-control"
                                                                   @if(isset($myorder->phone))
                                                                   value="{{ $myorder->phone }}"
                                                                   @else
                                                                        value="{{ old('phone') }}"
                                                                   @endif
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone">

                                                            <input type="checkbox"  value="1" name="whatapp"
                                                                   id="whatapp"
                                                                   class="switchery" data-color="success"
                                                                   @if (isset($myorder -> whatapp))
                                                                    @if($myorder -> whatapp  == 1 ) checked @endif
                                                                   @endif
                                                                   @if(old('whatapp') == 1) checked @endif />
                                                            
                                                            <label for="whatapp" class="card-title ml-1"> {{ __('Whatapp') }} </label>
                                                            @error('phone')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone2"> {{ __('Phone') }} 2</label>
                                                            <input type="text" id="phone2"
                                                                   class="form-control"
                                                                   @if(isset($myorder->phone2))
                                                                   value="{{ $myorder->phone2 }}"
                                                                   @else
                                                                        value="{{ old('phone2') }}"
                                                                   @endif
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone2">

                                                                   <input type="checkbox"  value="1" name="whatapp2"
                                                                   id="whatapp2" class="switchery" data-color="success"
                                                                   @if (isset($myorder -> whatapp2))
                                                                    @if($myorder -> whatapp2  == 1 ) checked @endif
                                                                   @endif 
                                                                   @if(old('whatapp2') == 1) checked @endif />
                                                            <label for="whatapp2" class="card-title ml-1">  {{ __('Whatapp') }}  </label>
                                                            @error('phone2')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="age"> {{ __('Age') }} </label>
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
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="gender"> {{ __('Gender') }} </label>
                                                            <select name="gender" id="gender"
                                                                    class="form-control @error('gender') is-invalid @enderror">
                                                                <option value=""></option>
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

                                                </div>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="referral_id">{{ __('Referral') }}</label>
                                                            <select class="select2 form-control" id="referral_id" name="referral_id">
                                                                <option value="">-- {{ __('Select') }}  {{ __('Referral') }} --</option>
                                                                @foreach($referrals as $referral)
                                                                    <option value="{{ $referral->id }}"
                                                                        @if(isset($myorder->referral_id))
                                                                            @if($myorder->referral_id == $referral->id) selected @endif
                                                                        @endif
                                                                        @if(old('referral_id') == $referral->id) selected @endif
                                                                    >{{ $referral->name_ar}}</option>
                                                                @endforeach
                                                            </select>
                                                            @error('referral_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group" id="referral_dev">
                                                            <label for="referral">{{ __('Add') }} {{ __('Referral') }} </label>
                                                            <input type="text" id="referral" 
                                                                   class="form-control"
                                                                    value="{{ old('referral') }}"
                                                                   placeholder="{{__('Referral') }}"
                                                                   name="referral">
                                                            @error('referral')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="corporate_id">{{ __('Corporate') }}</label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group" id="corporate_dev">
                                                            <label for="corporate">{{ __('Add') }} {{ __('Corporate') }} </label>
                                                            <input type="text" id="corporate" 
                                                                   class="form-control"
                                                                   value="{{ old('corporate') }}"
                                                                   placeholder="{{ __('Corporate') }}"
                                                                   name="corporate">
                                                            @error('corporate')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="package_id">{{ __('Package') }}</label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group" id="package_dev">
                                                            <label for="package">{{ __('Add') }} {{ __('Package') }} </label>
                                                            <input type="text" id="package" 
                                                                   class="form-control"
                                                                   placeholder="{{ __('Package') }}"
                                                                   name="package">
                                                            @error('package')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="physician">{{ __('Physician') }}</label>
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
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group" id="physician_dev">
                                                            <label for="physician_new">{{ __('Add') }} {{ __('Physician') }}  </label>
                                                            <input type="text" id="physician" 
                                                                   class="form-control"
                                                                   placeholder="{{ __('Physician') }}"
                                                                   name="physician_new">
                                                            @error('physician_new')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="specialty_id">{{ __('Specialty') }}</label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="service_id">{{ __('Service') }}</label>
                                                            <select class="select2 form-control" name="service_id">
                                                                <option value="">-- {{ __('Select') }} {{ __('Service') }} -- </option>
                                                                @foreach($serves as $serve)
                                                                    <option value="{{ $serve->id }}"
                                                                         @if(isset($myorder->service_id))
                                                                            @if($myorder->service_id == $serve->id) selected @endif
                                                                        @endif
                                                                        @if(old('service_id') == $serve->id) selected @endif
                                                                    >{{ $serve->name_ar}}</option>
                                                                @endforeach
                                                            </select>
                                                            @error('service_id')
                                                            <span class="text-danger">{{$message}}</span>--}}
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="type"> {{ __('Out/In') }} <span style="color: #ff4961;">*</span></label>
                                                            <select name="type" id="type" required
                                                                    class="form-control @error('type') is-invalid @enderror">
                                                                <option value=""></option>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group mt-1">
                                                            <input type="checkbox"  value="1" name="covid19"
                                                                   id="covid19"
                                                                   class="switchery" data-color="success"

                                                                   @if($myorder->covid19  == 1 ) checked @endif
                                                            />
                                                            <label for="covid19"
                                                                   class="card-title ml-1">{{ __('Covid-19') }} </label>

                                                            @error('covid19')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                                    
                                                    
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="governorate_id"> {{ __('Governorate') }} </label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="city_id">{{ __('Area') }} </label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="land_mark"> {{ __('Land Mark') }}</label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="floor"> {{ __('Floor') }}</label>
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
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="apartment"> {{ __('Apartment') }}</label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="adress"> {{ __('Address') }} <span style="color: #ff4961;">*</span></label>
                                                            <input type="text" id="adress" required
                                                                   class="form-control"
                                                                   @if(isset($myorder->adress))
                                                                   value="{{ $myorder->adress }}"
                                                                   @else
                                                                   value="{{ old('adress') }}"
                                                                   @endif
                                                                   placeholder="{{ __('Address') }}"
                                                                   name="adress">
                                                            @error('adress')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="location"> {{ __('Location') }} </label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="whatsApp_group"> {{ __('Name of whatsApp Group') }} </label>
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="bed_number"> {{ __('Bed Number') }} </label>
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

                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="code_zone_patient_id"> {{ __('Code Zone Patient ID') }} </label>
                                                            <input type="text" id="code_zone_patient_id"
                                                                   class="form-control"
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="symptoms"> {{ __('Symptoms') }} </label>
                                                            <textarea id="symptoms" placeholder="{{ __('Symptoms') }}" 
                                                                    class="form-control" name="symptoms"
                                                                    >@if(isset($myorder->symptoms)){{ $myorder->symptoms }}@else {{ old('symptoms') }} @endif</textarea>
                                                            @error('code_zone_patient_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="expectation_cost"> {{ __('Expectation Cost') }} </label>
                                                            <input type="number" id="expectation_cost"
                                                                   class="form-control"
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

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="real_cost"> {{ __('Real Cost') }} </label>
                                                            <input type="number" id="real_cost"
                                                                   class="form-control"
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
                                                

                                            </div>

                                            @if(isset($myorder->status_cc) && $myorder->status_cc != 4)
                                                <div class="form-actions">
                                                    @if (isset($myorder->id) && $myorder->id != 0)
                                                        <button type="submit" class="btn btn-primary">
                                                            <i class="la la-check-square-o"></i> {{ __('Update') }}
                                                        </button>
                                                    @else
                                                        <button type="submit" class="btn btn-primary">
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

                {{-- @if (isset($myorder->id) && $myorder->id != 0) --}}
                <!-- Basic form layout section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form"> {{ __('Calls') }} </h4>
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

                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> البيانات   </h4>

                                                @if (isset($calls))
                                                    @foreach ($calls as $call)
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            {{ \App\Models\Admin::getAdminNamebyId($call->admin_id)  }}
                                                        </div>
                                                        <div class="col-md-2">
                                                            {{ \App\Models\RequestCall::getDepartment($call->department) }}
                                                        </div>
                                                        <div class="col-md-2">
                                                            {{ $call->call_time }}
                                                        </div>
                                                        <div class="col-md-6">
                                                            {{ $call->note }}
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                    
                                                @endif

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
                                                    @endif


                                                </div>

                                            </div>
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
                {{-- @endif --}}
                <!-- // Basic form layout section end -->



            </div>
        </div>
    </div>

@endsection

@section('script')
    <script>
        jQuery(document).ready(function ($) {

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
                            $('#fullname').val(response.username);
                            if(response.address !== null){
                                $('#adress').val(response.address);
                            }
                            $('#phone').val(response.phone);
                            $('#phone2').val(response.mobile);
                            $('#gender').val(response.gender);
                            $('#code_zone_patient_id').val(response.code_zone_patient_id);
                            $('#governorate_id').val(response.governorate_id).change();
                            if(response.governorate_id !== null){
                                setTimeout( function() { $('#city_id').val(response.city_id).change(); }, 1000);
                            }
                        }
                    }
                    // error: function (xhr, ajaxOptions, thrownError) {
                    //     input.val(0);
                    // }
                });
            });

            // $('#governorate_id').change(function () {
            //     var govern = $('#governorate_id').val();
            //     if(govern !== null && govern !== ""){
            //         getCitySelect(govern);
            //     }
            // });

            // function getCitySelect(govern) {
            //     $.ajax({
            //         url: "../getCityGevern/" + govern,
            //         type: 'get',
            //         dataType: 'json',
                    // success: function (response) {
                    //     if(response == null){
                    //         console.log('Not Found');
                    //     }else {
                    //         if(response.length > 0){
                    //             for (let i = 0; i < response.length; i++) { 
                    //                 if(i == 0){
                    //                     $('#city_id').html($('<option>', {
                    //                         value: response[i].id,
                    //                         text: response[i].city_name_ar
                    //                     }));
                    //                 }else{
                    //                     $('#city_id').append($('<option>', {
                    //                         value: response[i].id,
                    //                         text: response[i].city_name_ar
                    //                     }));
                    //                 }
                    //             }
                    //         }
                    //     }
                    // }
                    // error: function (xhr, ajaxOptions, thrownError) {
                    //     input.val(0);
                    // }
            //     });
            // }

            // Referral
            function referralDisplay(){
                let ref = $('#referral_id').val();
                if(ref !== null && ref !== ""){
                    $('#referral_dev').hide();
                }else{
                    $('#referral_dev').show();
                }
            }
            referralDisplay();
            $('#referral_id').change(function () {
                referralDisplay();
            });

            // Corporate
            function referralCorporate(){
                let cor = $('#corporate_id').val();
                if(cor !== null && cor !== ""){
                    $('#corporate_dev').hide();
                }else{
                    $('#corporate_dev').show();
                }
            }
            referralCorporate();
            $('#corporate_id').change(function () {
                referralCorporate();
            });

            // Package
            function referralPackage(){
                let pack = $('#package_id').val();
                if(pack !== null && pack !== ""){
                    $('#package_dev').hide();
                }else{
                    $('#package_dev').show();
                }
            }
            referralPackage();
            $('#package_id').change(function () {
                referralPackage();
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