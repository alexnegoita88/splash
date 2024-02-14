<?php

namespace Database\Factories;

use Event;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Events>
 */
class EventsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'event_name' => fake()->name,
            'event_url' => fake()->url,
            'event_date' => fake()->date,
            'event_venue' => Str::random(5),
            'segment_id' => Str::random(5),
            'genre_id' => Str::random(5),
            'subgenre_id' => Str::random(5),
            'event_city' => fake()->city,
            'event_state' => fake()->state,
            'event_zip' => fake()->postcode,
            'event_country' => fake()->country,
            'event_tm_seat_id' => Str::random(2),
            'event_tm_id' => Str::random(2),
            'event_tm_venue_id' => Str::random(2),
            'inventory' => fake()->randomNumber(2),
            'resale_inventory' => fake()->randomNumber(2),
            'is_resale' => fake()->boolean,
            'tm_event_status' => Str::random(2),
            'ignore_scraping' => fake()->boolean,
            'scrape_status' => fake()->boolean,
            'event_timezone' => fake()->timezone,
        ];
    }
}
