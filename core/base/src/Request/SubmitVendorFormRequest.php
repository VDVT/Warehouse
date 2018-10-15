<?php
namespace Botble\Base\Request;
use Illuminate\Foundation\Http\FormRequest;

class SubmitVendorFormRequest extends FormRequest
{
	/**
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Set rules for request
     * @return type
     */
    public function rules()
    {
    	return [
            'address'            => 'required',
            'remittance_address' => 'required',
            'vendor_name'        => 'required',
            'contact_name'       => 'required',
            'phone'              => 'required',
            'fax'                => 'required',
            'email'              => 'required|email',
            'website'            => 'required',
            'service_type'       => 'required',
            'attachment'         => 'required|file|mimes:doc,pdf,docx'
    	];
    }
}