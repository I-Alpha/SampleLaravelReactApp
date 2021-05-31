<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\CounterEvent;
class CounterEventsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         CounterEvent::factory()->count(4)->create();
    }
}
