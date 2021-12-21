<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;

    protected $table = 'countries';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'country_code', 'country_enName', 'country_arName', 'country_enNationality', 'country_arNationality'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'country_code', 'country_enName', 'country_arName', 'country_enNationality', 'country_arNationality'
        );
    }

}
