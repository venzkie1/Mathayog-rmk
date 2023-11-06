<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\PlacementQuestion;

class PlacementController extends Controller
{
    public function getPlacementQuestions()
    {
        // $placeQuestions = PlacementQuestion::all();
        $placeQuestions = PlacementQuestion::with('placeChoices')->get();

        return view('placement_question', compact('placeQuestions'));
    }
}
