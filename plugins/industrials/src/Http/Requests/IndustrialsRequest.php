<?php

namespace Botble\Industrials\Http\Requests;

use Botble\Support\Http\Requests\Request;

class IndustrialsRequest extends Request
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
            'content'         => 'required',
            'testimonials_id' => 'required',
            'image'           => 'required',
            'recent_project'  => 'required|array|min:1',
        ];
    }

    public function messages()
    {
        return [
            'testimonials_id.required' => 'The testimonial field is required.',
            // 'performance.*.image.required' => 'The attribute image field is required',
            // 'performance.*.content.required' => 'The attribute content field is required',
        ];
    }
}
