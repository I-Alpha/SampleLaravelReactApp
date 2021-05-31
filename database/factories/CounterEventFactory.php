<?php

namespace Database\Factories;

use App\Models\CounterEvent;
use Illuminate\Database\Eloquent\Factories\Factory;

class CounterEventFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CounterEvent::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'lastAction' => $this->faker->randomElement(array('DOWN','UP')),
            'counterValue' => $this -> faker->randomDigit(),
        ];
    }
}
