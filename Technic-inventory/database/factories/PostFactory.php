<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //

            'nama_barang'=> $this->faker->randomElement(['Gerinda','Gear','Pendingin','Filtrasi','Gergaji','Baut']),
            'user'=>$this->faker->name(),
            'harga_barang'=>$this->faker->numberBetween(100000,10000000),
            'quantity'=>$this->faker->numberBetween(1,10),
            'unit' =>$this->faker->randomElement(['Unit','Pcs']),
            'updated_at' => now(),
            'created_at'=>now(),
            'lokasi'=>$this->faker->randomElement(['Pulogadung','Cikarang','Pulomas']),
            'mesin'=>$this->faker->randomElement(['SVG','Pengelasan','Bor','Pengemasan']),
            'gambar'=>$this->faker->imageUrl(640, 480, 'animals', true),
            'deskripsi'=>$this->faker->paragraph()
        ];
    }
}
