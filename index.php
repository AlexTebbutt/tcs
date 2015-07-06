<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'home',
	));
	
	perch_content('Home Hero');
	perch_content('Home Inlink Panels');
	perch_layout('global.footer');

?>

