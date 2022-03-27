@extends('layouts.admin')
@section('title', __('Lab') )
@section('request_lab','')
@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <h3 class="content-header-title">  {{ __('Lab') }} </h3>
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">{{ __('Lab') }}</a>
                                </li>
                                    <li class="breadcrumb-item"><a href="{{route('admin.request.lab')}}">{{ __('Lab') }}</a>
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
                                    <h4 class="card-title"> {{ __('Lab') }} </h4>
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

                                    <div class="card-body card-dashboard">
                                        <a class="btn btn-danger mb-2 mr15" href="{{ route('admin.request.lab') }}"><i class="ft-refresh-cw"></i>&nbsp; {{ __('ReLoad') }}</a>
                                        <div class="table-responsive">
                                            
                                                <table
                                                    class="table table-striped table-bordered ordering-col7-print">
                                                    <thead>
                                                    <tr>
                                                        <th> {{ __('Request ID') }}</th>
                                                        <th>العميل</th>
                                                        <th> موبيل</th>
                                                        <th> موبيل</th>
                                                        <th> {{ __('Real Cost') }}</th>
                                                        <th> OPD</th>
                                                        <th> {{ __('Schedule') }}</th>
                                                        <th> الحاله</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @isset($requests)
                                                        @foreach($requests as $request)
                                                            <tr>
                                                                <td>
                                                                    <a href="{{route('admin.request.create.lab',$request -> id )}}">
                                                                        {{$request -> id}}</a>
                                                                </td>
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
                                                                <td>{{$request -> phone2 }}</td>
                                                                <td>{{$request -> real_cost }}</td>
                                                                <td>{{ \App\Models\Admin::getAdminNamebyId($request ->opd_admin_id ) }}</td>
                                                                <td>{{$request -> schedule_date}}</td>
                                                                <td>
                                                                    <span class="badge {{ \App\Models\Requests::getStateColor($request ->status_in_out) }}">
                                                                        {{ \App\Models\Requests::getRequestState($request -> status_in_out) }}
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    @endisset
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th> {{ __('Request ID') }}</th>
                                                            <th>العميل</th>
                                                            <th> موبيل</th>
                                                            <th> موبيل</th>
                                                            <th> {{ __('Real Cost') }}</th>
                                                            <th> OPD</th>
                                                            <th> {{ __('Schedule') }}</th>
                                                            <th> الحاله</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            
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