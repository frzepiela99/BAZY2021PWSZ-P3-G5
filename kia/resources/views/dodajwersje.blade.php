<html>
<body>
<h1>Dodaj wersje</h1>
<form action="wersja-submit" method="POST">
    @csrf

    <input type="text" name="nazwaWersja" placeholder="Nazwa wersji">
    <br>

    <button type="submit">Dodaj wersje </button>
</form>

</body>
</html>

