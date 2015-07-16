<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'about-us',
	));
?>
<div class="row">

  <div class="twelve columns inset-white">
	  
	  <div class="six columns">
		  
		  <h1 class="handwritten"><?php perch_content('About Us Title'); ?></h1>

			<?php perch_content('About Us Left Column Copy'); ?>
			
			<?php perch_content('About Us Left Column Image'); ?>
							
	  </div>
	  
	  <div class="six columns">
		  
			<?php perch_content('About Us Right Column Image 1'); ?>

			<?php perch_content('About Us Right Column Image 2'); ?>

			<?php perch_content('About Us Right Column Copy'); ?>
			
	  </div>
	  
  </div>
  
</div>
	
<?php
	perch_layout('global.footer', array(
		'activePage' => 'about-us',
	));

?>

