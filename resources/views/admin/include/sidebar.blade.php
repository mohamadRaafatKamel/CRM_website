<div class="main-menu menu-fixed menu-light menu-accordion    menu-shadow " data-scroll-to-active="true">
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <li class="nav-item"><a href="{{route('admin.dashboard')}}"><i class="la la-mouse-pointer"></i><span
                        class="menu-title" data-i18n="nav.add_on_drag_drop.main">{{ __('Home') }} </span></a>
            </li>

            @if(\App\Models\Role::havePremission(['request_all','request_emergency','request_out','request_in']))
            <li class="nav-item"> {{-- active --}}
                <a href=""><i class="la la-certificate"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Request') }} </span>
                </a>
                <ul class="menu-content">
                    @if(\App\Models\Role::havePremission(['request_all']))

                    <li 
                    @if(View::hasSection('request_all')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.request.cc')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Request') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('status_cc','!=',4)->where('type','!=',1)->count()}}
                            </span>
                        </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['request_emergency']))
                    <li
                    @if(View::hasSection('request_emergency')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.request.emergency')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Emergency') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',1)->count()}}
                            </span>
                        </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['request_out']))
                    <li
                    @if(View::hasSection('request_out')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.request.out')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All OutPatient') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',2)->where('status_cc',4)->where('status_in_out','!=',4)->count()}}
                            </span>
                        </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['request_in']))
                    <li
                    @if(View::hasSection('request_in')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.request.in')}}"  
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All InPatient') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',3)->where('status_cc',4)->where('status_in_out','!=',4)->count()}}
                            </span>
                        </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            @if(\App\Models\Role::havePremission(['user_patent','user_all']))
            <li class="nav-item">
                <a href=""><i class="la la-certificate"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> العملاء </span>
                </a>
                <ul class="menu-content" >

                    @if(\App\Models\Role::havePremission(['user_all']))
                    <li
                    @if(View::hasSection('all_user')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.user')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All User') }} </a>
                    </li>
                    @endif

                    @if(\App\Models\Role::havePremission(['user_patent']))
                    <li
                    @if(View::hasSection('all_patent')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.user.patent')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Patent') }} </a>
                    </li>
                    @endif
                    
                </ul>
            </li>
            @endif

            @if(\App\Models\Role::havePremission(['user_doctor','user_nurse','user_driver']))
            <li class="nav-item">
                <a href=""><i class="la la-certificate"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> {{ _('Stuff') }} </span>
                </a>
                <ul class="menu-content" >
                    @if(\App\Models\Role::havePremission(['user_doctor']))
                    <li
                    @if(View::hasSection('all_doctor')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.user.doctor')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Doctor') }} </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['user_nurse']))
                    <li
                    @if(View::hasSection('all_nurse')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.user.nurse')}}"   class="active"
                        data-i18n="nav.dash.ecommerce"> {{ __('All Nurse') }} </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['user_driver']))
                    <li
                    @if(View::hasSection('all_driver')) class="active" @endif
                    ><a class="menu-item" href="{{route('admin.user.driver')}}"   class="active"
                        data-i18n="nav.dash.ecommerce"> {{ __('All Driver') }} </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif

            @if(\App\Models\Role::havePremission(['specialty_view','specialty_cr','specialty_idt']))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> التخصصات </span>
                    </a>
                    <ul class="menu-content">
                        @if(\App\Models\Role::havePremission(['specialty_view','specialty_idt']))
                            <li
                            @if(View::hasSection('specialty_view')) class="active" @endif
                            ><a class="menu-item" href="{{route('admin.specialty')}}"
                                data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                            </li>
                        @endif
                        @if(\App\Models\Role::havePremission(['specialty_cr']))
                            <li
                            @if(View::hasSection('specialty_cr')) class="active" @endif
                            ><a class="menu-item" href="{{route('admin.specialty.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

            @if(\App\Models\Role::havePremission(['serves_view','serves_cr','serves_idt']))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> الخدمات </span>
                    </a>
                    <ul class="menu-content">
                        @if(\App\Models\Role::havePremission(['serves_view','serves_idt']))
                            <li><a class="menu-item" href="{{route('admin.service')}}"
                                data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                            </li>
                        @endif
                        @if(\App\Models\Role::havePremission(['serves_cr']))
                            <li><a class="menu-item" href="{{route('admin.service.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

            @if(\App\Models\Role::havePremission(['survay_view']))
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

            @if(\App\Models\Role::havePremission(['company_view','company_cr','company_idt']))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Company') }} </span>
                    </a>
                    <ul class="menu-content">
                        
                        @if(\App\Models\Role::havePremission(['company_view','company_idt']))
                            <li @if(View::hasSection('company_view')) class="active" @endif >
                                <a class="menu-item" href="{{route('admin.company')}}"
                                data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                            </li>
                        @endif
                        @if(\App\Models\Role::havePremission(['company_cr']))
                            <li
                            @if(View::hasSection('company_cr')) class="active" @endif
                            ><a class="menu-item" href="{{route('admin.company.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

            @if(\App\Models\Role::havePremission(['package_view','package_cr','package_idt']))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Package') }} </span>
                    </a>
                    <ul class="menu-content">
                        @if(\App\Models\Role::havePremission(['package_view','package_idt']))
                        <li
                        @if(View::hasSection('package_view')) class="active" @endif
                        ><a class="menu-item" href="{{route('admin.package')}}"
                            data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                        </li>
                        @endif
                        @if(\App\Models\Role::havePremission(['package_cr']))
                            <li
                            @if(View::hasSection('package_cr')) class="active" @endif
                            ><a class="menu-item" href="{{route('admin.package.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif

            @if(\App\Models\Role::havePremission(['referral_view','referral_cr','referral_idt']))
                <li class="nav-item">
                    <a href=""><i class="la la-map-signs"></i>
                        <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Referral') }} </span>
                    </a>
                    <ul class="menu-content">
                        @if(\App\Models\Role::havePremission(['referral_view','referral_idt']))
                        <li
                        @if(View::hasSection('referral_view')) class="active" @endif
                        ><a class="menu-item" href="{{route('admin.referral')}}"
                            data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                        </li>
                        @endif
                        @if(\App\Models\Role::havePremission(['referral_cr']))
                            <li
                            @if(View::hasSection('referral_cr')) class="active" @endif
                            ><a class="menu-item" href="{{route('admin.referral.create')}}" data-i18n="nav.dash.crypto">
                                    أضافه جديد </a>
                            </li>
                        @endif
                    </ul>
                </li>
            @endif
            @if(\App\Models\Role::havePremission(['admin_view','admin_cr','admin_idt']))
            <li class="nav-item">
                <a href=""><i class="la la-user"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Admin') }} </span>
                </a>
                <ul class="menu-content">
                    
                    @if(\App\Models\Role::havePremission(['admin_view','admin_idt']))
                    <li><a class="menu-item" href="{{route('admin.admin')}}"
                           data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['admin_cr']))
                    <li><a class="menu-item" href="{{route('admin.admin.create')}}" data-i18n="nav.dash.crypto">
                            أضافه جديد </a>
                    </li>
                    @endif
                    @if(\App\Models\Role::havePremission(['role_view','role_cr','role_idt']))
                   <li class="nav-item">
                       <a href="">
                           <i class="la la-map-marker"></i>
                           <span class="menu-title" data-i18n="nav.dash.main"> {{ __('Permission') }} </span>
                           {{-- <span class="badge badge badge-info badge-pill float-right mr-2"> --}}
                       {{-- {{App\Models\Role::count()}} --}}
                   {{-- </span> --}}
                       </a>
                       <ul class="menu-content">
                        @if(\App\Models\Role::havePremission(['role_view','role_idt']))
                           <li
                           @if(View::hasSection('role_view')) class="active" @endif
                           ><a class="menu-item" href="{{route('admin.role')}}"   class="active"
                                  data-i18n="nav.dash.ecommerce"> عرض الكل </a>
                           </li>
                           @endif
                            @if(\App\Models\Role::havePremission(['role_cr']))
                           <li><a class="menu-item" href="{{route('admin.role.create')}}" data-i18n="nav.dash.crypto">
                                   أضافه جديد </a>
                           </li>
                           @endif
                       </ul>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            @if(\App\Models\Role::havePremission(['setting_view']))
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
