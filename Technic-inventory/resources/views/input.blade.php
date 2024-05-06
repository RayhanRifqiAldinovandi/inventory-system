<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    @vite('resources/css/app.css')
</head>
<body class=" left-0 right-0">
  <div class="m-0">
    @include('template.navbar')
  </div>  
    <div class="flex justify-between w-screen">

      {{-- if already logged in show "Tambah Barang" --}}
      @auth
      <div class="w-full max-sm:w-full p-3 sm:px-10 md:px-16">
        <div class="flex flex-row">
          <button class=" rounded-md bg-green-400 hover:bg-green-500 modalBtn mr-4 px-3 py-2">Tambah Barang</button>
          <form action="/cari" method="GET">
            <input type="text" name="search" placeholder="Search Barang" class=" bg-gray-300 px-3 py-2 rounded-md">
          </form>
        </div>
        @include('template.cards')
        {{$barang->links()}}
      </div>
      {{-- if not logged in hide the "Tambah Barang Button" but keep showing the cards--}}
      @else
        <button class=" hidden rounded-md bg-green-400 hover:bg-green-500 modalBtn my-5 px-3 py-2">Tambah Barang</button>
      </div>
      <div class="w-full max-sm:w-full p-3 sm:px-10 md:px-16">
        <form action="/cari" method="GET">
          <input type="text" name="search" placeholder="Search Barang" class=" bg-gray-300 px-3 py-2 rounded-md">
        </form>
        @include('template.cards')
        {{$barang->links()}}
      </div>
      @endauth
      
      @auth
      <div class="flex invisible max-md:w-20 w-full h-screen absolute justify-center align-middle flex-nowrap bg-white bg-opacity-85 p-7 modal">
        @include('template.form')
        <div class=" justify-end close">
          <button class="closeBtn bg-red-500 rounded-xl">
            <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
              <path fill-rule="evenodd" d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm7.707-3.707a1 1 0 0 0-1.414 1.414L10.586 12l-2.293 2.293a1 1 0 1 0 1.414 1.414L12 13.414l2.293 2.293a1 1 0 0 0 1.414-1.414L13.414 12l2.293-2.293a1 1 0 0 0-1.414-1.414L12 10.586 9.707 8.293Z" clip-rule="evenodd"/>
            </svg>
          </button>
        </div>
    </div>
      @else
      @endauth
    </div>

    <script>
      const btn = document.querySelector('.modalBtn')
      const modalelem = document.querySelector('.modal')
      const closeBtn = document.querySelector('.closeBtn')


      btn.addEventListener('click', function(){
        modalelem.classList.remove("invisible")
      })

      closeBtn.addEventListener('click', function(){
        modalelem.classList.add("invisible")
      })
    </script>
</body>
</html>