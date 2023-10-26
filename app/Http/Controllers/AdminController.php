<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SkillsMapData;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    //
    public function AdminDashboard()
    {
        return view('Admin.admin_dashboard');
    }

    public function AdminApprovedSkillsMap()
    {
        $id = Auth::user()->id;
        $usermsg = SkillsMapData::where('admin_id', $id)->get();
        return view('Admin.approvedSkills_map', compact('usermsg'));
    }

    public function AdminPublishSkillsMap($id)
    {
        $skills = SkillsMapData::findOrFail($id);
        return view('Admin.publish_skillsMap', compact('skills'));
    }

    public function AdminSkillsMapUpdate(Request $request)
    {
        $skillsMap_id = $request->id;

        SkillsMapData::findOrFail($skillsMap_id)->update([
            'status2' => '1'
        ]);

        $notification = array(
            'message' => 'You have published the Skills Map Request successfully!',
            'alert-type' => 'success'
        );
        return redirect()->route('admin.approved.skills_map')->with($notification);
    }





    public function ApprovedSkillsMap(Request $request)
    {
        $query = DB::table('levels')
            ->join('topics', 'levels.id', '=', 'topics.level_id')
            ->join('sub_topics', 'topics.id', '=', 'sub_topics.topic_id')
            ->join('course_skill_titles', 'sub_topics.id', '=', 'course_skill_titles.sub_topic_id')
            ->select(
                'levels.level as Level',
                'levels.content_area as Content_Area',
                'levels.pisa_framework as PISA_Framework',
                'topics.topic_title as Topics',
                'sub_topics.sub_topic_title as Sub_Topics',
                'course_skill_titles.skill_name as Course_Skill',
                'course_skill_titles.course_title as Course_Title'
            );

        $searchQuery = $request->input('query');

        if ($searchQuery) {
            $query->where(function ($query) use ($searchQuery) {
                $query->where('levels.level', 'like', '%' . $searchQuery . '%')
                    ->orWhere('levels.content_area', 'like', '%' . $searchQuery . '%')
                    ->orWhere('levels.pisa_framework', 'like', '%' . $searchQuery . '%')
                    ->orWhere('topics.topic_title', 'like', '%' . $searchQuery . '%')
                    ->orWhere('sub_topics.sub_topic_title', 'like', '%' . $searchQuery . '%')
                    ->orWhere('course_skill_titles.skill_name', $searchQuery)
                    ->orWhere('course_skill_titles.course_title', $searchQuery);
            });
        }

        $totalCount = $query->count();

        $data = $query->paginate(10);

        return view('admin.practice_relationship', compact('data', 'searchQuery', 'totalCount'));
    }
}
