<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tm_events', function (Blueprint $table) {
            $table->id();

            $table->string('event_name');
            $table->string('event_url');
            $table->timestamp('event_date')->nullable();
            $table->string('event_venue');
            $table->string('segment_id')->nullable();
            $table->string('genre_id')->nullable();
            $table->string('subgenre_id')->nullable();
            $table->string('event_city');
            $table->string('event_state');
            $table->string('event_zip');
            $table->string('event_country')->nullable();
            $table->string('event_tm_seat_id')->nullable();
            $table->string('event_tm_id')->nullable();
            $table->string('event_tm_venue_id')->nullable();
            $table->integer('inventory')->nullable();
            $table->integer('resale_inventory')->nullable();
            $table->boolean('is_resale')->nullable();
            $table->string('tm_event_status')->nullable();
            $table->timestamps();
            $table->boolean('ignore_scraping')->nullable();
            $table->string('scrape_status')->nullable();
            $table->string('event_timezone')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tm_events');
    }
};
