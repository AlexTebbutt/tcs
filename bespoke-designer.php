<?php 

	include('perch/runtime.php');
	perch_layout('global.header');

	perch_gallery_album_details(perch_get('s'), array(
	    'template' => 'bespoke_designer_details.html',
	));

	perch_gallery_album_images(perch_get('s'), array(
	    'template' => 'bespoke_designer_gallery.html',
	));

	perch_layout('global.footer', array(
		'activePage' => 'contact',
	));

?>

