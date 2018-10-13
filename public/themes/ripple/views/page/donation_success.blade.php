<div class="contact_acc_manager">
    <div class="container">
        <h3 class="title text-uppercase text-center">Thank You</h3>
        <div class="row">
            <div class="col"></div>
            <div class="col-md-8">
                <div class="alert alert-success text-center">
                    @if (session('contact_name'))
                        {{ session('contact_name') }}, 
                    @endif
                    thank you for your donation request. If your request meets each of the guidelines and is approved, we will contact you at the email/phone number you’ve provided on the donation request form. Best wishes for a successful event!
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>
</div>
</section>