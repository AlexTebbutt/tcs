<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'about-us',
	));
?>
<div class="row inset-white">

  <div class="six columns">
				
		<h1><?php perch_content('About Us Page Title'); ?></h1>
		
  </div>
  
  
  <div class="six columns">
				
		<h1><?php perch_content('About Us Page Title'); ?></h1>
		
  </div>
  
</div>		

<?php
	perch_layout('global.footer', array(
		'activePage' => 'about-us',
	));

?>

