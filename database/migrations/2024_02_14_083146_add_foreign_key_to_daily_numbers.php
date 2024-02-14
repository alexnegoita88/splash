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
        Schema::table('tm_daily_numbers', function (Blueprint $table) {
            $table->foreign('tm_event_id')->references('id')->on('tm_events');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tm_daily_numbers', function (Blueprint $table) {
            $table->dropForeign(['tm_event_id']);
        });
    }
};
