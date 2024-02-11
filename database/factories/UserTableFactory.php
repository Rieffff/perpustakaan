<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

class UserTableFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => "Arief Muhammad",
            'email' => "mmaarif0306@gmail.com",
            'email_verified_at' => now(),
            'password' => '$2y$10$P34Xt6avXwkqeI19EajPMehylVaqgAqOGqA.Kt61LH.94n21Siiy6', // 
            'remember_token' => Str::random(10),
        ];
    }
}
