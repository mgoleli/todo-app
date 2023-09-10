<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DeveloperSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('developer_skills')->insert([
            [
                'name' => 'DEV1',
                'weekly_work_hours' => 45,
                'skill_level' => '1',
            ],
            [
                'name' => 'DEV2',
                'weekly_work_hours' => 45,
                'skill_level' => '2',
            ],
            [
                'name' => 'DEV3',
                'weekly_work_hours' => 45,
                'skill_level' => '3',
            ],
            [
                'name' => 'DEV4',
                'weekly_work_hours' => 45,
                'skill_level' => '4',
            ],
            [
                'name' => 'DEV5',
                'weekly_work_hours' => 45,
                'skill_level' => '5',
            ],
        ]);
    }
}
