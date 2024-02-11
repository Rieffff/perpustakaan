<?php

use Illuminate\Database\Seeder;
use App\Blog;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
        $blog = Blog::factory(10)->create();

    }
}
