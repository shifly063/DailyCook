<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFoodreceipeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('foodreceipe', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('judul');
            $table->longText('resep');
            $table->longText('keterangan');
            $table->string('urlimage');
            $table->string('url');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('foodreceipe');
    }
}
