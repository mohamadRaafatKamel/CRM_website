<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class ReferalCat extends Model
{
    use HasFactory;

    protected $table = 'referal_cat';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'name', 'parent', 'admin_id', 'created_at', 'updated_at'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'name', 'parent', 'admin_id', 'created_at', 'updated_at'
        );
    }

    public function scopeParent($query){
        return $query -> where('parent',null);
    }

    public function getParent()
    {
        return $this->getName($this->parent );
    }

    public static function getName($id)
    {
        $data = ReferalCat::select()->find($id);
        if(isset($data->id)){
            return $data['name'];
        }
        return "";
    }



}
