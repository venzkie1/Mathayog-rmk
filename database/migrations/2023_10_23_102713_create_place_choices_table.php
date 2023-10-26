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
        Schema::create('place_choices', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('choices')->nullable();
            $table->unsignedBigInteger('place_question_id')->nullable();
            $table->foreign('place_question_id')->references('id')->on('place_questions')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('place_choices');
    }
};
