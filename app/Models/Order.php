<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

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
                return __("Emergency Call");
                break;
            case 2:
                return __("Home Visit");
                break;
            case 3:
                return __("Book Integrated Medical Services");
                break;
        }
        return 0;
    }

    static public function getOrderStates($states)
    {
        switch ($states){
            case 1:
                return __("Waiting");
                break;
            case 2:
                return __("Coming");
                break;
            case 3:
                return __("Medical assessment");
                break;
            case 4:
                return __("Finish");
                break;
            case 8:
                return __("Draft");
                break;
            case 9:
                return __("Cancel");
                break;

            case 29:
                return __("Doctor Cancel");
                break;
        }
        return 0;
    }

    public static function getAddress($id)
    {
        $address = "";
        $data = Order::select()->find($id);
        if(isset($data->id)){
            $address .= Governorate::getName($data->governorate_id).",<br>";
            $address .= City::getName($data->city_id ).", <br/> ";
            $address .= $data->adress;
            if ($data->adress2 != ""){
                $address .= ",<br/>".$data->adress.".";
            }else{
                $address .= '.';
            }
        }
        return $address;
    }

}
