<?php

namespace Botble\Literature\Http\Requests;

use Botble\Support\Http\Requests\Request;

class OrderLiteratureRequest extends Request
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
            'orders'   => 'required|array',
            'orders.*' => 'required|exists:literature,id',
        ];
    }
}
