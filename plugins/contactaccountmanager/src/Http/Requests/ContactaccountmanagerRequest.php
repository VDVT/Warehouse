<?php

namespace Botble\Contactaccountmanager\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ContactaccountmanagerRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author Sang Nguyen
     */
    public function rules()
    {
        return [
            'first_name'             => 'required|max:100',
            'last_name'              => 'required|max:100',
            'email'                  => 'required|email|max:100',
            'phone'                  => 'max:50',
            'company_name'           => 'required|max:100',
            'address'                => 'max:150',
            'city'                   => 'max:100',
            'zipcode'                => 'max:50',
            'project_square_footage' => 'max:255',
            'message'                => 'required|max:500'
        ];
    }
}
