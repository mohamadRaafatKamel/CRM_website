<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Service extends Model
{
    use HasFactory;

    protected $table = 'service';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name_ar', 'name_en', 'description', 'price', 'image', 'type', 'site', 'admin_id', 'disabled', 'created_at', 'updated_at'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'name_ar', 'name_en', 'description', 'price', 'image', 'type', 'site', 'admin_id', 'disabled', 'created_at', 'updated_at'
        );
    }

    public function scopeActive($query){
        return $query -> where('disabled',0);
    }

    public function getActive(){
        return   $this -> disabled == 0 ? 'مفعل'  : 'غير مفعل';
    }

    public static function getName($id)
    {
        $data = Service::select()->find($id);
        if(isset($data->id)){
            if (App::getLocale() == 'ar')
                return $data['name_ar'];
            elseif (App::getLocale() == 'en')
                return $data['name_en'];
            else
                return $data['name_en'];
        }
        return "";
    }

    public static function getNameEN($id)
    {
        $data = Service::select()->find($id);
        if(isset($data->id)){
            return $data['name_en'];
        }
        return "";
    }

    public static function getPrice($id)
    {
        $data = Service::select()->find($id);
        if(isset($data->price)){
            return $data['price'];
        }
        return "0";
    }

    static public function getServiceType($type)
    {
        switch ($type){
            case 1:
                return "InPatient";
                break;
            case 2:
                return "OutPatient";
                break;
        }
//        return 0;
    }

}
