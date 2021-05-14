<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePosttwosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posttwos', function (Blueprint $table) {
            $table->id();
            $table->String('name');
            $table->foreignId('user_id')->constrained('users');
            $table->foreignId('category_id')->constrained('categories');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.s
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posttwos');
    }
}
