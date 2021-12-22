<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'orders';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'user_id', 'doctor_id', 'governorate_id', 'city_id', 'adress', 'adress2', 'request_id', 'phone', 'phone2', 'type',
        'emergency', 'specialty_id', 'service_id', 'visit_time_day', 'visit_time_from', 'fullname', 'admin_id', 'birth_date', 'gender',
        'visit_time_to', 'arrive_on', 'doc_states', 'user_states', 'states', 'doc_rate', 'user_rate', 'updated_at','created_at'
    ];

    public function  scopeSelection($query){
        $query -> where('id','!=','0');
        return $query -> select(
            'id', 'user_id', 'doctor_id', 'governorate_id', 'city_id', 'adress', 'adress2', 'request_id', 'phone', 'phone2', 'type',
            'emergency', 'specialty_id', 'service_id', 'visit_time_day', 'visit_time_from', 'fullname', 'admin_id', 'birth_date', 'gender',
            'visit_time_to', 'arrive_on', 'doc_states', 'user_states', 'states', 'doc_rate', 'user_rate', 'updated_at','created_at'
        );
    }

    static public function getOrderType($type)
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

    static public function getOrderStates($states)
    {
        switch ($states){
            case 1:
                return "Coming";
                break;
            case 2:
                return "Medical assessment";
                break;
            case 3:
                return "Finish";
                break;
            case 8:
                return "Draft";
                break;
            case 9:
                return "Cancel";
                break;
        }
        return 0;
    }

}
