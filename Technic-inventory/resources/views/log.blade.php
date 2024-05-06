<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @vite('resources/css/app.css')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>
    <title>Document</title>
</head>
<body>
<div class="m-0">
    @include('template.navbar')
  </div>
<div class="flex py-8 px-8 justify-center">
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg align-middle">
        <table id= "logtable" class="table w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        Nama Barang
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Harga Barang 
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Jumlah Stok
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Unit
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Mesin
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Lokasi
                    </th>
                    <th scope="col" class="px-6 py-3">
                        User
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Waktu Ditambahkan
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Waktu Diubah
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($barang as $b)    
                <tr class="odd:bg-white  even:bg-gray-50 even:dark:bg-gray-200 border-b dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium whitespace-nowrap ">
                        {{$b->nama_barang}}
                    </th>
                    <td class="px-6 py-4">
                        Rp{{number_format(($b->quantity * $b->harga_barang ),0,',','.')}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->quantity}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->unit}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->mesin}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->lokasi}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->user}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->created_at}}
                    </td>
                    <td class="px-6 py-4">
                        {{$b->updated_at}}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

<script>
$(document).ready( function () {
    $('#logtable').DataTable()
} );
</script>
</body>
</html>