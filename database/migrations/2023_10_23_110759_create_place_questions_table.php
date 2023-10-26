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
        Schema::create('place_questions', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('place_question_title')->nullable();
            $table->unsignedBigInteger('course_skill_id')->nullable();
            $table->foreign('course_skill_id')->references('id')->on('place_course_skills')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('place_questions');
    }
};
