<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\PlaceQuestion;

class Place_QuestionController extends Controller
{
    public function getPlaceQuestions()
    {
        // $placeQuestions = PlacementQuestion::all();
        // $placeQuestions = PlacementQuestion::with('placeQuestions')->get();
        $placeQuestions = PlaceQuestion::with('placeQuestions')->get()->take(10);
        // dd($placeQuestions);

        return view('place_question', compact('placeQuestions'));
    }
}
