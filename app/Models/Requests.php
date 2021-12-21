<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Requests extends Model
{
    use HasFactory;

    protected $table = 'request';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'user_id', 'phone', 'type', 'emergency', 'state', 'specialty_id', 'service_id', 'call_him', 'call_him_time', 'visit_time_day', 'visit_time_from', 'visit_time_to', 'updated_at','created_at'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'user_id', 'phone', 'type', 'emergency', 'state', 'specialty_id', 'service_id', 'call_him', 'call_him_time', 'visit_time_day', 'visit_time_from', 'visit_time_to', 'updated_at','created_at'
        );
    }

    static public function getRequestType($type)
    {
        switch ($type){
            case 1:
                return "Emergency Call";
                break;
            case 2:
                return "Home Visit";
                break;
            case 3:
                return "Book Integrated Medical Services";
                break;
        }
        return 0;
    }

    static public function getRequestState($state)
    {
        switch ($state){
            case 0:
                return "Waiting";
                break;
            case 1:
                return "Finish";
                break;
        }
        return 0;
    }

}
