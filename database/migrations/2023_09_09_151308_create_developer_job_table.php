<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDeveloperJobTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('developer_jobs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('developer_id');
            $table->unsignedBigInteger('jobs_id');
            $table->integer('assigned_hours');
            $table->timestamps();

            $table->foreign('developer_id')->references('id')->on('developer_skills')->onDelete('cascade');
            $table->foreign('jobs_id')->references('id')->on('jobs')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('developer_job');
    }
}
