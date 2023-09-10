<?php

namespace App\Http\Controllers;

use App\Models\Jobs;
use App\Models\Developer;
use App\Models\developer_jobs;

class TodoPlannerController extends Controller
{
    public function index()
    {
        $jobs = Jobs::orderByDesc('difficulty')->orderBy('duration')->get();
        $developers = Developer::orderByDesc('skill_level')->get();

        $remainingJobs = $jobs->count();
        $weeks = 1;
        $weeklyPlan = [];


        while ($remainingJobs > 0) {
            $weekPlan = [];

            foreach ($developers as $developer) {

                $calculateWeeklyWorkCapacity  = 45;

                foreach ($jobs as $job) {

                    $remainingJobsPerDeveloper[$developer->id] = $developer->jobs()->pluck('jobs.id')->toArray();

                    if ($developer->canHandleJob($job, $developer)) {

                        $assignedHours = min($calculateWeeklyWorkCapacity, $job->duration);
                        $calculateWeeklyWorkCapacity -= $assignedHours;
                        $job->duration -= $assignedHours;

                        $weekPlan[] = [
                            'developer' => $developer->name,
                            'job' => $job->title,
                            'duration' => $assignedHours,
                        ];

                        // İş tamamlandıysa işi kaldır
                        if ($job->duration <= 0) {
                            $jobs = $jobs->except($job->id);
                            $remainingJobs--;
                        }
                    }
                }
            }

            $weeklyPlan[$weeks] = $weekPlan;
            $weeks++;


            $developerJobs = developer_jobs::all();

            return view('weekly_plan', compact('developerJobs', 'weeks'));
        }
    }
}
