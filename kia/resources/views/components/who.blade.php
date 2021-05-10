@if (Auth::guard('web')->check())
    <p>
    Jestes zalogowany jako <strong>USER</strong>
    </p>

@else
    <p class="text-danger">
    Zostales wylogowany z konta <strong>USER</strong>
    </p>

@endif

@if (Auth::guard('admin')->check())
    <p>
    Jestes zalogowany jako <strong>ADMIN</strong>
    </p>

@else
    <p class="text-danger">
    Zostales wylogowany z konta <strong>ADMIN</strong>
    </p>

@endif
