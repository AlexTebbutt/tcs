<?php 

	include('perch/runtime.php');
	perch_layout('global.header', array(
		'activePage' => 'home',
	));

?>
  <div class="container">
    <div class="row">
      <div class="one-half column" style="margin-top: 25%">
        <h4>Basic Page</h4>
        <p>This index.html page is a placeholder with the CSS, font and favicon. It's just waiting for you to add some content! If you need some help hit up the <a href="http://www.getskeleton.com">Skeleton documentation</a>.</p>
      </div>
    </div>
  </div>
  
 <?php
	
	perch_layout('global.footer');

?>

