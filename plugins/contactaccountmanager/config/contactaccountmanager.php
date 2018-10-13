<?php
	$find_us = [
		'facebook'            => 'Facebook',
		'Instagram'           => 'Instagram',
		'linkedin'            => 'LinkedIN',
		'twitter'             => 'Twitter',
		'website'             => 'Website',
		'google'              => 'Google',
		'bing'                => 'Bing',
		'tradeshow/event'     => 'Tradeshow/Event',	
	];
	$other_find_us = [
		'referred_by'         => 'Referred by',
		'umh_account_manager' => 'UMH Account Manager',
		'other'               => 'Other'
	];


return [
	'find_us_other' => $other_find_us,
	'find_us' => array_merge($find_us, $other_find_us),
];
