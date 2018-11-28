<div class="container">
    <div class="p-t-6 p-b-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Customer Services</li>
            </ol>
        </nav>
        <h1 class="text-muted1 font-1-demi">New Customer Form</h1>
    </div>
</div>
<div class="clearfix" style="background-color: #f7f7f7;">
    <div class="container">
        <div class="p-y-6">
            <div class="row justify-content-center">
                <form role="form" method="POST">
                    {{ csrf_field() }}
                    <div class="col-sm-10">
                        <div class="card card-form m-b-3">
                            <h4 class="card-title text-custom">
                                <a href="#">BUSINESS CONTACT INFORMATION</a>
                            </h4>
                            <div class="card-body">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label text-dark">Company Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="company_name" value="{{ old('company_name') }}" class="form-control @if($errors->has('company_name')) is-invalid @endif" placeholder="Company Name">
                                        @if ($errors->has('company_name'))
                                            <span class="invalid-feedback">{{ $errors->first('company_name') }}</span>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label text-dark">DBA / Established Year</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-sm-6 m-b-sm-2">
                                                <input type="text" value="{{ old('do_business') }}" class="form-control @if($errors->has('do_business')) is-invalid @endif" placeholder="*Doing Business As" name="do_business">
                                                @if ($errors->has('do_business'))
                                                    <span class="invalid-feedback">{{ $errors->first('do_business') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm-6 m-b-sm-2">
                                                <input type="text" value="{{ old('founded_year') }}" class="form-control @if($errors->has('founded_year')) is-invalid @endif" placeholder="*Established Year " name="founded_year">
                                                @if ($errors->has('founded_year'))
                                                    <span class="invalid-feedback">{{ $errors->first('founded_year') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-sm-4 m-b-sm-2">
                                                <input type="text" value="{{ old('phone') }}" class="form-control @if($errors->has('phone')) is-invalid @endif" placeholder="*Phone" name="phone">
                                                @if ($errors->has('phone'))
                                                    <span class="invalid-feedback">{{ $errors->first('phone') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm-4 m-b-sm-2">
                                                <input type="text" value="{{ old('fax') }}" class="form-control @if($errors->has('fax')) is-invalid @endif" placeholder="*Fax" name="fax">
                                                @if ($errors->has('fax'))
                                                    <span class="invalid-feedback">{{ $errors->first('fax') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm-4 m-b-sm-2">
                                                <input type="text" value="{{ old('email') }}" class="form-control @if($errors->has('email')) is-invalid @endif" placeholder="*Email" name="email">
                                                @if ($errors->has('email'))
                                                    <span class="invalid-feedback">{{ $errors->first('email') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label text-dark">Main AP Contact Name/Title</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-sm-6 m-b-sm-2">
                                                <input type="text" value="{{ old('contact_name') }}" class="form-control @if($errors->has('contact_name')) is-invalid @endif" placeholder="*Main AP Contact Name" name="contact_name">
                                                @if ($errors->has('contact_name'))
                                                    <span class="invalid-feedback">{{ $errors->first('contact_name') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm-6 m-b-sm-2">
                                                <input type="text" value="{{ old('title') }}" class="form-control @if($errors->has('title')) is-invalid @endif" placeholder="*Title" name="title">
                                                @if ($errors->has('title'))
                                                    <span class="invalid-feedback">{{ $errors->first('title') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-sm-4 m-b-sm-2">
                                                <input type="text" value="{{ old('contact_phone') }}" class="form-control @if($errors->has('contact_phone')) is-invalid @endif" placeholder="*Phone" name="contact_phone">
                                                @if ($errors->has('contact_phone'))
                                                    <span class="invalid-feedback">{{ $errors->first('contact_phone') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm-4 m-b-sm-2">
                                                <input type="text" value="{{ old('contact_fax') }}" class="form-control @if($errors->has('contact_fax')) is-invalid @endif" placeholder="*Fax" name="contact_fax">
                                                @if ($errors->has('contact_fax'))
                                                    <span class="invalid-feedback">{{ $errors->first('contact_fax') }}</span>
                                                @endif
                                            </div>
                                            <div class="col-sm-4 m-b-sm-2">
                                                <input type="text" value="{{ old('contact_email') }}" class="form-control @if($errors->has('contact_email')) is-invalid @endif" placeholder="*Email" name="contact_email">
                                                @if ($errors->has('contact_email'))
                                                    <span class="invalid-feedback">{{ $errors->first('contact_email') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                        <div class="card card-form m-b-3">
                            <h4 class="card-title text-custom">
                                <a href="#">BUSINESS CONTACT INFORMATION</a>
                            </h4>
                            <div class="card-body">
                                <form>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Tax Identification Number DUNS / Resale Number</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('tax_number') }}" class="form-control @if($errors->has('tax_number')) is-invalid @endif" placeholder="*Tax Identification ..." name="tax_number">
                                                    @if ($errors->has('tax_number'))
                                                        <span class="invalid-feedback">{{ $errors->first('tax_number') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('duns_number') }}" class="form-control @if($errors->has('duns_number')) is-invalid @endif" placeholder="*DUNS" name="duns_number">
                                                    @if ($errors->has('duns_number'))
                                                        <span class="invalid-feedback">{{ $errors->first('duns_number') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('resale_numer') }}" class="form-control @if($errors->has('resale_numer')) is-invalid @endif" placeholder="*Resale Number" name="resale_numer">
                                                    @if ($errors->has('resale_numer'))
                                                        <span class="invalid-feedback">{{ $errors->first('resale_numer') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Primary Business Address</label>
                                        <div class="col-sm-10">
                                            <input type="text" value="{{ old('address') }}" class="form-control @if($errors->has('address')) is-invalid @endif" placeholder="" name="address">
                                            @if ($errors->has('address'))
                                                <span class="invalid-feedback">{{ $errors->first('address') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">City / State / Zip Code</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('city') }}" class="form-control @if($errors->has('city')) is-invalid @endif" placeholder="*City" name="city">
                                                    @if ($errors->has('city'))
                                                        <span class="invalid-feedback">{{ $errors->first('city') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('state') }}" class="form-control @if($errors->has('state')) is-invalid @endif" placeholder="*State" name="state">
                                                    @if ($errors->has('state'))
                                                        <span class="invalid-feedback">{{ $errors->first('state') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('zip') }}" class="form-control @if($errors->has('zip')) is-invalid @endif" placeholder="*Zip Code" name="zip">
                                                    @if ($errors->has('zip'))
                                                        <span class="invalid-feedback">{{ $errors->first('zip') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('phone_1') }}" class="form-control @if($errors->has('phone_1')) is-invalid @endif" placeholder="*Phone" name="phone_1">
                                                    @if ($errors->has('phone_1'))
                                                        <span class="invalid-feedback">{{ $errors->first('phone_1') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('fax_1') }}" class="form-control @if($errors->has('fax_1')) is-invalid @endif" placeholder="*Fax" name="fax_1">
                                                    @if ($errors->has('fax_1'))
                                                        <span class="invalid-feedback">{{ $errors->first('fax_1') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('email_1') }}" class="form-control @if($errors->has('email_1')) is-invalid @endif" placeholder="*Email" name="email_1">
                                                    @if ($errors->has('email_1'))
                                                        <span class="invalid-feedback">{{ $errors->first('email_1') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Bank Name /Bank Address </label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('bank_name') }}" class="form-control @if($errors->has('bank_name')) is-invalid @endif" placeholder="*Bank Name" name="bank_name">
                                                    @if ($errors->has('bank_name'))
                                                        <span class="invalid-feedback">{{ $errors->first('bank_name') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('bank_address') }}" class="form-control @if($errors->has('bank_address')) is-invalid @endif" placeholder="*Bank Address" name="bank_address">
                                                    @if ($errors->has('bank_address'))
                                                        <span class="invalid-feedback">{{ $errors->first('bank_address') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('phone_2') }}" class="form-control @if($errors->has('phone_2')) is-invalid @endif" placeholder="*Phone" name="phone_2">
                                                    @if ($errors->has('phone_2'))
                                                        <span class="invalid-feedback">{{ $errors->first('phone_2') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('fax_2') }}" class="form-control @if($errors->has('fax_2')) is-invalid @endif" placeholder="*Fax" name="fax_2">
                                                    @if ($errors->has('fax_2'))
                                                        <span class="invalid-feedback">{{ $errors->first('fax_2') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('email_2') }}" class="form-control @if($errors->has('email_2')) is-invalid @endif" placeholder="*Email" name="email_2">
                                                    @if ($errors->has('email_2'))
                                                        <span class="invalid-feedback">{{ $errors->first('email_2') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group bg-muted2 rounded-theme text-center py-3 px-2">Total amount of sales orders ?</div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 m-b-sm-2">
                                                <div class="checkbox checkbox-circle checkbox-custom">
                                                    <input id="checkbox-circle-0" name="is_amount" type="radio" checked="" value="true">
                                                    <label for="checkbox-circle-0">
                                                        More than 50,000 USD
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="checkbox checkbox-circle checkbox-custom">
                                                    <input id="checkbox-circle-1" name="is_amount" type="radio" value="false">
                                                    <label for="checkbox-circle-1">
                                                        Less than 50,000 USD
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="card card-form m-b-3">
                            <div class="card-title d-sm-flex justify-content-between align-items-center">
                                <h4 href="#" class="text-custom m-b-sm-1">BUSINESS/TRADE REFERENCES</h4>
                                <div class="checkbox checkbox-circle checkbox-custom">
                                    <input id="checkbox-circle-2" type="checkbox" checked name="is_check_cod" value="true">
                                    <label for="checkbox-circle-2">
                                        Check if COD Customer
                                    </label>
                                </div>
                            </div>
                            <div class="card-body">
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Company/ Type of Account </label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_company_name') }}" class="form-control @if($errors->has('trade_1_company_name')) is-invalid @endif" placeholder="*Company" name="trade_1_company_name">
                                                    @if ($errors->has('trade_1_company_name'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_company_name') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_account_type') }}" class="form-control @if($errors->has('trade_1_account_type')) is-invalid @endif" placeholder="*Type of Account " name="trade_1_account_type">
                                                    @if ($errors->has('trade_1_account_type'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_account_type') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Address</label>
                                        <div class="col-sm-10">
                                            <input type="text" value="{{ old('trade_1_address') }}" class="form-control @if($errors->has('trade_1_address')) is-invalid @endif" placeholder="*Address" name="trade_1_address">
                                            @if ($errors->has('trade_1_address'))
                                                <span class="invalid-feedback">{{ $errors->first('trade_1_address') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">City / State / Zip Code</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_city') }}" class="form-control @if($errors->has('trade_1_city')) is-invalid @endif" placeholder="*City" name="trade_1_city">
                                                    @if ($errors->has('trade_1_city'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_city') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_state') }}" class="form-control @if($errors->has('trade_1_state')) is-invalid @endif" placeholder="*State" name="trade_1_state">
                                                    @if ($errors->has('trade_1_state'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_state') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_zip') }}" class="form-control @if($errors->has('trade_1_zip')) is-invalid @endif" placeholder="*Zip Code" name="trade_1_zip">
                                                    @if ($errors->has('trade_1_zip'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_zip') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_phone') }}" class="form-control @if($errors->has('trade_1_phone')) is-invalid @endif" placeholder="*Phone" name="trade_1_phone">
                                                    @if ($errors->has('trade_1_phone'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_phone') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_fax') }}" class="form-control @if($errors->has('trade_1_fax')) is-invalid @endif" placeholder="*Fax" name="trade_1_fax">
                                                    @if ($errors->has('trade_1_fax'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_fax') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_1_email') }}" class="form-control @if($errors->has('trade_1_email')) is-invalid @endif" placeholder="*Email" name="trade_1_email">
                                                    @if ($errors->has('trade_1_email'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_1_email') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="divide m-b-3">
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Company/ Type of Account </label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_company_name') }}" class="form-control @if($errors->has('trade_2_company_name')) is-invalid @endif" placeholder="*Company" name="trade_2_company_name">
                                                    @if ($errors->has('trade_2_company_name'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_company_name') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_account_type') }}" class="form-control @if($errors->has('trade_2_account_type')) is-invalid @endif" placeholder="*Type of Account " name="trade_2_account_type">
                                                    @if ($errors->has('trade_2_account_type'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_account_type') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Address</label>
                                        <div class="col-sm-10">
                                            <input type="text" value="{{ old('trade_2_address') }}" class="form-control @if($errors->has('trade_2_address')) is-invalid @endif" placeholder="*Address" name="trade_2_address">
                                            @if ($errors->has('trade_2_address'))
                                                <span class="invalid-feedback">{{ $errors->first('trade_2_address') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">City / State / Zip Code</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_city') }}" class="form-control @if($errors->has('trade_2_city')) is-invalid @endif" placeholder="*City" name="trade_2_city">
                                                    @if ($errors->has('trade_2_city'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_city') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_state') }}" class="form-control @if($errors->has('trade_2_state')) is-invalid @endif" placeholder="*State" name="trade_2_state">
                                                    @if ($errors->has('trade_2_state'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_state') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_zip') }}" class="form-control @if($errors->has('trade_2_zip')) is-invalid @endif" placeholder="*Zip Code" name="trade_2_zip">
                                                    @if ($errors->has('trade_2_zip'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_zip') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_phone') }}" class="form-control @if($errors->has('trade_2_phone')) is-invalid @endif" placeholder="*Phone" name="trade_2_phone">
                                                    @if ($errors->has('trade_2_phone'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_phone') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_fax') }}" class="form-control @if($errors->has('trade_2_fax')) is-invalid @endif" placeholder="*Fax" name="trade_2_fax">
                                                    @if ($errors->has('trade_2_fax'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_fax') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_2_email') }}" class="form-control @if($errors->has('trade_2_email')) is-invalid @endif" placeholder="*Email" name="trade_2_email">
                                                    @if ($errors->has('trade_2_email'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_2_email') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="divide m-b-3">
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Company/ Type of Account </label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_company_name') }}" class="form-control @if($errors->has('trade_3_company_name')) is-invalid @endif" placeholder="*Company" name="trade_3_company_name">
                                                    @if ($errors->has('trade_3_company_name'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_company_name') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-6 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_account_type') }}" class="form-control @if($errors->has('trade_3_account_type')) is-invalid @endif" placeholder="*Type of Account " name="trade_3_account_type">
                                                    @if ($errors->has('trade_3_account_type'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_account_type') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Address</label>
                                        <div class="col-sm-10">
                                            <input type="text" value="{{ old('trade_3_address') }}" class="form-control @if($errors->has('trade_3_address')) is-invalid @endif" placeholder="*Address" name="trade_3_address">
                                            @if ($errors->has('trade_3_address'))
                                                <span class="invalid-feedback">{{ $errors->first('trade_3_address') }}</span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">City / State / Zip Code</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_city') }}" class="form-control @if($errors->has('trade_3_city')) is-invalid @endif" placeholder="*City" name="trade_3_city">
                                                    @if ($errors->has('trade_3_city'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_city') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_state') }}" class="form-control @if($errors->has('trade_3_state')) is-invalid @endif" placeholder="*State" name="trade_3_state">
                                                    @if ($errors->has('trade_3_state'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_state') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_zip') }}" class="form-control @if($errors->has('trade_3_zip')) is-invalid @endif" placeholder="*Zip Code" name="trade_3_zip">
                                                    @if ($errors->has('trade_3_zip'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_zip') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label text-dark">Phone / Fax / Email</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_phone') }}" class="form-control @if($errors->has('trade_3_phone')) is-invalid @endif" placeholder="*Phone" name="trade_3_phone">
                                                    @if ($errors->has('trade_3_phone'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_phone') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_fax') }}" class="form-control @if($errors->has('trade_3_fax')) is-invalid @endif" placeholder="*Fax" name="trade_3_fax">
                                                    @if ($errors->has('trade_3_fax'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_fax') }}</span>
                                                    @endif
                                                </div>
                                                <div class="col-sm-4 m-b-sm-2">
                                                    <input type="text" value="{{ old('trade_3_email') }}" class="form-control @if($errors->has('trade_3_email')) is-invalid @endif" placeholder="*Email" name="trade_3_email">
                                                    @if ($errors->has('trade_3_email'))
                                                        <span class="invalid-feedback">{{ $errors->first('trade_3_email') }}</span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="divide m-b-3">
                            </div>
                        </div>

                        <div class="card card-form m-b-3">
                            <div class="card-body">
                                <div class="p-y-1 d-sm-flex justify-content-between align-items-center">
                                    <div class="checkbox checkbox-circle checkbox-custom m-b-sm-1">
                                        <input id="checkbox-circle-03" class="@if($errors->has('check_terms')) is-invalid @endif" type="checkbox" name="check_terms" value="true" {{ old('check_terms') ? 'checked' : '' }}>
                                        <label for="checkbox-circle-03" class="mb-0">
                                            <a target="_blank" href="http://umhwholesale.tinyprovider.us/uploads/4/1-umh-new-customer-form-updated.pdf">Check here if you agree with our terms and conditions*</a>
                                        </label>
                                    </div>
                                </div>
                                @if ($errors->has('check_terms'))
                                    <span class="invalid-feedback" style="display: block;">{{ $errors->first('check_terms') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="text-right">
                            <button class="btn btn-outline-custom-i btn-round" type="submit">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    
</script>