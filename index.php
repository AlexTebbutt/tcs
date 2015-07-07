<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'home',
	));
	
 	perch_content('Home Hero Slideshow');
	perch_content('Home Inlink Panels');
	perch_layout('global.footer', array(
		'activePage' => 'home',
	));

?>

