<?php

namespace Botble\Tabcategory\Http\Requests;

use Botble\Support\Http\Requests\Request;

class TabcategoryRequest extends Request
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
            'name'     => 'required',
            'group_id' => 'required|numeric|exists:groupproductcategory,id'
        ];
    }
}
