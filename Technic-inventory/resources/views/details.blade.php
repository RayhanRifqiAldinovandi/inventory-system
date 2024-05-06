<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @vite('resources/css/app.css')
    <title>Document</title>
</head>
<body>
  <div class="m-0">
    @include('template.navbar')
  </div>
      <div class="flex  flex-row flex-wrap mx-5 my-8">
          @foreach ($detail_data as $d)
            <img src="{{$d->gambar}}" class="rounded-xl max-w-lg max-md:max-w-sm bg-white shadow-md mb-3" alt="">
            <div class="m-4 font-mono w-1/2 max-md:w-fit">
                <h1 class="font-bold text-5xl">{{$d->nama_barang}}</h1>
                <p class="font-bold text-2xl">Rp.{{number_format(($d->harga_barang),0,',','.')}}</p>
                <p>Jumlah stok: {{$d->quantity }} {{$d->unit}}</p>
                <p>Harga Total: Rp{{number_format(($d->quantity * $d->harga_barang ),0,',','.')}}</p>
                <p>Mesin: {{$d->mesin}}</p>
                <p>Lokasi: {{$d->lokasi}} </p>
                <p>User: {{$d->user}}</p>
                <p>Waktu ditambahkan: <span class="text-green-600">{{$d->created_at}}</span></p>
                <p>{{$d->deskripsi}}</p>
                @auth
                <form action="/details/{{$d->id}}/edit" method="get">
                    <button class="bg-green-500 hover:bg-green-600 p-4 my-4"  type="submit">Edit Barang</button>
                </form>
                @else
                <form action="/details/{{$d->id}}/edit" method="get">
                  <button class="bg-green-500 hidden hover:bg-green-600 p-4 my-4"  type="submit">Edit Barang</button>
                </form>
                @endauth
            </div>
          @endforeach
      </div>
</body>
</html>