<body style="background:#F6F6F6; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; margin:0; padding:0;">
    <div style="background:#F6F6F6; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:12px; margin:0; padding:0;">
    <table cellspacing="0" cellpadding="0" border="0" height="100%" width="100%">
    <tr>
        <td align="center" valign="top" style="padding:20px 0 20px 0">
            <table bgcolor="#FFFFFF" cellspacing="0" cellpadding="10" border="0" width="650" style="border:1px solid #E0E0E0;">
                <tr>
                    <td valign="top"><center>
                        <a href="{{ url('/') }}"><img src="{{ url(theme_option('logo')) }}"  style="margin-bottom:10px;" border="0"/></a>
                    </center></td>
                </tr>
                <tr>
                    <td valign="top">
                        @yield('content')
                        <!-- 
                        <h1 style="font-size:22px; font-weight:normal; line-height:22px; margin:0 0 11px 0;">Dear '.$customer.',</h1> 
                        <p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
                            Your order #'.$order_id.' is shipping. Tracking number is: <strong>'.$tracking.'</strong>
                        </p>
                        <p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">
                            You can check the delivery status here: <a target="_blank" href="https://wwwapps.ups.com/tracking/tracking.cgi?tracknum='.$tracking.'">https://wwwapps.ups.com/tracking/tracking.cgi?tracknum='.$tracking.'</a>
                        </p>
                        <p style="font-size:12px; line-height:16px; margin:0 0 10px 0;">You can check the status of your order by <a href="'.URL.'customer/account/" style="color:#1E7EC8;">logging into your account</a>.</p>
                        <p style="font-size:12px; line-height:16px; margin:0;">
                            If you have any questions, please feel free to contact us at
                            <a href="mailto:'.$allsetting[0]['sales_representative'].'" style="color:#1E7EC8;">'.$allsetting[0]['sales_representative'].'</a>
                            or by phone at (714) 692-2199.
                        </p>
                        -->
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#EAEAEA" align="center" style="background:#EAEAEA; text-align:center;"><center>
                        <p style="font-size:12px; margin:0;">{{setting('site_title')}}</p>
                    </center></td>
                </tr>
            </table>
        </td>
    </tr>
    </table>
    </div>
</body>