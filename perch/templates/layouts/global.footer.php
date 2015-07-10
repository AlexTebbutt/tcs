		</div>

		<footer>
			
			<div class="footer-content">
				
				<div class="row">
					
					<div class="twelve columns">
			
						<ul id="footer-contact-details">
							
							<li><a href="">Terms & Conditions</a></li>
							
							<li>PH: 020 7727 6760</li>
							
							<li><a href="mailto:info@thecrossshop.co.uk">info@thecrossshop.co.uk</a></li>
							
						</ul>

					</div>
					
				</div>	

				<div class="row">
					
					<div class="twelve columns">
						
						<p class="handwritten">as seen in ]</p>
						
					</div>
					
				</div>
									
				<div class="row">
						
					<?php perch_content('Footer Logos'); ?>
								
				</div>

				<div class="row">
					
					<div class="twelve columns">
					
						<ul id="footer-creds">
							
							<li>&copy;The Cross Two Ltd.</li>
							
							<li>Design By Kate Paillat</li>
							
							<li>Site By Ifnotwhynot</li>
							
						</ul>
					
					</div>
					
				</div>

			</div>
			
		</footer>
		
	</div>

<!-- Feather should output below -->
	<?php 
		
		$page = perch_layout_var('activePage', true);
		
		switch($page)
		{
			
			case 'home':
				$opts = array('js'=>array(
											'/js/responsiveslides.min.js',
											'/js/responsiveslidesconfig.js'
											));
				break;			
			
			default:
				$opts = NULL;
				break;
			
		}
		
		perch_get_javascript($opts); ?>

</body>
</html>
