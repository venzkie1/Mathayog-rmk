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
        Schema::create('place_topics', function (Blueprint $table) {
            $table->id();
            $table->timestamps();

            $table->string('topic_name')->nullable();
            $table->unsignedBigInteger('placement_question_id')->nullable();
            $table->foreign('placement_question_id')->references('id')->on('placement_questions')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('place_topics');
    }
};
