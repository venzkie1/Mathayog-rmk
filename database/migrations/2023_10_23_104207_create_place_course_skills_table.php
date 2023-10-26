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
        Schema::create('place_course_skills', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('course_skill_name')->nullable();
            $table->unsignedBigInteger('sub_topic_id')->nullable();
            $table->foreign('sub_topic_id')->references('id')->on('place_sub_topics')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('place_course_skills');
    }
};
