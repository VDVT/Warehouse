<div class="container">
    <div class="p-t-6 p-b-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Customer Services</li>
            </ol>
        </nav>
        <h1 class="text-muted1 font-1-demi">New Vendor Packet Form</h1>
    </div>
</div>
<div class="clearfix" style="background-color: #f7f7f7;">
    <div class="container">
        <div class="p-y-6">
            <div class="row justify-content-center">
                <div class="col-sm-10">
                     <form method="POST" role="form" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <label class="text-muted1 text-uppercase">Vendor Name</label>
                                <input type="text" class="form-control @if($errors->has('vendor_name')) is-invalid @endif" placeholder="Vendor Name" name="vendor_name">
                                @if ($errors->has('vendor_name'))
                                    <span class="invalid-feedback">{{ $errors->first('vendor_name') }}</span>
                                @endif
                            </div>
                            <div class="form-group col-sm-6">
                                <label class="text-muted1 text-uppercase">Vendor Address</label>
                                <input type="text" class="form-control @if($errors->has('address')) is-invalid @endif" placeholder="Vendor Address" name="address">
                                @if ($errors->has('address'))
                                    <span class="invalid-feedback">{{ $errors->first('address') }}</span>
                                @endif
                            </div>
                            <div class="form-group col-sm-12">
                                <label class="text-muted1 text-uppercase">Remittance Address (If different from above)</label>
                                <input type="text" class="form-control @if($errors->has('remittance_address')) is-invalid @endif" placeholder="Remittance Address" name="remittance_address">
                                @if ($errors->has('remittance_address'))
                                    <span class="invalid-feedback">{{ $errors->first('remittance_address') }}</span>
                                @endif
                            </div>
                            <div class="form-group col-sm-12">
                                <label class="text-muted1 text-uppercase">Contact Information</label>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <input type="text" class="form-control @if($errors->has('contact_name')) is-invalid @endif" placeholder="Name" name="contact_name">
                                        @if ($errors->has('contact_name'))
                                            <span class="invalid-feedback">{{ $errors->first('contact_name') }}</span>
                                        @endif
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="text" class="form-control @if($errors->has('phone')) is-invalid @endif" placeholder="Phone" name="phone">
                                        @if ($errors->has('phone'))
                                            <span class="invalid-feedback">{{ $errors->first('phone') }}</span>
                                        @endif
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="text" class="form-control @if($errors->has('fax')) is-invalid @endif" placeholder="Fax" name="fax">
                                        @if ($errors->has('fax'))
                                            <span class="invalid-feedback">{{ $errors->first('fax') }}</span>
                                        @endif
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="text" class="form-control @if($errors->has('email')) is-invalid @endif" placeholder="Email" name="email">
                                        @if ($errors->has('email'))
                                            <span class="invalid-feedback">{{ $errors->first('email') }}</span>
                                        @endif
                                    </div>
                                    <div class="form-group col-sm-6">
                                        <input type="text" class="form-control @if($errors->has('website')) is-invalid @endif" placeholder="Website" name="website">
                                        @if ($errors->has('website'))
                                            <span class="invalid-feedback">{{ $errors->first('website') }}</span>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-sm-12">
                                <label><span class="text-custom">What type of items or service will this vendor be supplying?</span> (See vendor categories list)</label>
                                <textarea class="form-control @if($errors->has('service_type')) is-invalid @endif" rows="3" name="service_type"></textarea>
                                @if ($errors->has('service_type'))
                                    <span class="invalid-feedback">{{ $errors->first('service_type') }}</span>
                                @endif
                            </div>
                            <div class="form-group col-sm-12">
                                <label class="text-custom text-uppercase mr-2">All vendors must complete and submit form w-9</label> <a href="#">Attachments</a>
                                <input type="file" id="attachment" name="attachment" class="form-control @if($errors->has('attachment')) is-invalid @endif">
                                @if ($errors->has('attachment'))
                                    <span class="invalid-feedback">{{ $errors->first('attachment') }}</span>
                                @endif
                            </div>
                            <div class="col-sm-12">
                                <button class="btn btn-outline-custom-i btn-block" type="submit">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>