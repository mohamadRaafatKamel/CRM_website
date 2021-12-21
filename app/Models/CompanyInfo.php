<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanyInfo extends Model
{
    use HasFactory;

    protected $table = 'company_info';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'user_id', 'org_name', 'email', 'phone', 'website', 'contact_person_name', 'registration_num',
         'tax_certificate_num', 'updated_at','created_at'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'user_id', 'org_name', 'email', 'phone', 'website', 'contact_person_name', 'registration_num',
            'tax_certificate_num', 'updated_at','created_at'
        );
    }

}
