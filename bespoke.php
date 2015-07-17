<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'contact',
	));
?>

<div class="row">

  <div class="twelve columns inset-white">
		  
		  <h1 class="handwritten"> <?php perch_content('Bespoke Page Title'); ?></h1>
		  
		  <?php perch_content('Bespoke Page Main Copy'); ?>
		  
	</div>
	
</div>
	  
<div class="row">

  <div class="twelve columns inset-white">
		  
		  <!-- Bespoke albums show here -->
		  <?php 
			  	
			  perch_gallery_albums(array(
				  										'template'=>'bespoke_album.html',
															'filter'=>'category',
															'match'=>'eq',
															'value'=>'bespoke' 
														));
			?>
		  
	</div>
	
</div>



<?php
	perch_layout('global.footer', array(
		'activePage' => 'contact',
	));

?>

