@extends('layouts.admin')
@section('title',__($info['name']))
@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <h3 class="content-header-title">  {{ __($info['name']) }} </h3>
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">الرئيسية</a>
                                </li>
                                @if($info['type'] != '0')
                                    <li class="breadcrumb-item"><a href="{{route('admin.request')}}">{{ __('All Request') }}</a>
                                    <li class="breadcrumb-item active">  {{ __($info['name']) }}
                                @else
                                    <li class="breadcrumb-item active">  {{ __($info['name']) }}
                                @endif
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                <!-- DOM - jQuery events table -->
                <section id="dom">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">{{ __($info['name'])}} </h4>
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
                                    <div class="card-body card-dashboard">
                                        <a class="btn btn-primary mb-2" href="{{ route('admin.order.create') }}"><i class="ft-plus"></i>&nbsp; {{ __('Create Order') }}</a>
                                        @if ($info['type'] == '1')
                                        <a class="btn btn-danger mb-2" href="{{ route('admin.request.emergency') }}"><i class="ft-refresh-cw"></i>&nbsp; {{ __('ReLoad') }}</a>
                                        @elseif ($info['type'] == '2')
                                        <a class="btn btn-danger mb-2" href="{{ route('admin.request.visit') }}"><i class="ft-refresh-cw"></i>&nbsp; {{ __('ReLoad') }}</a>
                                        @elseif ($info['type'] == '3')
                                        <a class="btn btn-danger mb-2" href="{{ route('admin.request.book') }}"><i class="ft-refresh-cw"></i>&nbsp; {{ __('ReLoad') }}</a>
                                        @else
                                        <a class="btn btn-danger mb-2" href="{{ route('admin.request') }}"><i class="ft-refresh-cw"></i>&nbsp; {{ __('ReLoad') }}</a>
                                        @endif
                                        <div class="table-responsive">
                                            @if($info['type'] == '1')
                                                <table
                                                    class="table table-striped table-bordered zero-configuration">
                                                    <thead>
                                                    <tr>
                                                        <th> id</th>
                                                        <th>العميل</th>
                                                        <th> موبيل</th>
                                                        <th></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @isset($requests)
                                                        @foreach($requests as $request)
                                                            <tr>
                                                                <td>
                                                                    <a href="{{route('admin.order.create',['req'=>$request -> id])}}">
                                                                        {{$request -> id}}</a></td>
                                                                <td>
                                                                    @if($request -> user_id == null )
                                                                        {{__('Guest')}}
                                                                    @else
                                                                        <a href="{{route('admin.user.view',$request -> user_id)}}">
                                                                            {{\App\Models\User::getUserName($request -> user_id) }}
                                                                        </a>
                                                                    @endif
                                                                </td>
                                                                <td>{{$request -> phone}}</td>
                                                                <td>
{{--                                                                    <a href="tel:{{$request -> phone}}"--}}
{{--                                                                       class="btn btn-outline-success btn-min-width box-shadow-3 mr-1 mb-1">{{ __('Call') }}</a>--}}
{{--                                                                    <a href="{{route('admin.user.call.him',['id'=> $request->id ])}}"--}}
{{--                                                                       class="btn btn-outline-primary btn-min-width box-shadow-3 mr-1 mb-1">{{ __('Call Done') }}</a>--}}
                                                                </td>
                                                            
                                                            </tr>
                                                        @endforeach
                                                    @endisset


                                                    </tbody>
                                                </table>
                                                @elseif ($info['type'] == '2' or $info['type'] == '3')
                                                <table
                                                    class="table table-striped table-bordered zero-configuration">
                                                    <thead>
                                                    <tr>
                                                        <th> id</th>
                                                        <th>العميل</th>
                                                        <th> موبيل</th>
                                                        <th> تواصل معه</th>
                                                        <th> نوع الخدمه</th>
                                                        <th> التخصص</th>
                                                        <th> الحاله</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @isset($requests)
                                                        @foreach($requests as $request)
                                                            <tr>
                                                                <td>
                                                                    <a href="{{route('admin.order.create',['req'=>$request -> id])}}">
                                                                        {{$request -> id}}</a></td>
                                                                <td>
                                                                    @if($request -> user_id == null )
                                                                        {{__('Guest')}}
                                                                    @else
                                                                        <a href="{{route('admin.user.view',$request -> user_id)}}">
                                                                            {{\App\Models\User::getUserName($request -> user_id) }}
                                                                        </a>
                                                                    @endif
                                                                </td>
                                                                <td>{{$request -> phone}}</td>
                                                                <td>{{$request -> call_him }}</td>
                                                                <td>{{ __(\App\Models\Service::getName($request -> service_id)) }}</td>
                                                                <td>{{ __(\App\Models\Specialty::getName($request -> specialty_id)) }}</td>
                                                                <td>{{ __(\App\Models\Requests::getRequestState($request -> state)) }}</td>
                                                            
                                                            </tr>
                                                        @endforeach
                                                    @endisset


                                                    </tbody>
                                                </table>
                                            @else
                                                <table
                                                    class="table table-striped table-bordered zero-configuration">
                                                    <thead>
                                                    <tr>
                                                        <th> id</th>
                                                        <th>العميل</th>
                                                        <th> موبيل</th>
                                                        <th> تواصل معه</th>
                                                        <th> نوع الزياره</th>
                                                        <th> الحاله</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @isset($requests)
                                                        @foreach($requests as $request)
                                                            <tr>
                                                                <td>
                                                                    <a href="{{route('admin.order.create',['req'=>$request -> id])}}">
                                                                        {{$request -> id}}</a></td>
                                                                <td>
                                                                    @if($request -> user_id == null )
                                                                        {{__('Guest')}}
                                                                    @else
                                                                        <a href="{{route('admin.user.view',$request -> user_id)}}">
                                                                            {{\App\Models\User::getUserName($request -> user_id) }}
                                                                        </a>
                                                                    @endif
                                                                </td>
                                                                <td>{{$request -> phone}}</td>
                                                                <td>{{$request -> call_him }}</td>
                                                                <td>{{ __(\App\Models\Requests::getRequestType($request -> type)) }}</td>
                                                                <td>{{ __(\App\Models\Requests::getRequestState($request -> state)) }}</td>
                                                            
                                                            </tr>
                                                        @endforeach
                                                    @endisset


                                                    </tbody>
                                                </table>
                                            @endif
                                            <div class="justify-content-center d-flex">

                                            </div>
                                        </div>
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
