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
        Schema::create('placement_questions', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('grade_level')->nullable();
            $table->string('skill_level')->nullable();
            $table->string('content_area')->nullable();
            $table->string('pisa_framework')->nullable();
            $table->string('solo_framework')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('placement_questions');
    }
};
