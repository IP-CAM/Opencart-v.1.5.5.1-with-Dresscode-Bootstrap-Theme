<?php  
class ControllerCommonFooter extends Controller {
	protected function index() {
		$this->language->load('common/footer');
		
		$this->data['text_information'] = $this->language->get('text_information');
		$this->data['text_service'] = $this->language->get('text_service');
		$this->data['text_extra'] = $this->language->get('text_extra');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_return'] = $this->language->get('text_return');
    	$this->data['text_sitemap'] = $this->language->get('text_sitemap');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_voucher'] = $this->language->get('text_voucher');
		$this->data['text_affiliate'] = $this->language->get('text_affiliate');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
		
		//template
		$this->data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
		$this->data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/logout', '', 'SSL'));

        $this->data['text_twitter_feeds'] = $this->language->get('text_twitter_feeds');


        $this->data['text_facebook'] = $this->language->get('text_facebook');

        //contact info in footer
        $this->data['contact_info'] = $this->language->get('contact_info');
        $this->data['contact_phone'] = $this->language->get('contact_phone');
        $this->data['phone_numbers'] = $this->language->get('phone_numbers');
        $this->data['cell_phone'] = $this->language->get('cell_phone');
        $this->data['mail_addresses'] = $this->language->get('mail_addresses');
        $this->data['mail_sails'] = $this->language->get('mail_sails');
        $this->data['mail_info'] = $this->language->get('mail_info');
        $this->data['skype_title'] = $this->language->get('skype_title');
        $this->data['skype_accounts'] = $this->language->get('skype_accounts');

        //socials icons in footer
        $this->data['socials_title_1'] = $this->language->get('socials_title_1');
        $this->data['socials_title_2'] = $this->language->get('socials_title_2');
        $this->data['socials_title_3'] = $this->language->get('socials_title_3');
        $this->data['socials_title_4'] = $this->language->get('socials_title_4');
        $this->data['socials_title_5'] = $this->language->get('socials_title_5');
        $this->data['socials_title_6'] = $this->language->get('socials_title_6');

        $this->data['socials_link_1'] = $this->language->get('socials_link_1');
        $this->data['socials_link_2'] = $this->language->get('socials_link_2');
        $this->data['socials_link_3'] = $this->language->get('socials_link_3');
        $this->data['socials_link_4'] = $this->language->get('socials_link_4');
        $this->data['socials_link_5'] = $this->language->get('socials_link_5');
        $this->data['socials_link_6'] = $this->language->get('socials_link_6');
//template

        $this->load->model('catalog/information');
		
		$this->data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$this->data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
    	}

        /* theme options output */
        //$this->config->get('bs_social');
        $this->data['buyshop_social_settings'] = $this->config->get('bs_social');


        if (!empty($this->data['buyshop_social_settings']['twitter'])) {
            $this->data['twitter_account_name'] = $this->data['buyshop_social_settings']['twitter'];
        } else {
            $this->data['twitter_account_name'] = $this->language->get('account_twitter');
        }
        if (!empty($this->data['buyshop_social_settings']['facebook'])) {
                $this->data['facebook'] = $this->data['buyshop_social_settings']['facebook'];
        } else {
            $this->data['facebook'] = $this->language->get('account_facebook');
        }
        /* theme options output */


        $this->data['contact'] = $this->url->link('information/contact');
		$this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
    	$this->data['sitemap'] = $this->url->link('information/sitemap');
		$this->data['manufacturer'] = $this->url->link('product/manufacturer');
		$this->data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$this->data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$this->data['special'] = $this->url->link('product/special');
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');		


        $this->data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

        $this->data['powered_dresscode'] = sprintf($this->language->get('powered_dresscode'), date('Y', time()));


// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');
	
			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];	
			} else {
				$ip = ''; 
			}
			
			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];	
			} else {
				$url = '';
			}
			
			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];	
			} else {
				$referer = '';
			}
						
			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}



		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/footer.tpl';
		} else {
			$this->template = 'default/template/common/footer.tpl';
		}

        $this->children = array(
            'common/content_slider',
            'common/content_footer'
        );

		$this->render();
	}
}
?>