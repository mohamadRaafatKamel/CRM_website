@extends('layouts.admin')

@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <div id="crypto-stats-3" class="row">
                    <div class="col-xl-4 col-12">
                        <div class="card crypto-card-3 pull-up">
                            <div class="card-content">
                                <div class="card-body pb-0">
                                    <div class="row">

                                        <div class="col-5 pl-2">
                                            <h4>{{ __('All Emergency') }} </h4>
                                        </div>
                                        <div class="col-5 text-right">
                                           <h4>{{App\Models\Requests::where('type',1)->count()}}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="btc-chartjs" class="height-75"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-12">
                        <div class="card crypto-card-3 pull-up">
                            <div class="card-content">
                                <div class="card-body pb-0">
                                    <div class="row">
                                        <div class="col-5 pl-2">
                                            <h4>{{ __('All Visit') }}</h4>
                                        </div>
                                        <div class="col-5 text-right">
                                           <h4>{{App\Models\Requests::where('type',2)->count()}}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="eth-chartjs" class="height-75"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-12">
                        <div class="card crypto-card-3 pull-up">
                            <div class="card-content">
                                <div class="card-body pb-0">
                                    <div class="row">

                                        <div class="col-5 pl-2">
                                            <h4>{{ __('All Book') }}</h4>
                                        </div>
                                        <div class="col-5 text-right">
                                           <h4>{{App\Models\Requests::where('type',3)->count()}}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <canvas id="xrp-chartjs" class="height-75"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Candlestick Multi Level Control Chart -->
            </div>
            <section id="sortable-lists">
                {{-- <div class="row">
                  <div class="col-12 mt-1 mb-3">
                    <h4>Sortable Lists</h4>
                    <hr>
                  </div>
                </div>
                <div class="row">
                    <!-- List Group With Tags -->
                    <div class="col-lg-6">
                        <div class="mb-1">
                        <h5 class="mb-0">List Group With Tags</h5>
                        <small class="text-muted">The most basic list group is simply an unordered list with list items,
                            and the proper classes.</small>
                        </div>
                        <div class="card">
                        <ul class="list-group" id="list-group-tags">
                            <li class="list-group-item">
                            <span class="badge badge-primary badge-pill float-right">14</span>
                            Cras justo odio
                            </li>
                            <li class="list-group-item">
                            <span class="badge badge-primary badge-pill float-right">2</span>
                            Dapibus ac facilisis in
                            </li>
                            <li class="list-group-item">
                            <span class="badge badge-primary badge-pill float-right">1</span>
                            Morbi leo risus
                            </li>
                            <li class="list-group-item">
                            <span class="badge badge-primary badge-pill float-right">6</span>
                            Porta ac consectetur ac
                            </li>
                            <li class="list-group-item">
                            <span class="badge badge-primary badge-pill float-right">3</span>
                            Vestibulum at eros
                            </li>
                        </ul>
                        </div>
                    </div>
                </div> --}}
            </section>
        </div>
    </div>
@endsection
