@extends('layouts.admin')
@section('title','تخصص')
@section('specialty_view','')
@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <h3 class="content-header-title">  تخصص </h3>
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">الرئيسية</a>
                                </li>
                                <li class="breadcrumb-item active">  تخصص
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
                                    <h4 class="card-title"> كل  تخصصات </h4>
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
                                        @if(\App\Models\Role::havePremission(['specialty_cr']))
                                        <a class="btn btn-primary mb-2 mr15" href="{{ route('admin.specialty.create') }}"><i class="ft-plus"></i>&nbsp; {{ __('Create') }}</a>
                                        @endif
                                        <table
                                            class="table table-striped table-bordered ordering-print ">
                                            <thead>
                                            <tr>
                                                <th>ID </th>
                                                <th>اسم عربي</th>
                                                <th> اسم انجليزي</th>
                                                <th>{{ __('Parent') }}</th>
                                                <th>صوره</th>
                                                <th>الحالة</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            @isset($datas)
                                                @foreach($datas as $data)
                                                    <tr>
                                                        <td>{{$data -> id}}</td>
                                                        <td>{{$data -> name_ar}}</td>
                                                        <td>{{$data -> name_en}}</td>
                                                        <td>{{\App\Models\Specialty::getName($data->parent_id) }}</td>
                                                        <td>
                                                            @if($data -> image != null)
                                                                <img width="50px" height="50px" src="../{{$data -> image}}">
                                                            @else
                                                                No Image
                                                            @endif
                                                        </td>
                                                        <td>{{$data -> getActive()}}</td>
                                                        <td>
                                                            <div class="btn-group" role="group"
                                                                 aria-label="Basic example">
                                                                 @if(\App\Models\Role::havePremission(['specialty_idt']))
                                                                <a href="{{route('admin.specialty.edit',['id'=> $data->id ])}}"
                                                                   class="btn btn-outline-primary btn-min-width box-shadow-3 mr-1 mb-1">تعديل</a>
                                                                   @endif
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            @endisset


                                            </tbody>

                                            <tfoot>
                                                <th>ID </th>
                                                <th>اسم عربي</th>
                                                <th> اسم انجليزي</th>
                                                <th>{{ __('Parent') }}</th>
                                                <th>صوره</th>
                                                <th>الحالة</th>
                                                <th></th>
                                            </tfoot>
                                        </table>
                                        <div class="justify-content-center d-flex">

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
