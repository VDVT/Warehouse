<?php

namespace Botble\Productsolutions\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ProductsolutionsRequest extends Request
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
            'name'        => 'required',
            'performance' => 'required|array|min:1',
            'image'       => 'required',
            // 'related_product' => 'required|array|min:1',
            // 'performance.*.image' => 'required',
            // 'performance.*.content' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'performance.required' => 'The performance attribute field is required.',
            // 'performance.*.image.required' => 'The attribute image field is required',
            // 'performance.*.content.required' => 'The attribute content field is required',
        ];
    }
}
