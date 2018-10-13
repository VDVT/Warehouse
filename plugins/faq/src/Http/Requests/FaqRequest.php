<?php

namespace Botble\Faq\Http\Requests;

use Botble\Support\Http\Requests\Request;

class FaqRequest extends Request
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
            'content' => 'required'
        ];
    }
}
