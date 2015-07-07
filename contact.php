<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'contact',
	));
	
	perch_content('Contact Hero');
	perch_content('Contact Inlink Panels');
	perch_layout('global.footer', array(
		'activePage' => 'contact',
	));

?>

