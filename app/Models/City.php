<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;

    protected $table = 'cities';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'governorate_id', 'city_name_ar', 'city_name_en'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'governorate_id', 'city_name_ar', 'city_name_en'
        );
    }

}
