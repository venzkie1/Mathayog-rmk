<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ContentCreatorController;
use App\Http\Controllers\CurriculumLeadController;
use App\Http\Controllers\SearchController;
use App\Models\PlaceQuestion;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return redirect()->route('login');
});




//_______________________________________________________________________________________________________
// Welcome
Route::get('/welcome', function () {
    return view('welcome');
})->middleware(['auth', 'verified'])->name('welcome');

// Avatar
Route::get('/avatar', function () {
    return view('avatar');
})->middleware(['auth', 'verified'])->name('avatar');

// pet / companion dialog
Route::get('/companion', function () {
    return view('companion_dialog');
})->middleware(['auth', 'verified'])->name('companion');

// Pet
Route::get('/pet', function () {
    return view('pet');
})->middleware(['auth', 'verified'])->name('pet');

// questions
Route::get('/questions', function () {
    return view('questions');
})->middleware(['auth', 'verified'])->name('questions');

// choose plane / map
Route::get('/choose_plane', function () {
    return view('choose_plane');
})->middleware(['auth', 'verified'])->name('choose_plane');

// placement
Route::get('/placement', function () {
    return view('placement');
})->middleware(['auth', 'verified'])->name('placement');

// flight
Route::get('/flight', function () {
    return view('flight');
})->middleware(['auth', 'verified'])->name('flight');

// placement questions
// Route::get('/placement_question', function () {
//     return view('placement_question');
// })->middleware(['auth', 'verified'])->name('placement_question');
Route::get('/placement_question', function () {
    $placeQuestions = PlaceQuestion::all();
    return view('placement_question', compact('placeQuestions'));
})->middleware(['auth', 'verified'])->name('placement_question');



//_______________________________________________________________________________________________________
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

//Content Creator
Route::middleware(['auth', 'role:content_creator'])->group(function () {
    Route::get('/content_creator/dashboard', [ContentCreatorController::class, 'CCDashboard'])->name('cc.dashboard');
    Route::get('/content_creator/skills_map/level', [ContentCreatorController::class, 'CCLevel'])->name('content_creator.level');
    Route::get('/content_creator/skills_map/sub_topic', [ContentCreatorController::class, 'CCSubTopic'])->name('content_creator.sub_topic');
    Route::post('/content_creator/skills_map/level/post', [ContentCreatorController::class, 'CCPostLevel'])->name('content_creator.post_level');
});
Route::get('/content_creator/login', [ContentCreatorController::class, 'CCLogin'])->name('cc.login');


//Admin
Route::middleware(['auth', 'role:admin'])->group(function () {
    Route::get('/admin/dashboard', [AdminController::class, 'AdminDashboard'])->name('admin.dashboard');
    Route::get('/admin/approved/skills_map', [AdminController::class, 'AdminApprovedSkillsMap'])->name('admin.approved.skills_map');
    Route::get('/admin/publish/skills_map/{id}', [AdminController::class, 'AdminPublishSkillsMap'])->name('admin.publish.skills_map');
    Route::post('/admin/skills_map/update', [AdminController::class, 'AdminSkillsMapUpdate'])->name('admin.update.skills_map');
    Route::get('/admin/approved/skills/map', [AdminController::class, 'ApprovedSkillsMap'])->name('approved.skills_map');
});

//Curr_Lead
Route::middleware(['auth', 'role:curriculum_lead'])->group(function () {
    Route::get('/curriculum_lead/dashboard', [CurriculumLeadController::class, 'CurriculumLeadDashboard'])->name('curriculum_lead.dashboard');
    Route::get('/curriculum_lead/skills/map/notification', [CurriculumLeadController::class, 'SkillsMapNotification'])->name('curriculum_lead.skills.map.notification');
    Route::get('/curriculum_lead/skills/map/confirm/{id}', [CurriculumLeadController::class, 'SkillsMapConfirm'])->name('confirm.skills_map');
    Route::post('/curriculum_lead/skills/map/update', [CurriculumLeadController::class, 'SkillsMapUpdate'])->name('update.skills_map');
});
