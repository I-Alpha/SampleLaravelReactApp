<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    { 
        $this->call(CounterEventsTableSeeder::class);
       // App\Models\CounterEvents::factory(4)->create();
    }
}
