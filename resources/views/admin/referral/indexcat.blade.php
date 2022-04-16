@extends('layouts.admin')
@section('title', __('Referral Category'))
@section('referral_cat','')
@section('content')
    <div class="app-content content">
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-md-6 col-12 mb-2">
                    <h3 class="content-header-title">  {{ __('Referral Category') }} </h3>
                    <div class="row breadcrumbs-top">
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">الرئيسية</a>
                                </li>
                                <li class="breadcrumb-item active">  {{ __('Referral Category') }}
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content-body">
                
                <!-- Basic form layout section start -->
                <section id="basic-form-layouts">
                    <div class="row match-height">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" id="basic-layout-form"><b> <i class="ft-phone"></i> {{ __('Category') }} </b> </h4>
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
                                    <div class="card-body">

                                            <div class="form-body">
                                                
                                            <form class="form" action="{{route('admin.referral.cat.store')}}" 
                                                method="POST" enctype="multipart/form-data">
                                                @csrf
                                                
                                                
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label for="name"> {{ __('Category Name') }}</label>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            
                                                            <input type="text" id="name" 
                                                                   class="form-control" required
                                                                   placeholder="{{ __('Category Name') }} "
                                                                   name="name">
                                                            @error('name')
                                                            <span class="text-danger">{{$message}}</span>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <label for="name"> {{ __('Category Parent') }}</label>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="select2 form-control" name="parent">
                                                            <option value="">-- {{ __('Category Parent') }} --</option>
                                                            @foreach($parentCats as $parentCat)
                                                                <option value="{{ $parentCat->id }}">
                                                                    {{ $parentCat->name}}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <button type="submit" name="btn" value="nurseSheet" class="btn btn-success">
                                                             {{ __('Add') }}
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>

                                                @if (isset($cats))
                                                    @if (count($cats) > 0)
                                                    <div class="row">
                                                        <table class="table table-striped table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th> {{ __('ID') }}</th>
                                                                    <th> {{ __('Category Name') }}</th>
                                                                    <th> {{ __('Category Parent') }}</th>
                                                                    <th> </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            @foreach ($cats as $cat)
                                                                <tr>
                                                                    <td class="id">{{ $cat->id }}</td>
                                                                    <td class="name">{{ $cat->name }}</td>
                                                                    <td class="parent">{{ $cat->getParent() }}</td>
                                                                    <td>
                                                                        @if( \App\Models\Role::havePremission(['referral_cat_del']))
                                                                            <a href="{{route('admin.referral.cat.delete',$cat->id)}}" class="btn btn-danger" ><i class="ft-trash-2"></i></a>
                                                                        @endif
                                                                        
                                                                        <button type="button" class="btn btn-primary editcatrefrl" value="{{ $cat->id }}" >
                                                                            {{-- data-toggle="modal" data-target="#editModalCenter"> --}}
                                                                            <i class="ft-edit"></i></button>
                                                                    </td>
                                                                </tr>
                                                            @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    @endif
                                                    @endif

                                            </div>



                                            <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModalCenter">
    Launch demo modal
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="editModalCenter" tabindex="-1" role="dialog" aria-labelledby="editModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editModalCenterTitle">{{ __('Edit') }}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          {{-- state body --}}
            <div class="row">
                <div class="col-md-3">
                    <label for="name"> {{ __('Category Name') }}</label>
                </div>
                <div class="col-md-9">
                    <div class="form-group">
                        
                        <input type="text" id="name" 
                            class="form-control" required
                            placeholder="{{ __('Category Name') }} "
                            name="name">
                        @error('name')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label for="name"> {{ __('Category Parent') }}</label>
                </div>
                <div class="col-9">
                    <select class="select2 form-control" name="parent" style="width: 100%;">
                        <option value="">-- {{ __('Category Parent') }} --</option>
                        @foreach($parentCats as $parentCat)
                            <option value="{{ $parentCat->id }}">
                                {{ $parentCat->name}}
                            </option>
                        @endforeach
                    </select>
                </div>
                
            </div>
        {{-- state body --}}
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Close') }}</button>
          <button type="button" class="btn btn-primary">{{ __('Save') }}</button>
        </div>
      </div>
    </div>
  </div>


                                            
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- // Basic form layout section end -->
            
            </div>
        </div>
    </div>
@endsection

@section('script')

<script>
    $(document).ready(function(){
        // Open modal on page load
        // $("#editModalCenter").modal('show');
        // $("#editModalCenter").modal('hide');

        // edit
        $(".editcatrefrl").click(function(){
            console.log($(this).val() );
            // ceate json
            // set val in model
            // show model
            $("#editModalCenter").modal('show');
        });
    });
</script>


@endsection