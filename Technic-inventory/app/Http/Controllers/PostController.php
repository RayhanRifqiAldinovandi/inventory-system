<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Telegram\Bot\Laravel\Facades\Telegram;
use Telegram\Bot\FileUpload\InputFile;

class PostController extends Controller
{
    //Ambil semua data barang untuk ditampilkan di homepage
    public function fetch(){
        $barang = DB::table('posts')->paginate(10);
        return view('input', compact('barang'));
    }

    //Ambil semua data barang untuk ditampilkan di halaman log table
    public function fetchTable(){
      $barang = Post::all();
      return view('log', compact('barang'));
    }

    //Ambil data untuk halaman detail
    public function fetchWhere(){
      $id = Route::current()->parameter('id');
      $detail_data = DB::table('posts')->where('id', '=', $id)->get();
      return view('details', compact('detail_data'));
    }

    //upload data ke database
    public function store(Request $request)
    {
      $this->validate($request, [
        'nama_barang' => 'required',
        'harga_barang' => 'required|integer',
        'quantity' => 'required|integer',
        'mesin' => 'required|string',
        'lokasi' => 'required|string',
        'gambar' => 'required|image'
      ]);


    
      // Process data
      $data = $request->all();

      //Ambil address untuk gambar
      $filename = time().$request->file('gambar')->getClientOriginalName();
      $path = $request->file('gambar')->storeAs('images',$filename,'public');
      $data['gambar'] = '/storage/'.$path;
      
      
      //Upload ke database
      Post::create($data);
    
      //Data untuk dikirimkan ke telegram
      $nama = $data['nama_barang'];
      $harga = $data['harga_barang'];
      $quantity = $data['quantity'];
      $total = number_format(($harga*$quantity),0,',','.');
      $unit = $data['unit'];
      $waktu = $data['created_at'];
      $user = $data['user'];
      $lokasi = $data['lokasi'];
      $mesin = $data['mesin'];
      $gambar= storage_path('app/public/') . $path;
      
      //Kirim pesan ke telegram
      $text = "<b>Barang baru ditambahkan: </b>\n<b>Nama Barang: {$nama}</b>\n<b>Harga Barang: {$nama}</b>\n<b>Jumlah: {$quantity} {$unit}</b>\n<b>Harga Total:{$total} </b><b>Waktu Ditambahkan: {$waktu}</b>\n<b>User: {$user}</b>\n<b>Lokasi: {$lokasi}</b>\n<b>Mesin: {$mesin}</b>\n";


      Telegram::sendPhoto([
        'chat_id' => "-1002051821469",
        'photo' =>  InputFile::create($gambar,$filename),
        'caption' => $text,
        'parse_mode' => 'HTML'
      ]);
      
      
      return redirect()->back();
  }

    //Update data
    public function update(){
      $id = Route::current()->parameter('id');
      $detail_data = DB::table('posts')->where('id', '=', $id)->get();
      return view('edit', compact('detail_data'));
    }

    public function edit(Request $request){
      // $all = $request->except('0');
      $new_data = $request->all();
      $id = Route::current()->parameter('id');

      //Image handling
      $filename = time().$request->file('gambar')->getClientOriginalName();
      $path = $request->file('gambar')->storeAs('images',$filename,'public');
      $new_data['gambar'] = '/storage/'.$path;

      $item = Post::where('id',$id);

      if($new_data['quantity'] == 0){
        DB::table('posts')->where('id',$id)->delete();
      }else{
        $item->update(['nama_barang' => $new_data['nama_barang'],
          'harga_barang'=> $new_data['harga_barang'],
          'quantity'=>$new_data['quantity'],
          'unit' =>$new_data['unit'],
          'updated_at' => now(),
          'lokasi'=>$new_data['lokasi'],
          'mesin'=>$new_data['mesin'],
          'gambar'=>  $new_data['gambar']
          ]
        );
      }


      

      return redirect('/');

  }

  public function search(Request $request){
    $searching = $request->search;
    $barang = DB::table('posts')->where('nama_barang','LIKE','%'.$searching.'%')->paginate();

    return view('input',compact('barang'));
    
  }
}