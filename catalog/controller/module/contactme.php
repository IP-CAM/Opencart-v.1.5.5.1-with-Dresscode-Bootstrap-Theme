<?php
// ------------------------------------------------------
// ContactMe for Opencart v1.5++
// By MarketInSG
// contact@marketinsg.com
// ------------------------------------------------------

class ControllerModulecontactme extends Controller {

	private $_name = 'contactme';

	protected function index() {
		static $module = 0;
		
		$this->data['display'] = $this->config->get($this->_name . '_display');
		
		$this->load->model('setting/store');
		
		$this->data['store'] = $this->config->get('config_name');
		
		$this->data['display']  = $this->config->get($this->_name . '_display');
		
		$this->data['placing']  = $this->config->get($this->_name . '_placing');
		
		$this->data['store'] = $this->config->get('config_name');
    	$this->data['address'] = nl2br($this->config->get('config_address'));
    	$this->data['telephone'] = $this->config->get('config_telephone');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/contactme.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/contactme.tpl';
		} else {
			$this->template = 'default/template/module/contactme.tpl';
		}
		
		$this->render();
	}
}
?>
