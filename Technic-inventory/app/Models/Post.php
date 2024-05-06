<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    public $timestamps = true;
    protected $fillable = ['id','nama_barang','harga_barang','unit','quantity','mesin','user','lokasi','deskripsi','gambar'];
}
