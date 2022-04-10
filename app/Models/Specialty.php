<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Specialty extends Model
{
    use HasFactory;

    protected $table = 'specialty';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name_ar', 'name_en', 'slot_time', 'over_slot', 'parent_id', 'image', 'image_app', 'note',
        'admin_id', 'disabled', 'created_at', 'updated_at'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'name_ar', 'name_en', 'slot_time', 'over_slot', 'parent_id', 'image', 'image_app', 'note',
            'admin_id', 'disabled', 'created_at', 'updated_at'        
        );
    }

    public function scopeGeneral($query){
        return $query -> where('parent_id',null);
    }

    public function scopeMain($query){
        return $query -> where('parent_id','!=',null);
    }

    public function scopeActive($query){
        return $query -> where('disabled',0);
    }

    public function getActive(){
        return   $this -> disabled == 0 ? 'مفعل'  : 'غير مفعل';
    }

    public static function getName($id)
    {
        $data = Specialty::select()->find($id);
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
        $data = Specialty::select()->find($id);
        if(isset($data->id)){
            return $data['name_en'];
        }
        return "_";
    }

    public static function getSubSpcServ($id)
    {
        $spcs = Specialty::select()->active()->where('parent_id',$id)->get();
        $data = [];
        foreach ($spcs as $spc){
            $srvs = Service::select()->active()->where('specialty_id',$spc->id)->get();
            $spSer = [];
            foreach($srvs as $srv){
                $spSer [] =[
                    "id" => (string)$srv->id,
                    "name_ar" => $srv->name_ar,
                    "name_en" => $srv->name_en,
                    "description" => $srv->description,
                ];
            }
            $data []= [
                "id" => (string)$spc->id,
                "name_ar" => $spc->name_ar,
                "name_en" => $spc->name_en,
                "disabled" => (string)$spc->disabled,
                "image_app" => $spc->image_app,
                "note" => $spc->note,
                'service'=>$spSer,
            ];
        }
        
        return $data;
    }

}
