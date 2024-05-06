<div class="grid grid-cols-2 my-6 md:grid-cols-6 sm:grid-cols-2 gap-5">
      @foreach ($barang as $b)
      <div
          class="border-r border-b border-l border-1 border-gray-400 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r flex flex-col  justify-between leading-normal">
          <img src="{{$b->gambar}}" class="w-full mb-3">
          <div class="p-4 pt-2">
              <div class="mb-8">
                  <a href="/details/{{$b->id}}" class="text-gray-900 font-bold text-lg mb-2 hover:text-indigo-600 inline-block">
                      {{$b->nama_barang}}</a>
                  <p class="text-gray-700 my-2 text-sm">Rp{{number_format(($b->harga_barang ),0,',','.')}}</p>
                  <p class="text-gray-700 my-2 text-sm">Rp{{number_format(($b->quantity * $b->harga_barang ),0,',','.')}}</p>
                  <p class="text-gray-700 my-2 text-sm">{{$b->mesin}}</p>
                  <p class="text-gray-700 my-2 text-sm">{{$b->lokasi}}</p>
              </div>
              <div class="flex items-center">
                <svg class="w-6 mr-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M304 128a80 80 0 1 0 -160 0 80 80 0 1 0 160 0zM96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM49.3 464H398.7c-8.9-63.3-63.3-112-129-112H178.3c-65.7 0-120.1 48.7-129 112zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3z"/></svg>
                  <div class="text-sm">
                      <a href="#" class="text-gray-900 font-semibold leading-none hover:text-indigo-600">{{$b->user}}</a>
                      <p class="text-gray-600">{{$b->created_at}}</p>
                  </div>
              </div>
          </div>
      </div>
      @endforeach
  </div>