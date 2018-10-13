<?php

namespace Botble\Projects\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ProjectsRequest extends Request
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
            'description' => 'required',
            'content'     => 'required',
            'image'       => 'required',
            // 'gallery'     => 'required',
        ];
    }
}
