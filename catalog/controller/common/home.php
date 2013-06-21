<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}


        // addit vars
        $this->data['text_original_products'] = $this->language->get('text_original_products');
        $this->data['text_free_shipping'] = $this->language->get('text_free_shipping');
        $this->data['text_cash_delivery'] = $this->language->get('text_cash_delivery');
        $this->data['text_day_returns'] = $this->language->get('text_day_returns');

        $this->data['original_products'] = $this->url->link('information/information&amp;information_id=7');
        $this->data['free_shipping'] = $this->url->link('information/information&amp;information_id=8');
        $this->data['cash_delivery'] = $this->url->link('information/information&amp;information_id=9');
        $this->data['day_returns'] = $this->url->link('information/information&amp;information_id=10');

        $this->data['flash_title'] = $this->language->get('flash_title');

        $this->data['text_new_products'] = $this->language->get('text_new_products');
        $this->data['text_sale'] = $this->language->get('text_sale');
        $this->data['text_bestsellers'] = $this->language->get('text_bestsellers');




        // addit vars


        $this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>