@extends('layouts.admin')
@section('title', __('Out Patient') )
@section('report_out','')
@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <h3 class="content-header-title">  {{ __('Out Patient') }} </h3>
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">الرئيسية</a>
                                </li>
                                <li class="breadcrumb-item">{{ __('Out Patient') }}</li>
                                
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
                                    <h4 class="card-title"> {{ __('Out Patient') }} </h4>
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
                                        <div class="table-responsive">
                                                <table
                                                    class="table table-striped table-bordered ordering-print">
                                                    <thead>
                                                    <tr>
                                                        <th> id</th>
                                                        <th> Code Zone</th>
                                                        <th>الاسم</th>
                                                        <th>العمر</th>
                                                        <th>القائم بالرعاية</th>
                                                        <th>الهاتف</th>
                                                        <th>مصدر التحويل</th>
                                                        <th> خدمه</th>
                                                        <th> الطبيب المعالج</th>
                                                        <th> كوفيد19</th>
                                                        <th> العنوان</th>
                                                        <th> وكيل الكول سينتر</th>
                                                        <th> OPD</th>
                                                        <th> ملاحظات الطبيب</th>
                                                        <th> تعليق</th>
                                                        <th> تشخيص </th>
                                                        <th> الاعراض</th>
                                                        <th> الممرضة</th>
                                                        <th> الدكتور</th>
                                                        <th> المكالمات</th>
                                                        <th> التكلفه</th>
                                                        <th> رقم الفتوره</th>
                                                        <th> دفع</th>
                                                        <th> {{ __('Date') }}</th>
                                                        <th> الحاله</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    @isset($requests)
                                                        @if (count($requests) > 0)
                                                        @foreach($requests as $request)
                                                            <tr>
                                                                <td>{{$request->id}}</td>
                                                                <td>{{$request->code_zone_patient_id}}</td>
                                                                <td>{{$request->fullname}}</td>
                                                                <td>{{$request->age}}</td>
                                                                <td>{{$request->name_caregiver}}</td>
                                                                <td>{{$request->phone}}</td>
                                                                <td>@foreach ($usersReferrals as $usersReferral) {{ $usersReferral }}; @endforeach
                                                                </td>
                                                                <td>{{$request->service_id}}</td>
                                                                <td>{{$request->physician}}</td>
                                                                <td>{{ __($request->covid19)}}</td>
                                                                <td>{{$request->adress}}</td>
                                                                <td>{{$request->cc_admin_id }}</td>
                                                                <td>{{$request->opd_admin_id }}</td>
                                                                <td>{{$request->doc_note}}</td>
                                                                <th>{{$request->feedback}}</th>
                                                                <th>{{$request->diagnose}} </th>
                                                                <th>{{$request->symptoms}} </th>
                                                                <th>{{$request->nurse_id}} </th>
                                                                <th>{{$request->doctor_id}} </th>
                                                                <td> @foreach ($usersCalls as $usersCall) {{ $usersCall }}; @endforeach
                                                                </td>
                                                                <td>{{$request->real_cost}}</td>
                                                                <td>{{$request->bill_serial}}</td>
                                                                <td>{{ __($request->pay_or_not)}}</td>
                                                                <td>{{$request->created_at}}</td>
                                                                <td>
                                                                    <span class="badge {{ $request->getStateColor($request ->status_in_out) }}">
                                                                        {{ $request->getRequestState($request -> status_in_out) }}
                                                                    </span>
                                                                </td>
                                                                
                                                            </tr>
                                                        @endforeach
                                                        @endif
                                                    @endisset
                                                    </tbody>
                                                    {{-- <tfoot>
                                                        <tr>
                                                            <th> id</th>
                                                            <th>العميل</th>
                                                            <th> موبيل</th>
                                                            <th> موبيل</th>
                                                            <th> OPD</th>
                                                            <th> {{ __('Date') }}</th>
                                                            <th> الحاله</th>
                                                        </tr>
                                                    </tfoot> --}}
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
