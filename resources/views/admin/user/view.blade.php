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
                                <li class="breadcrumb-item"><a href="{{route('admin.user')}}"> العملاء </a>
                                </li>
                                <li class="breadcrumb-item active">تعديل
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">

            @include('admin.include.alerts.success')
            @include('admin.include.alerts.errors')

                <!-- Account Settings section start -->
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

                                <div class="card-content collapse show">
                                    <div class="card-body">
                                        <form class="form" action="{{route('admin.user.update',$user -> id)}}"
                                              method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> {{ __('Account Settings') }} </h4>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="fname"> {{ __('Frist Name') }} </label>
                                                            <input type="text" value="{{$user -> fname}}" id="fname"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Frist Name') }}"
                                                                   name="fname" required>
                                                            @error('fname')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="lname"> {{ __('Last Name') }} </label>
                                                            <input type="text" value="{{$user -> lname}}" id="lname"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Last Name') }}"
                                                                   name="lname" required>
                                                            @error('lname')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="title"> {{ __('Title') }} </label>
                                                            <select name="title" id="title"
                                                                    class="form-control @error('title') is-invalid @enderror" required>
                                                                <option></option>
                                                                <option value="Mr"
                                                                        @if($user -> title == "Mr") selected @endif>Mr</option>
                                                                <option value="Mrs"
                                                                        @if($user -> title == "Mrs") selected @endif>Mrs</option>
                                                                <option value="Dr"
                                                                        @if($user -> title == "Dr") selected @endif>Dr</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="username"> {{ __('Full Name') }} </label>
                                                            <input type="text" value="{{$user -> username}}" id="username"
                                                                   class="form-control"
                                                                   placeholder="{{ __('UserName') }}"
                                                                   name="username" required>
                                                            @error('username')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="gender"> {{ __('Gender') }} </label>
                                                            <select name="gender" id="phone"
                                                                    class="form-control @error('gender') is-invalid @enderror">
                                                                <option value="1"
                                                                        @if($user -> gender == "1") selected @endif>{{ __('Male') }}</option>
                                                                <option value="2"
                                                                        @if($user -> gender == "2") selected @endif>{{ __('Female') }}</option>
                                                            </select>
                                                            @error('gender')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="nationality_code"> {{ __('Nationality') }} </label>
                                                            <select name="nationality_code" id="nationality_code"
                                                                    class="form-control @error('nationality_code') is-invalid @enderror" >
                                                                <option></option>
                                                                @if($countrys)
                                                                    @foreach($countrys as $country)
                                                                        <option value="{{$country->country_code}}"
                                                                                @if($country->country_code == $user->nationality_code) selected @endif>
                                                                            @if(app()->getLocale() == 'ar')
                                                                                {{$country->country_arNationality}}
                                                                            @else
                                                                                {{$country->country_enNationality}}
                                                                            @endif
                                                                        </option>
                                                                    @endforeach
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="code_zone_patient_id"> {{ __('Zone Patient ID') }} </label>
                                                            <input type="text" value="{{$user -> code_zone_patient_id}}" id="code_zone_patient_id"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Zone Patient ID') }}"
                                                                   name="code_zone_patient_id" required>
                                                            @error('code_zone_patient_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="birth_date"> {{ __('Birth Date') }} </label>
                                                            <input type="date" value="{{$user -> birth_date}}" id="birth_date"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Birth Date') }}"
                                                                   name="birth_date" required>
                                                            @error('birth_date')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions">
{{--                                                <button type="button" class="btn btn-warning mr-1"--}}
{{--                                                        onclick="history.back();">--}}
{{--                                                    <i class="ft-x"></i> تراجع--}}
{{--                                                </button>--}}
                                                <button type="submit" class="btn btn-primary" name="btn" value="GeneralInfo">
                                                    <i class="la la-check-square-o"></i> تحديث
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Account Settings section end -->

                <!-- General Info section start -->
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

                                <div class="card-content collapse show">
                                    <div class="card-body">
                                        <form class="form" action="{{route('admin.user.update',$user -> id)}}"
                                              method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> {{ __('Contact Info') }} </h4>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone"> {{ __('Phone') }} </label>
                                                            <input type="text" value="{{$user -> phone}}" id="phone"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone" required>
                                                            @error('phone')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="mobile"> {{ __('Mobile') }} </label>
                                                            <input type="text" value="{{$user -> mobile }}" id="mobile"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Mobile') }}"
                                                                   name="mobile">
                                                            @error('mobile')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="email "> {{ __('E-Mail Address') }} </label>
                                                            <input type="email" value="{{$user -> email  }}" id="email "
                                                                   class="form-control"
                                                                   placeholder="{{ __('E-Mail Address') }}"
                                                                   name="email">
                                                            @error('email')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="governorate_id"> {{ __('Governorate') }} </label>
                                                            <select name="governorate_id" id="governorate_id"
                                                                    class="form-control @error('governorate_id') is-invalid @enderror" >
                                                                <option></option>
                                                                @if($governorates)
                                                                    @foreach($governorates as $governorate)
                                                                        <option value="{{$governorate->id}}"
                                                                                @if($governorate->id == $user->governorate_id) selected @endif>
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
                                                            <label for="city_id"> {{ __('City') }} </label>
                                                            <select name="city_id" id="city_id"
                                                                    class="form-control @error('city_id') is-invalid @enderror" >
                                                                <option></option>
                                                                @if($citys)
                                                                    @foreach($citys as $city)
                                                                        <option value="{{$city->id}}"
                                                                                @if($city->id == $user->city_id) selected @endif>
                                                                            @if(app()->getLocale() == 'ar')
                                                                                {{$city->city_name_ar}}
                                                                            @else
                                                                                {{$city->city_name_en}}
                                                                            @endif
                                                                        </option>
                                                                    @endforeach
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="address"> {{ __('Address') }} </label>
                                                            <input type="text" value="{{$user -> address }}" id="address"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Address') }}"
                                                                   name="address">
                                                            @error('address')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>



                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                {{--                                                <button type="button" class="btn btn-warning mr-1"--}}
                                                {{--                                                        onclick="history.back();">--}}
                                                {{--                                                    <i class="ft-x"></i> تراجع--}}
                                                {{--                                                </button>--}}
                                                <button type="submit" class="btn btn-primary" name="btn" value="GeneralInfo">
                                                    <i class="la la-check-square-o"></i> تحديث
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // General Info section end -->

                <!-- Account Receiver section start -->
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

                                <div class="card-content collapse show">
                                    <div class="card-body">
                                        <form class="form" action="{{route('admin.user.update',$user -> id)}}"
                                              method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> {{ __('Account Receiver') }} </h4>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="account_owner_name"> {{ __('Account Owner Name') }} </label>
                                                            <input type="text" value="{{$user -> account_owner_name }}" id="account_owner_name"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Account Owner Name') }}"
                                                                   name="account_owner_name">
                                                            @error('account_owner_name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="account_num"> {{ __('Account Number') }} </label>
                                                            <input type="text" value="{{$user -> account_num }}" id="account_num"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Account Number') }}"
                                                                   name="account_num">
                                                            @error('account_num')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="bank_name"> {{ __('Bank Name') }} </label>
                                                            <input type="text" value="{{$user -> bank_name }}" id="bank_name"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Bank Name') }}"
                                                                   name="bank_name">
                                                            @error('bank_name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="identity_id"> {{ __('Identity ID') }} </label>
                                                            <input type="text" value="{{$user -> identity_id }}" id="identity_id"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Identity ID') }}"
                                                                   name="identity_id">
                                                            @error('identity_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="passport_id"> {{ __('Passport ID') }} </label>
                                                            <input type="text" value="{{$user -> passport_id }}" id="passport_id"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Passport ID') }}"
                                                                   name="passport_id">
                                                            @error('passport_id')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>



                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <button type="submit" class="btn btn-primary" name="btn" value="GeneralInfo">
                                                    <i class="la la-check-square-o"></i> تحديث
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Account Receiver section end -->


                <!-- Change type section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-content collapse show">
                                    <div class="card-body">
                                        <form class="form" action="{{route('admin.user.update',$user -> id)}}"
                                              method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                                <div class="text-center">
                                                    @if($user->type != 2)
                                                        <a href="{{route('admin.user.type',['id'=> $user->id,'type'=>'2' ])}}"
                                                           class="btn btn-outline-primary btn-min-width box-shadow-3 mr-1 mb-1">دكتور</a>
                                                    @endif

                                                    @if($user->type != 1)
                                                        <a href="{{route('admin.user.type',['id'=> $user->id,'type'=>'1' ])}}"
                                                           class="btn btn-outline-primary btn-min-width box-shadow-3 mr-1 mb-1">مريض</a>
                                                    @endif

                                                    @if($user->type != 4)
                                                        <a href="{{route('admin.user.type',['id'=> $user->id,'type'=>'4' ])}}"
                                                           class="btn btn-outline-primary btn-min-width box-shadow-3 mr-1 mb-1">{{ __('Nurse') }}</a>
                                                    @endif

                                                        @if($user->verification != 1)
                                                            <a href="{{route('admin.user.type',['id'=> $user->id,'type'=>'1001' ])}}"
                                                               class="btn btn-outline-warning btn-min-width box-shadow-3 mr-1 mb-1">تم التحقق</a>
                                                        @endif
                                                </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Change type section end -->

                <!-- Doctor section start -->
                @if($user->type == '2')
                    <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form">طبيب</h4>
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
                                        <form class="form" action="{{route('admin.user.update',$user -> id)}}"
                                              method="POST"
                                              enctype="multipart/form-data">
                                            @csrf
                                            <div class="form-body">
                                                <h4 class="form-section"><i class="ft-home"></i> {{ __('Doctor') }} </h4>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="specialty"> تخصص عام </label>
                                                            <select name="specialty" id="specialty"
                                                                    class="form-control  @error('title') is-invalid @enderror" >
                                                                <option></option>
                                                                @if($specialtis)
                                                                    @foreach($specialtis as $specialty)
                                                                <option value="{{$specialty->id}}"
                                                                        @if($specialty->id == $doctor->specialty) selected @endif>{{$specialty->name_ar}}</option>
                                                                    @endforeach
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="mainspecialty"> تخصص رئيسي </label>
                                                            <select name="mainspecialty[]" id="mainspecialty" multiple="multiple"
                                                                    class="form-control select2 " >
                                                                
                                                                @if($mainSpecialtis)
                                                                    @foreach($mainSpecialtis as $mainSpecialty)
                                                                <option value="{{$mainSpecialty->id}}"
                                                                    @if( in_array( $mainSpecialty->id , $mainSpecial) ) selected @endif
                                                                    >{{$mainSpecialty->name_ar}}</option>
                                                                {{-- @if($mainSpecialty->id == $doctor->specialty) selected @endif --}}
                                                                    @endforeach
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone1"> {{ __('Phone') }} 1</label>
                                                            <input type="text" value="{{$doctor -> phone1}}" id="phone1"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone1" >
                                                            @error('phone1')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone2"> {{ __('Phone') }} 2</label>
                                                            <input type="text" value="{{$doctor -> phone2}}" id="phone2"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Phone') }}"
                                                                   name="phone2" >
                                                            @error('phone2')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="description"> {{ __('Description') }} </label>
                                                            <textarea name="description" class="form-control" id="description"
                                                                      placeholder="{{ __('Description') }}" >{{$doctor -> description}}</textarea>
                                                            @error('description')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="photo"> {{ __('Photo') }} </label>
                                                            <input type="file" value="" id="photo"
                                                                   class="form-control" accept="image/*"
                                                                   placeholder="{{ __('Photo') }}"
                                                                   name="photo" >
                                                            @error('photo')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="cv"> {{ __('CV') }} </label>
                                                            <input type="file" value="" id="cv"
                                                                   class="form-control" accept="application/pdf"
                                                                   placeholder="{{ __('CV') }}"
                                                                   name="cv" >
                                                            @error('cv')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                {{--                                                <button type="button" class="btn btn-warning mr-1"--}}
                                                {{--                                                        onclick="history.back();">--}}
                                                {{--                                                    <i class="ft-x"></i> تراجع--}}
                                                {{--                                                </button>--}}
                                                <button type="submit" class="btn btn-primary" name="btn" value="Doctor">
                                                    <i class="la la-check-square-o"></i> تحديث
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                    <!-- Work Time section start -->
                    <section id="basic-form-layouts">
                        <div class="row match-height">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title" id="basic-layout-form">اوقات العمل</h4>
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
                                            <form class="form" action="{{route('admin.user.update',$user -> id)}}"
                                                  method="POST"
                                                  enctype="multipart/form-data">
                                                @csrf
                                                <div class="form-body">
                                                    <h4 class="form-section"><i class="ft-home"></i> {{ __('Doctor') }} </h4>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Sat" name="day[]" id="sat"
                                                                   @if(isset($timeWork['Sat'])) CHECKED @endif>
                                                            <label for="sat"> {{ __('Saturday') }} </label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="satf"
                                                                   @if(isset($timeWork['Satf'])) value="{{ $timeWork['Satf'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="satt"
                                                                   @if(isset($timeWork['Satt'])) value="{{ $timeWork['Satt'] }}" @endif>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Sun" name="day[]" id="sun"
                                                                   @if(isset($timeWork['Sun'])) CHECKED @endif>
                                                            <label for="sun">{{ __('Sunday') }}</label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="sunf"
                                                                   @if(isset($timeWork['Sunf'])) value="{{ $timeWork['Sunf'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="sunt"
                                                                   @if(isset($timeWork['Sunt'])) value="{{ $timeWork['Sunt'] }}" @endif>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Mon" name="day[]" id="mon"
                                                                   @if(isset($timeWork['Mon'])) CHECKED @endif>
                                                            <label for="mon">{{ __('Monday') }}</label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="monf"
                                                                   @if(isset($timeWork['Monf'])) value="{{ $timeWork['Monf'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="mont"
                                                                   @if(isset($timeWork['Mont'])) value="{{ $timeWork['Mont'] }}" @endif>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Tue" name="day[]" id="tue"
                                                                   @if(isset($timeWork['Tue'])) CHECKED @endif>
                                                            <label for="tue">{{ __('Tuesday') }}</label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="tuef"
                                                                   @if(isset($timeWork['Tuef'])) value="{{ $timeWork['Tuef'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="tuet"
                                                                   @if(isset($timeWork['Tuet'])) value="{{ $timeWork['Tuet'] }}" @endif>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Wed" name="day[]" id="wed"
                                                                   @if(isset($timeWork['Wed'])) CHECKED @endif>
                                                            <label for="wed">{{ __('Wednesday') }}</label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="wedf"
                                                                   @if(isset($timeWork['Wedf'])) value="{{ $timeWork['Wedf'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="wedt"
                                                                   @if(isset($timeWork['Wedt'])) value="{{ $timeWork['Wedt'] }}" @endif>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Thu" name="day[]" id="thu"
                                                                   @if(isset($timeWork['Thu'])) CHECKED @endif>
                                                            <label for="thu">{{ __('Thursday') }}</label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="thuf"
                                                                   @if(isset($timeWork['Thuf'])) value="{{ $timeWork['Thuf'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="thut"
                                                                   @if(isset($timeWork['Thut'])) value="{{ $timeWork['Thut'] }}" @endif>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <input type="checkbox" value="Fri" name="day[]" id="fri"
                                                                   @if(isset($timeWork['Fri'])) CHECKED @endif>
                                                            <label for="fri">{{ __('Friday') }}</label>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="from" class="form-control" name="frif"
                                                                   @if(isset($timeWork['Frif'])) value="{{ $timeWork['Frif'] }}" @endif>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="time" id="to" class="form-control" name="frit"
                                                                   @if(isset($timeWork['Frit'])) value="{{ $timeWork['Frit'] }}" @endif>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="form-actions">
                                                    {{--                                                <button type="button" class="btn btn-warning mr-1"--}}
                                                    {{--                                                        onclick="history.back();">--}}
                                                    {{--                                                    <i class="ft-x"></i> تراجع--}}
                                                    {{--                                                </button>--}}
{{--                                                    <button type="submit" class="btn btn-primary" name="btn" value="Doctor">--}}
{{--                                                        <i class="la la-check-square-o"></i> تحديث--}}
{{--                                                    </button>--}}
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- // Work Time section end -->
                @endif
                <!-- // Doctor section end -->


            </div>
        </div>
    </div>

@endsection
