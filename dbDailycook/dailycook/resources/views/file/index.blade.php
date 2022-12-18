<h1>haha</h1>
<div class="row">
    <div class="col-md-6">
        <form action="/receipe">
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Search" name="search">
              <button class="btn btn-outline-info" type="submit" >search</button>
            </div>
        </form>
    </div>
</div>
<table>
    <thead>
        <tr>
            <th>Judul</th>
            <th>Resep</th>
            <th>Keterangan</th>
            <th>image</th>
            <th>url</th>
        </tr>
    </thead>
    <tbody>
        @foreach($rec as $receipe)
        <tr>
            <td>{{$receipe->judul}}</td>
            <td>{{$receipe->resep}}</td>
            {{-- <td>{{$receipe->keterangan}}</td> --}}
            <td>{{$receipe->urlimage}}</td>
            <td>{{$receipe->url}}</td>
            <td>
                <a href="/receipe/{{$receipe->id}}/edit">edit</a>
                <form action="/receipe/{{$receipe->id}}" method="POST">
                    @csrf
                    @method('DELETE')
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        @endforeach
        
    </tbody>
    <a href="/receipe/create">add</a>
</table>