<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('avatar')->default('')->comment('头像');
            $table->unsignedBigInteger('mobile')->default(0)->comment('手机号码');
            $table->unsignedTinyInteger('gender')->default(0)->comment('性别 0-保密 1-男 2-女');
            $table->string('joinip', 20)->default('')->comment('注册ip');
            $table->unsignedTinyInteger('status')->default(1)->comment('状态 0-删除 1-正常 2-禁用');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
