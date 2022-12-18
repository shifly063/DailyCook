<h1>editable</h1>

<form action="/receipe/{{$receipe->id}}" method="POST">
    
    @csrf
    @method('PUT')
    judul : <input type="text" name="judul" value="{{$receipe->judul}}"><br>
    resep : <input type="text" name="resep" value="{{$receipe->resep}}"><br>
    keterangan : <input type="text" name="keterangan" value="{{$receipe->keterangan}}"><br>
    urlimage : <input type="text" name="urlimage" value="{{$receipe->urlimage}}"><br>
    url : <input type="text" name="url" value="{{$receipe->url}}"><br>

    <input type="submit" value="Save">
</form>