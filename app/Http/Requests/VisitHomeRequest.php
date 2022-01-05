<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VisitHomeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        date_default_timezone_set("Africa/Cairo");
        return [
            'user_id'=>'exists:users,id',
            'service_id'=>'required|exists:service,id',
            'visit_time_day' => 'required|after_or_equal:'.date("Y/m/d"),
            'visit_time_from' => 'required',
            'visit_time_to' => 'required',
            'phone' => 'required|max:50',
        ];
    }
}
