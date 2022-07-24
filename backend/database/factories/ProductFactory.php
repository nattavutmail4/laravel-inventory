<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Faker\Generator as Faker;
use App\Models\Product;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // return [
        //     'name' =>$this->faker->text(30),
        //     'slug' =>$this->faker->text(30),
        //     'description'=>$this->faker->text(100),
        //     'price' =>$this->faker->numberBetween(10,10000)
        // ];
        return [
            'name' =>$this->faker->slug(),
            'slug' =>$this->faker->slug(),
            'description'=>$this->faker->text(30),
            'price' =>$this->faker->numberBetween(10,10000)
        ];
    }
}
