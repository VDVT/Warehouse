<?php

namespace Botble\Literature\Http\Requests;

use Botble\Support\Http\Requests\Request;

class LiteratureRequest extends Request
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
            'name'            => 'required',
            'description'     => 'required',
            'file'            => 'required',
            'image'           => 'required',
            'tab_category_id' => 'required',
        ];
    }
}
