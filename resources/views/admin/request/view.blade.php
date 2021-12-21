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
                                                <h4 class="form-section"><i class="ft-home"></i> General Info </h4>
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
                                                            <label for="username"> {{ __('UserName') }} </label>
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
                                                            <label for="email"> {{ __('E-Mail Address') }} </label>
                                                            <input type="email" value="{{$user -> email}}" id="email"
                                                                   class="form-control"
                                                                   placeholder="{{ __('E-Mail Address') }}"
                                                                   name="email" required>
                                                            @error('email')
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
                <!-- // General Info section end -->

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
                                                <h4 class="form-section"><i class="ft-home"></i> Doctor </h4>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="specialty"> {{ __('Specialty') }} </label>
                                                            <select name="specialty" id="specialty"
                                                                    class="form-control @error('title') is-invalid @enderror" >
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
                                                            <label for="phone1"> {{ __('Phone 1') }} </label>
                                                            <input type="text" value="{{$user -> phone1}}" id="phone1"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Phone 1') }}"
                                                                   name="phone1" >
                                                            @error('phone1')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="phone2"> {{ __('Phone 2') }} </label>
                                                            <input type="text" value="{{$user -> phone2}}" id="phone2"
                                                                   class="form-control"
                                                                   placeholder="{{ __('Phone 2') }}"
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
                                                                      placeholder="{{ __('Description') }}" ></textarea>
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
                @endif
                <!-- // Doctor section end -->

            </div>
        </div>
    </div>

@endsection
