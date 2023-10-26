<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Dashboard</title>
</head>
<body>
    This is the Admin Dashboard
    <br><br>
    {{-- <a href="{{route('admin.approved.skills_map')}}">View Approved Skills Map</a><br><br> --}}
    <a href="{{route('approved.skills_map')}}">View Approved Skills Map</a><br><br>

    <form method="POST" action="{{ route('logout') }}">
        @csrf
        <x-dropdown-link :href="route('logout')"
                onclick="event.preventDefault();
                            this.closest('form').submit();">
            {{ __('Log Out') }}
        </x-dropdown-link>
    </form><br><br>
</body>
</html>