<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;

class UsersReferral extends Model
{
    use HasFactory;

    protected $table = 'users_referral';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id', 'referral_id', 'user_id', 'admin_id', 'created_at', 'updated_at'
    ];

    public function  scopeSelection($query){

        return $query -> select(
            'id', 'referral_id', 'user_id', 'admin_id', 'created_at', 'updated_at'
        );
    }

    public static function setReferral($userId,$referrals)
    {
        try{
            UsersReferral::select()->where('user_id',$userId)->delete();

            $logID = Log::setLog('update','users_referral',$userId,"user_id","");

            if($referrals){
                if(count($referrals)>0){
                    foreach ($referrals as $referral){
                        if($referral != null || $referral!=""){
                            $rroollee = new UsersReferral();
                            $rroollee->referral_id = $referral;
                            $rroollee->user_id  = $userId;
                            $rroollee->admin_id = Auth::user()->id;
                            $rroollee->save();
    
                            Log::setLogInfo('',$referral,$logID,"update Users Referral");
                        }
                    }
                }
            }
        } catch (\Exception $ex) {
        }
    }

    public static function getReferral($userId)
    {
        try{
            $myref = [];
            $referrals = UsersReferral::select('referral_id')->where('user_id',$userId)->get();

            if($referrals){
                if($referrals->count()>0){
                    foreach ($referrals as $referral){
                        $myref[]= $referral->referral_id;
                    }
                }
                return $myref;
            }
        } catch (\Exception $ex) {
        }
    }
}
