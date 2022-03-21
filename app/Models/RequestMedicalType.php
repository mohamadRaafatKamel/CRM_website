<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class RequestMedicalType extends Model
{
    use HasFactory;

    protected $table = 'request_medical_type';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'medical_type_id', 'request_id', 'note', 'admin_id', 'created_at', 'updated_at'
    ];

    public function  scopeSelection($query){
        $query -> where('status','!=',9); // Not Deleted 
        return $query -> select(
            'id', 'medical_type_id', 'request_id', 'note', 'admin_id', 'created_at', 'updated_at'
        );
    }
}
