<?php

namespace Botble\Banner\Http\Requests;

use Botble\Support\Http\Requests\Request;

class BannerRequest extends Request
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
            'image' => 'required',
        ];
    }
}
