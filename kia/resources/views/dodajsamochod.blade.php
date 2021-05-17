<html>
<body>
<h1>
<form action="submit" method="POST">
    @csrf

    <input type="text" name="nazwaKolor" placeholder="Nazwa koloru">
    <br>
    <input type="number" name="cenaKolor" placeholder="Cena">

    <button type="submit">Dodaj kolor </button>
</form>

</body>
</html>
