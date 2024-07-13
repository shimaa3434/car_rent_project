<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('cars', function (Blueprint $table) {
            $table->id();
            $table->string("title");
            $table->text('content');
            $table->integer('luggage')->nullable();
            $table->integer('door')->default(4)->nullable();
            $table->integer("passengers")->nullable();
            $table->decimal('price', total: 8, places: 2)->default(0000000)->nullable();
            $table->enum('active', ['yes', 'no'])->default('no')->nullable();
            $table->binary('image')->nullable();
            $table->foreignId('category_id')->constrained(table: "categories");
            $table->foreignId("user_id")->constrained(table: "users");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
