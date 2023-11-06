<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlaceQuestion extends Model
{
    use HasFactory;
    
    protected $table = 'place_questions';

    public function placeQuestions()
    {
        return $this->hasMany(PlaceChoices::class);
    }
}
