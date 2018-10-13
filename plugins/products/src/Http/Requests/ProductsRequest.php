<?php

namespace Botble\Products\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ProductsRequest extends Request
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
            'name'        => 'required|max:120',
            'categories'  => 'required',
            'description' => 'required',
            'availability'      => 'max:120',
            'wholesale_price_a' => 'max:50',
            'wholesale_price_b' => 'max:50',
            'retail_price'      => 'max:50',
            'list_price'        => 'max:50',
            'weight'            => 'max:50',
            'size'              => 'max:50',
            'condition'         => 'max:20',
            'length'            => 'max:50',
            'color'             => 'max:50',
            'width'             => 'max:50',
            'thickness'         => 'max:120',
            'height'            => 'max:120',
            'face'              => 'max:120',
            'capacity'          => 'max:120',
            'depth'             => 'max:120',
            'connector'         => 'max:120',
            'step'              => 'max:120',
            'baseplate'         => 'max:120'
        ];
    }
}
