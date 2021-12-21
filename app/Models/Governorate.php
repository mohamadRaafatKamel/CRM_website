<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Governorate extends Model
{
    use HasFactory;

    protected $table = 'governorates';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'governorate_name_ar', 'governorate_name_en'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'governorate_name_ar', 'governorate_name_en'
        );
    }

}
