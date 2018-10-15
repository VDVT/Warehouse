<?php
namespace Botble\Base\Request;
use Illuminate\Foundation\Http\FormRequest;

class SubmitCustomerFormRequest extends FormRequest
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
            'company_name'  => 'required',
            'do_business'   => 'required',
            'founded_year'  => 'required|numeric',
            'phone'         => 'required',
            'fax'           => 'required',
            'email'         => 'required|email',
            'contact_name'  => 'required',
            'title'         => 'required',
            'contact_phone' => 'required',
            'contact_fax'   => 'required',
            'contact_email' => 'required|email',
            
            'tax_number'   => 'required|string|max:255',
            'duns_number'  => 'required|string|max:255',
            'resale_numer' => 'required|string|max:255',
            'address'      => 'required|string|max:255',
            'city'         => 'required|string|max:255',
            'state'        => 'required|string|max:255',
            'zip'          => 'required|string|max:255',
            'phone_1'      => 'required|string|max:255',
            'fax_1'        => 'required|string|max:255',
            'email_1'      => 'required|string|max:255|email',
            'phone_2'      => 'required|string|max:255',
            'fax_2'        => 'required|string|max:255',
            'email_2'      => 'required|string|max:255|email',
            'bank_name'    => 'required|string|max:255',
            'bank_address' => 'required|string|max:255',
            'is_amount'    => 'required|in:true,false,0,1',
            'check_terms'    => 'required|in:true,1',
    	];
    }
}