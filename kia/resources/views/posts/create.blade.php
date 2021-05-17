<form action="/posts" method="POST">
    @csrf

    <input type="text" name="title">

    <textarea name="body"></textarea>

    <input type="submit" value="Zapisz">
</form>

@if ($errors->any())
    <div style="color: red;">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
