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
                    @if (isset($info['type']))
                        @if ($info['type'] == '0')
                            class="active"
                        @endif
                    @endif
                    ><a class="menu-item" href="{{route('admin.request')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Request') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::count()}}
                            </span>
                        </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.order')}}"   class="active"
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Order') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Order::count()}}
                            </span>
                        </a>
                    </li>
                    <li
                    @if (isset($info['type']))
                        @if ($info['type'] == '1')
                            class="active"
                        @endif
                    @endif
                    ><a class="menu-item" href="{{route('admin.request.emergency')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All Emergency') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',1)->count()}}
                            </span>
                        </a>
                    </li>
                    <li
                    @if (isset($info['type']))
                        @if ($info['type'] == '2')
                            class="active"
                        @endif
                    @endif
                    ><a class="menu-item" href="{{route('admin.request.visit')}}"   
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All OutPatient') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',2)->count()}}
                            </span>
                        </a>
                    </li>
                    <li
                    @if (isset($info['type']))
                        @if ($info['type'] == '3')
                            class="active"
                        @endif
                    @endif
                    ><a class="menu-item" href="{{route('admin.request.book')}}"  
                           data-i18n="nav.dash.ecommerce">
                            <span class="menu-title" data-i18n="nav.dash.main">{{ __('All InPatient') }}</span>
                            <span class="badge badge badge-info badge-pill float-right mr-2">
                                {{App\Models\Requests::where('type',3)->count()}}
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
                   <li><a class="menu-item" href="{{route('admin.user')}}"   class="active"
                                          data-i18n="nav.dash.ecommerce"> {{ __('All User') }} </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.user.patent')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Patent') }} </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.user.doctor')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Doctor') }} </a>
                    </li>
                    <li><a class="menu-item" href="{{route('admin.user.partner')}}"   class="active"
                           data-i18n="nav.dash.ecommerce"> {{ __('All Partner') }} </a>
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

            <li class="nav-item">
                <a href=""><i class="la la-user"></i>
                    <span class="menu-title" data-i18n="nav.dash.main"> الادمن </span>
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
                           <span class="menu-title" data-i18n="nav.dash.main"> الصلاحيات </span>
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
                        <span class="menu-title" data-i18n="nav.dash.main"> الاعدادات </span>
                    </a>
                    <ul class="menu-content">
                        <li><a class="menu-item" href="{{route('admin.setting')}}"
                               data-i18n="nav.dash.ecommerce"> الاعدادات </a>
                        </li>
                    </ul>
                </li>
            @endif


        </ul>
    </div>
</div>
