<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => "Arief Muhammad",
        'email' => "mmaarif0306@gmail.com",
        'email_verified_at' => now(),
        'password' => '$2y$10$P34Xt6avXwkqeI19EajPMehylVaqgAqOGqA.Kt61LH.94n21Siiy6', // 
        'remember_token' => Str::random(10),
    ];
});
