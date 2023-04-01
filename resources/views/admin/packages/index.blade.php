@extends('admin.layouts.master')

@section('content')

    @if(config('app.demo') !== true || config('app.debug') == true)
        <div class="alert alert-danger">
            <h4><i class="fa fa-exclamation-triangle"></i> {{ trans('app.alert') }}</h4>
            {!! trans('messages.be_careful_sensitive_area') !!}
        </div>

        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">{{ trans('app.available_packages') }}</h3>
                <div class="box-tools pull-right">
                </div>
            </div> <!-- /.box-header -->
            <div class="box-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th width="30%">{{ trans('app.package')}}</th>
                            <th>&nbsp;</th>
                            <th>{{ trans('app.description')}}</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($installables as $package)
                        @php
                            $dependencies = $package['dependency'];
                            $can_load = ! (bool) $dependencies;
                            $registered = $installs->where('slug', $package['slug'])->first();

                            if (! $can_load) {
                                $arr = explode(',', $dependencies);
                                $can_load = is_incevio_package_loaded($arr);
                                $dependencies = count($arr) > 1 ? strrev(implode(strrev(', '.trans('app.and') .' '), explode(strrev(','), strrev($dependencies), 2))) : $dependencies;
                            }

                            // Forcefully deactivate the dependent packages
                            if ($registered && $registered->active && ! $can_load) {
                                $registered->deactivate();
                            }
                        @endphp
                        <tr>
                            <td>
                                <h4 class="text-{{ $registered ? 'primary' : 'muted'}}">
                                    <i class="fa fa-{{$package['icon'] ?? 'puzzle-piece'}} text-muted"></i>&nbsp;
                                    {{ $package['name'] }}
                                </h4>

                                @unless($can_load)
                                    <small class="text-danger">
                                        <i class="fa fa-ban"></i>
                                        {{ trans('help.package_dependency_not_loaded', ['dependency' => $dependencies]) }}
                                    </small>
                                @endunless

                                @if($registered)
                                    @unless($registered->active && $package['active'] == false)
                                        {!! Form::open(['route' => ['admin.package.uninstall', $package['slug']]]) !!}
                                            <button type="submit" class="confirm btn btn-sm btn-link" data-confirm="{!! trans('help.confirm_uninstall_package', ['package' => $package['name']]) !!}">
                                                <i class=" fa fa-trash-o"></i> {{ trans('app.uninstall') }}
                                            </button>
                                        {!! Form::close() !!}
                                    @endunless
                                @elseif($can_load)
                                    <a href="javascript:void(0)" data-link="{{ route('admin.package.initiate', $package['slug']) }}" type="button" class="btn btn-md btn-secondary ajax-modal-btn">
                                        <i class=" fa fa-wrench"></i> {{ trans('app.install') }}
                                    </a>
                                @endif
                            </td>
                            <td>
                                @if($registered && $package['active'] == false)
                                    <div class="handle horizontal">
                                        <a href="javascript:void(0)" data-link="{{ route('admin.package.switch', $package['slug']) }}" type="button" class="btn btn-md btn-secondary btn-toggle {{ $registered && $registered->active ? 'active' : '' }}" data-doafter="reload" data-toggle="button" aria-pressed="{{ $registered && $registered->active ? 'true' : 'false' }}" autocomplete="off" {{ $can_load ? '' : 'disabled' }}>
                                            <div class="btn-handle"></div>
                                        </a>
                                    </div>
                                @endif
                            </td>
                            <td>
                                <p>{{ $package['description'] }}</p>

                                <span class="text-muted small">
                                    @if($registered)
                                        {{ trans('app.installed_at') . ' ' . $registered->created_at }} &bull;
                                        {{ trans('app.updated_at') . ' ' . $registered->updated_at }} &bull;
                                    @endif

                                    {{ trans('app.version') . ' ' . $package['version'] }}
                                </span>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div> <!-- /.box-body -->
        </div> <!-- /.box -->
    @else
        <div class="alert alert-info">
            <h4><i class="fa fa-info"></i> {{ trans('app.info') }}</h4>
            {!! trans('messages.not_accessible_on_demo') !!}
        </div>
    @endif

    <div class="panel panel-success">
        <div class="panel-heading">
            <i class="fa fa-rocket"></i>
            Looking for a custom packages?
        </div>
        <div class="panel-body">
            Send us an email for any kind of modification or custom work as we know the code better than everyone.
        </div>
    </div>
@endsection