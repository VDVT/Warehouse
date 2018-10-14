<?php

namespace Botble\CustomerServices\Http\Requests;

use Botble\Support\Http\Requests\Request;

class CustomerServicesRequest extends Request
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
            'name' => 'required',
        ];
    }
}
