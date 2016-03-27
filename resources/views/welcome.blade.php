@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Welcome</div>

                <div class="panel-body">
                    Your Application's Landing Page.
                    <div class="panel-body">
                    <h2>Users Registered List ({{$counts}})
                    </h2>
                    <table class="table table-hover table-striped">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Provider</th>
                    </tr>
                    @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->provider }}</td>
                    </tr> 
                    @endforeach
                    </table>
                    {!! $users->render() !!}
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
