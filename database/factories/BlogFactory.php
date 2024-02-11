<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

use App\Blog;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

class BlogFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
        'slug' => $this->faker->slug(),
        'judul' => $this->faker->slug(),
        'header' => "header.jpg",
        'isi' => $this->faker->realText($maxNbChars = 200, $indexSize = 2), // 
        'status' => "on",
        'User_id' => "1",
        ];
    }
}
