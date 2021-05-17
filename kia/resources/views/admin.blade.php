@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                   @component('components.who')
                   @endcomponent

                  <a href="http://kia.test/dodajkolorform" class="btn btn-primary" role="button" data-bs-toggle="button">Dodaj kolor</a>
                  <a href="http://kia.test/dodajwersjeform" class="btn btn-primary" role="button" data-bs-toggle="button">Dodaj wersje</a>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
