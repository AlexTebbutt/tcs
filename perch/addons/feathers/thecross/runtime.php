<?php
PerchSystem::register_feather('TheCross');

class PerchFeather_TheCross extends PerchFeather
{
  public function get_css($opts, $index, $count)
    { 
	    
	    $out = array();
	    
			if (!$this->component_registered('raleway')) 
			{

		    $out[] = $this->_single_tag('link', array(
														        'rel'=>'stylesheet',
														        'href'=>'//fonts.googleapis.com/css?family=Raleway:400,300,600',
														        'type'=>'text/css'
														       ));

			}

			if (!$this->component_registered('normalize')) 
			{

		    $out[] = $this->_single_tag('link', array(
														        'rel'=>'stylesheet',
														        'href'=>$this->path . '/css/normalize.css',
														        'type'=>'text/css'
														       ));

			}

			if (!$this->component_registered('skeleton')) 
			{	

		    $out[] = $this->_single_tag('link', array(
														        'rel'=>'stylesheet',
														        'href'=>$this->path . '/css/skeleton.css',
														        'type'=>'text/css'
														       ));
			
			}				
												    
			return implode("\n\t", $out) . "\n";
															
		}


	public function get_javascript($opts, $index, $count)
	{
		
		$out = array();
		
		if (!$this->component_registered('jquery')) {
			$out[] = $this->_script_tag(array(
				'src'=>'//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'
			));
			$this->register_component('jquery');
		}

		if (!$this->component_registered('jquery.easing')) {
			$out[] = $this->_script_tag(array(
				'src'=>'//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'
			));
			$this->register_component('jquery.easing');
		}

		if (!$this->component_registered('functions')) {
			$out[] = $this->_script_tag(array(
				'src'=>$this->path . '/js/functions.js'
			));
			$this->register_component('functions');
		}
		
		if (!$this->component_registered('jquery.local')) {
			$out[] = $this->_get_jquery_fallback($this->path . '/js/jquery-1.9.1.min.js');
			$this->register_component('jquery.local');
		}

		if(isset($opts['js']))
		{
			
			$javascripts = $opts['js'];
			
			foreach($javascripts as $javascript)
			{
				
				$out[] = $this->_script_tag(array(
					'src'=>$this->path . $javascript
				));
				
			}
			
		}

		return implode("\n\t", $out)."\n";
		
	}
	
	private function _get_jquery_fallback($path)
	{
		
		return('<script>window.jQuery || document.write("<script src=\'' . $path . '\'>\x3C/script>")</script>');
		
	}




}
?>