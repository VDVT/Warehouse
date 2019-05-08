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
        $isCheckCod = filter_var($this->get('is_check_cod'), FILTER_VALIDATE_BOOLEAN);

        $baseRules = [
            'company_name'  => 'required',
            'founded_year'  => 'required|numeric',
            'phone'         => 'required',
            'contact_name'  => 'required',
            'title'         => 'required',
            'contact_phone' => 'required',
            'contact_email' => 'required|email',
            'tax_number'    => 'required',
            'duns_number'   => 'required',
            'resale_numer'  => 'required',
            'address'       => 'required',
            'city'          => 'required',
            'state'         => 'required',
            'zip'           => 'required',
            'phone_1'       => 'required',
            'email_1'       => 'required|email',
            'bank_name'     => 'required|string|max:255',
            'bank_address'  => 'required|string|max:255',
            'phone_2'       => 'required',
            'credit_amount' => 'required|numeric|min:0',
            'email_2'       => 'required|email',
            'check_terms'   => 'required|in:true,1',
            'is_amount'     => 'required|in:true,false',
        ];

        if(!$isCheckCod)
            $baseRules = array_merge($baseRules,[
                'trade_1_company_name' => 'required',
                'trade_1_account_type' => 'required',
                'trade_1_address'      => 'required|string|max:255',
                'trade_1_city'         => 'required|string|max:255',
                'trade_1_state'        => 'required|string|max:255',
                'trade_1_zip'          => 'required|string|max:255',
                'trade_1_phone'        => 'nullable|max:255',
                'trade_1_fax'          => 'nullable|max:255',
                'trade_1_email'        => 'nullable|email|string|max:255',
                'trade_2_company_name' => 'required|string|max:255',
                'trade_2_account_type' => 'required',
                'trade_2_address'      => 'required|string|max:255',
                'trade_2_city'         => 'required|string|max:255',
                'trade_2_state'        => 'required|string|max:255',
                'trade_2_zip'          => 'required|string|max:255',
                'trade_2_phone'        => 'nullable|max:255',
                'trade_2_fax'          => 'nullable|max:255',
                'trade_2_email'        => 'nullable|email',
                'trade_3_company_name' => 'required',
                'trade_3_account_type' => 'required',
                'trade_3_address'      => 'required',
                'trade_3_city'         => 'required',
                'trade_3_state'        => 'required',
                'trade_3_zip'          => 'required',
                'trade_3_phone'        => 'nullable|max:255',
                'trade_3_fax'          => 'nullable|max:255',
                'trade_3_email'        => 'nullable|email',
            ]);

    	return $baseRules;
    }
}