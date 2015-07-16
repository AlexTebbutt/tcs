<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'contact',
	));
?>

<div class="row">

  <div class="twelve columns inset-white">
	  
	  <div class="six columns">
		  
		  <h1 class="handwritten"> <?php perch_content('Contact Page Title'); ?></h1>
		  
		  <?php perch_content('Contact Page Main Copy'); ?>
		  
	  </div>
	  
	  <div class="six columns">	  
    
    	<?php perch_content('Contact Page Map Image'); ?>
    	
	  </div>
	
	</div>

</div>



<?php
	perch_content('Contact Inlink Panels');
	
	perch_layout('global.footer', array(
		'activePage' => 'contact',
	));

?>

