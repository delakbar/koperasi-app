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
        $tableName = 'shu_anggota';
            Schema::create($tableName, function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('anggota_id')->index();
                $table->decimal('shu_simpanan', 15, 2)->default(0);
                $table->decimal('shu_pinjaman', 15, 2)->default(0);
                $table->decimal('total_shu', 15, 2)->default(0);
                // Foreign key constraint
                // $table->foreign('anggota_id')->references('id')->on('anggota')->onDelete('cascade');
            });
    }
};

