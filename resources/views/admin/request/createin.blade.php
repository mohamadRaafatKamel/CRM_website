@extends('layouts.admin')
@section('title','In Patient')
@section('request_in','')
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
                                <li class="breadcrumb-item"><a href="{{route('admin.request.in')}}">  {{ __('In Patient') }} </a>
                                </li>
                                <li class="breadcrumb-item active">{{ _('View') }}
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
                                        <form class="form" 
                                        action="{{route('admin.request.update.in', $myorder->id)}}" 
                                        method="POST" enctype="multipart/form-data">
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
                                                                                @if($myorder->user_id == $user->id) selected @endif @endif >
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
                                                            <label for="fullname"> {{ __('Full Name') }} <span style="color: #ff4961;">*</span></label>
                                                            <input type="text" id="fullname" required
                                                                   class="form-control"
                                                                   @if(isset($myorder->fullname))
                                                                        value="{{ $myorder->fullname }}"
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
                                                                   @endif
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone">

                                                            <input type="checkbox"  value="1" name="whatapp"
                                                                   id="whatapp"
                                                                   class="switchery" data-color="success"
                                                                   @if (isset($myorder -> whatapp))
                                                                    @if($myorder -> whatapp  == 1 ) checked @endif
                                                                   @endif
                                                            />
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
                                                                   @endif
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone2">

                                                                   <input type="checkbox"  value="1" name="whatapp2"
                                                                   id="whatapp2" class="switchery" data-color="success"
                                                                   @if (isset($myorder -> whatapp2))
                                                                    @if($myorder -> whatapp2  == 1 ) checked @endif
                                                                   @endif />
                                                            <label for="whatapp2" class="card-title ml-1"> {{ __('Whatapp') }} </label>
                                                            @error('phone2')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="age"> {{ __('Age') }} </label>
                                                            <input type="number" id="age" 
                                                                   class="form-control"
                                                                   @if(isset($myorder->age))
                                                                        value="{{ $myorder->age }}"
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
                                                                <option value="">-- {{ __('Select') }} {{ __('Gender') }} --</option>
                                                                @if(isset($myorder -> gender))
                                                                <option value="1"
                                                                        @if($myorder -> gender == "1") selected @endif>{{ __('Male') }}</option>
                                                                <option value="2"
                                                                        @if($myorder -> gender == "2") selected @endif>{{ __('Female') }}</option>
                                                                @else
                                                                    <option value="1">{{ __('Male') }}</option>
                                                                    <option value="2">{{ __('Female') }}</option>
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
                                                            <label for="governorate_id"> {{ __('Governorate') }} </label>
                                                            <select name="governorate_id" id="governorate_id" 
                                                                    class="select2 form-control ">
                                                                <option value="">-- {{ __('Select') }} {{ __('Governorate') }} --</option>
                                                                @if($governorates)
                                                                    @foreach($governorates as $governorate)
                                                                        <option value="{{$governorate->id}}"
                                                                                @if(isset($myorder->governorate_id))
                                                                                @if($myorder->governorate_id == $governorate->id) selected @endif @endif>
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



                                                    
                                                </div>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="referral_id">{{ __('Referral') }}</label>
                                                            <select class="select2 form-control" id="referral_id" name="referral_id[]" multiple>
                                                                <option value="">-- {{ __('Select') }}  {{ __('Referral') }} --</option>
                                                                @foreach($referrals as $referral)
                                                                    <option value="{{ $referral->id }}"
                                                                        @if (isset($usersReferrals))
                                                                            @if(in_array($referral->id, $usersReferrals)) selected @endif
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
                                                                <option value="">-- {{ __('Select') }} {{ __('Corporate') }} --</option>
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
                                                                <option value="">-- {{ __('Select') }} {{ __('Package') }} --</option>
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
                                                            <label for="ccAgent"> {{ __('CC Agent') }} </label>
                                                            <input type="text" id="ccAgent"
                                                                   class="form-control" readonly
                                                                   @if(isset($myorder->cc_admin_id ))
                                                                    value="{{ \App\Models\Admin::getAdminNamebyId($myorder->cc_admin_id) }}"
                                                                   @endif
                                                                   placeholder="{{ __('CC Agent') }}"
                                                                   >
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
                                                            <label for="code_zone_patient_id"> {{ __('Code Zone Patient ID') }} </label>
                                                            <input type="text" id="code_zone_patient_id"
                                                                   class="form-control"
                                                                   @if(isset($myorder->code_zone_patient_id))
                                                                    value="{{ $myorder->code_zone_patient_id }}"
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

                                                    

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="symptoms"> {{ __('Symptoms') }} </label>
                                                            <textarea id="symptoms" placeholder="{{ __('Symptoms') }}" 
                                                                    class="form-control" name="symptoms"
                                                                    >@if(isset($myorder->symptoms)){{ $myorder->symptoms }}@endif</textarea>
                                                            @error('code_zone_patient_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>
                                                
                                            </div>


                                            <div class="form-actions">
                                                
                                                <button type="submit" class="btn btn-primary">
                                                    <i class="la la-check-square-o"></i> {{ __('Save') }}
                                                </button>
                                            </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Basic form layout section end -->


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

                                        <div class="form-actions">
                                               
                                            <button type="submit" name="btn" value="done" class="btn btn-success">
                                                <i class="la la-check-square-o"></i> {{ __('DONE') }}
                                            </button>

                                            <button type="submit" name="btn" value="hold" class="btn btn-warning">
                                                <i class="la la-check-square-o"></i> {{ __('Hold') }}
                                            </button>
                                            {{-- <button type="submit" name="btn" value="approve" class="btn btn-warning">
                                                <i class="la la-check-square-o"></i> {{ __('Hold to Approve') }}
                                            </button> --}}

                                            <button type="submit" name="btn" value="cancel" class="btn btn-danger">
                                                <i class="la la-check-square-o"></i> {{ __('Cancel') }}
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



                <!-- Basic form layout section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form"><b> <i class="ft-phone"></i> {{ __('Nurse') }} </b> </h4>
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
                                
                                <div class="card-content collapse show">
                                    <div class="card-body">

                                            <div class="form-body">
                                                
                                            <form class="form" action="{{route('admin.sheet.store', $myorder->id)}}" 
                                                method="POST" enctype="multipart/form-data">
                                                @csrf
                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label for="shift_date"> {{ __('Date') }} <span style="color: #ff4961;">*</span></label>
                                                            <input type="date" id="shift_date" 
                                                                   class="form-control"  value="{{ $datenaw }}"
                                                                   placeholder="{{ __('Date') }} "
                                                                   name="shift_date">
                                                            @error('shift_date')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label for="nurse_id">{{ __('Nurse Name') }} <span style="color: #ff4961;">*</span></label>
                                                            <select class="select2 form-control" name="nurse_id" id="nurse_id" required >
                                                                <option value="">{{ __('Choose Nurse Name') }}</option>
                                                                @foreach($nurses as $nurse)
                                                                    <option value="{{ $nurse->id }}"
                                                                            @if(isset($myorder->nurse_id))
                                                                                @if($myorder->nurse_id == $nurse->id) selected @endif 
                                                                                @if(old('nurse_id') == $myorder->nurse_id) selected @endif
                                                                            @endif
                                                                    >
                                                                        {{ $nurse->username }}</option>
                                                                @endforeach
                                                            </select>
                                                            @error('nurse_id')
                                                            <span class="text-danger">{{$message}}</span>--}}
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label for="shift_type"> {{ __('Type Sheft') }} <span style="color: #ff4961;">*</span></label>
                                                            <select name="shift_type" id="shift_type" required
                                                                    class="form-control @error('shift_type') is-invalid @enderror">
                                                                <option value=""></option>
                                                                <option value="1" @if(old('shift_type') == '1') selected @endif>{{ __('Long') }}</option>
                                                                <option value="2" @if(old('shift_type') == '2') selected @endif>{{ __('Night') }}</option>
                                                            </select>
                                                            @error('shift_type')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label for="issues"> {{ __('Customer Issues') }} <span style="color: #ff4961;">*</span></label>
                                                            <textarea id="issues" class="form-control" placeholder=" {{ __('Customer Issues') }}"  
                                                                name="issues">{{ old('issues') }}</textarea>
                                                            @error('issues')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="form-actions">
                                               
                                                    <button type="submit" name="btn" value="nurseSheet" class="btn btn-success">
                                                        <i class="la la-check-square-o"></i> {{ __('Add Nurse Only') }}
                                                    </button>
    
                                                </div>

                                                @if (isset($sheets))
                                                    @if (count($sheets) > 0)
                                                    <div class="row">
                                                        <table class="table table-striped table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th> {{ __('Date') }}</th>
                                                                    <th> {{ __('Nurse Name') }}</th>
                                                                    <th> {{ __('Type Sheft') }}</th>
                                                                    <th> {{ __('Customer Issues') }} </th>
                                                                    <th> </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            @foreach ($sheets as $sheet)
                                                                <tr>
                                                                    <td>{{ $sheet->shift_date }}</td>
                                                                    <td>{{ \App\Models\User::getUserName($sheet->nurse_id)  }}</td>
                                                                    <td>{{ \App\Models\NurseSheet::getType($sheet->shift_type) }}</td>
                                                                    <td>{{ $sheet->issues }}</td>
                                                                    <td>
                                                                        <a href="{{route('admin.sheet.delete',$sheet->id)}}" class="btn btn-danger" ><i class="ft-trash-2"></i></a>
                                                                    </td>
                                                                </tr>
                                                            @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    @endif
                                                    @endif

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

@section('script')
    <script>
        jQuery(document).ready(function ($) {

            $('#user_id').change(function () {
                $.ajax({
                    url: '../../getUserInfo/' + $('#user_id').val(),
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
        });
    </script>
@endsection
