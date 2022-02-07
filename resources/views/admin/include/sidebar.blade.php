<div class="main-menu menu-fixed menu-light menu-accordion    menu-shadow " data-scroll-to-active="true">
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <li class="nav-item"><a href="{{route('admin.dashboard')}}"><i class="la la-mouse-pointer"></i><span
                        class="menu-title" data-i18n="nav.add_on_drag_drop.main">الرئيسية </span></a>
            </li>


            <li class="nav-item"> {{-- active --}}
                <a href=""><i class="la la-certificate"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> الطلبات </span>
                </a>
                <ul class="menu-content">
                    <li 
                            {{-- class="active" --}}
                    ><a class="menu-item" href="{{route('admin.request.cc')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Request') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::count()}}
                            </span>
                        </a>
                    </li>
                    <li
                            {{-- class="active" --}}
                    ><a class="menu-item" href="{{route('admin.request.emergency')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Emergency') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',1)->count()}}
                            </span>
                        </a>
                    </li>
                    <li
                            {{-- class="active" --}}
                    ><a class="menu-item" href="{{route('admin.request.out')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All OutPatient') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',2)->where('status_cc',4)->where('status_in_out','!=',4)->count()}}
                            </span>
                        </a>
                    </li>
                    <li
                            {{-- class="active" --}}
                    ><a class="menu-item" href="{{route('admin.request.in')}}"  
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All InPatient') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',3)->where('status_cc',4)->where('status_in_out','!=',4)->count()}}
                            </span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="nav-item">
                <a href=""><i class="la la-certificate"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> العملاء </span>
                </a>
                <ul class="menu-content">
                   {{-- <li><a class="menu-item" href="{{route('admin.user')}}"   class="active"
                                          data-i18n="nav.dash.ecommerce"> {{ __('All User') }} </a>
                    </li> --}}
                    <li><a class="menu-item" href="{{route('admin.user.patent')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Patent') }} </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.user.doctor')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Doctor') }} </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.user.partner')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Partner') }} </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.user.nurse')}}"   class="active"
                        data-i18n="nav.dash.ecommerce"> {{ __('All Nurse') }} </a>
                 </li>
                </ul>
            </li>

            @if(\App\Models\Role::havePremission('specialty_view'))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> التخصصات </span>
                    </a>
                    <ul class="menu-content">
                        <li><a class="menu-item" href="{{route('admin.specialty')}}"
                            data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                        </li>
                        @if(\App\Models\Role::havePremission('specialty_cr'))
                            <li><a class="menu-item" href="{{route('admin.specialty.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

            @if(\App\Models\Role::havePremission('serves_view'))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> الخدمات </span>
                    </a>
                    <ul class="menu-content">
                        <li><a class="menu-item" href="{{route('admin.service')}}"
                               data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                        </li>
                        @if(\App\Models\Role::havePremission('serves_cr'))
                            <li><a class="menu-item" href="{{route('admin.service.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

            @if(\App\Models\Role::havePremission('survay_view'))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Survey') }} </span>
                    </a>
                    <ul class="menu-content">
                        <li><a class="menu-item" href="{{route('admin.survay')}}"
                               data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                        </li>
                        <li><a class="menu-item" href="{{route('admin.statistics')}}"
                            data-i18n="nav.dash.ecommerce"> الاحصائيات </a>
                     </li>
                    </ul>
                </li>
            @endif

            <li class="nav-item">
                <a href=""><i class="la la-user"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Admin') }} </span>
                </a>
                <ul class="menu-content">
                    <li><a class="menu-item" href="{{route('admin.admin')}}"
                           data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.admin.create')}}" data-i18n="nav.dash.crypto">
                            أضافه جديد </a>
                    </li>
                   <li class="nav-item">
                       <a href="">
                           <i class="la la-map-marker"></i>
                           <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Permission') }} </span>
                           {{-- <span class="badge badge badge-info badge-pill float-right mr-2"> --}}
                       {{-- {{App\Models\Role::count()}} --}}
                   {{-- </span> --}}
                       </a>
                       <ul class="menu-content">
                           <li><a class="menu-item" href="{{route('admin.role')}}"   class="active"
                                  data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                           </li>
                           <li><a class="menu-item" href="{{route('admin.role.create')}}" data-i18n="nav.dash.crypto">
                                   أضافه جديد </a>
                           </li>
                       </ul>
                    </li>
                </ul>
            </li>

            @if(\App\Models\Role::havePremission('setting_view'))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Setting') }} </span>
                    </a>
                    <ul class="menu-content">
                        <li><a class="menu-item" href="{{route('admin.setting')}}"
                               data-i18n="nav.dash.ecommerce"> {{ __('Setting') }} </a>
                        </li>
                    </ul>
                </li>
            @endif


        </ul>
    </div>
</div>
