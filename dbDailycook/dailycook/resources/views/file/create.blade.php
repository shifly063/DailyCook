<h1>add</h1>

<form action="/receipe" method="POST">
    @csrf
    judul : <input type="text" name="judul"><br>
    resep : <input type="text" name="resep"><br>
    keterangan : <input type="text" name="keterangan"><br>
    urlimage : <input type="text" name="urlimage"><br>
    url : <input type="text" name="url"><br>

    <input type="submit" value="Save">
</form>