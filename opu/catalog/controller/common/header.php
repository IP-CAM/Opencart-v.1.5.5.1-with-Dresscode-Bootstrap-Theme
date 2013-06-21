<?php   
class ControllerCommonHeader extends Controller {
	protected function index() {
		$this->data['title'] = $this->document->getTitle();
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$this->data['base'] = $server;
		$this->data['description'] = $this->document->getDescription();
		$this->data['keywords'] = $this->document->getKeywords();
		$this->data['links'] = $this->document->getLinks();	 
		$this->data['styles'] = $this->document->getStyles();
		$this->data['scripts'] = $this->document->getScripts();
		$this->data['lang'] = $this->language->get('code');
		$this->data['direction'] = $this->language->get('direction');
		$this->data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		$this->data['name'] = $this->config->get('config_name');
		
		if ($this->config->get('config_icon') && file_exists(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$this->data['icon'] = '';
		}
		
		if ($this->config->get('config_logo') && file_exists(DIR_IMAGE . $this->config->get('config_logo'))) {
			$this->data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$this->data['logo'] = '';
		}
		
		$this->language->load('common/header');
		
		$this->data['text_home'] = $this->language->get('text_home');
        $this->data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
        $this->data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
    	$this->data['text_search'] = $this->language->get('text_search');

        $this->data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
        $this->data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

        $this->data['text_account'] = $this->language->get('text_account');
    	$this->data['text_checkout'] = $this->language->get('text_checkout');
				
		$this->data['home'] = $this->url->link('common/home');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');

        // addit vars
        $this->data['text_search_dresscode'] = $this->language->get('text_search_dresscode');
        $this->data['text_phone_number'] = $this->language->get('text_phone_number');
        $this->data['text_service_tools'] = $this->language->get('text_service_tools');
        $this->data['text_choose'] = $this->language->get('text_choose');
        $this->data['text_option_1'] = $this->language->get('text_option_1');
        $this->data['text_option_2'] = $this->language->get('text_option_2');
        $this->data['text_choose_category'] = $this->language->get('text_choose_category');


        $this->data['text_welcome_dresscode'] = sprintf($this->language->get('text_welcome_dresscode'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
        $this->data['text_logged_dresscode'] = sprintf($this->language->get('text_logged_dresscode'), $this->url->link('account/logout', '', 'SSL'));



        /* theme options output */
        $this->config->get('bs_general');
        $this->data['buyshop_general_settings'] = $this->config->get('bs_general');

        /* vars from admin panel general settings */
        $this->data['font'] = $this->data['buyshop_general_settings']['font'];
        $this->data['bgpattern'] = $this->data['buyshop_general_settings']['bgpattern'];
        $this->data['themecolor'] = $this->data['buyshop_general_settings']['themecolor'];
        $this->data['contentbgcolor'] = $this->data['buyshop_general_settings']['contentbgcolor'];
        $this->data['fontcolor'] = $this->data['buyshop_general_settings']['fontcolor'];

        if (isset($this->data['buyshop_general_settings']['tagstack'])) {
            $this->data['tagstack'] = $this->data['buyshop_general_settings']['tagstack'];
        }   else {
            $this->data['tagstack'] = '';
        }
        if (isset($this->data['buyshop_general_settings']['productrollover'])) {
            $this->data['productrollover'] = $this->data['buyshop_general_settings']['productrollover'];
        }   else {
            $this->data['productrollover'] = '';
        }

        if (isset($this->data['buyshop_general_settings']['ajaxcart'])) {
            $this->data['ajaxcart'] = $this->data['buyshop_general_settings']['ajaxcart'];
        }   else {
             $this->data['ajaxcart'] = '';
        }
        if (isset($this->data['buyshop_general_settings']['response'])) {
            $this->data['response'] = $this->data['buyshop_general_settings']['response'];
        }   else {
            $this->data['response'] = '';
        }
        /* theme options output */

// Daniel's robot detector
		$status = true;
		
		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", trim($this->config->get('config_robots')));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}
		
		// A dirty hack to try to set a cookie for the multi-store feature
		$this->load->model('setting/store');
		
		$this->data['stores'] = array();
		
		if ($this->config->get('config_shared') && $status) {
			$this->data['stores'][] = $server . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();
			
			$stores = $this->model_setting_store->getStores();
					
			foreach ($stores as $store) {
				$this->data['stores'][] = $store['url'] . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();
			}
		}


// Search		
		if (isset($this->request->get['search'])) {
			$this->data['search'] = $this->request->get['search'];
		} else {
			$this->data['search'] = '';
		}
		
		// Menu
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
					
		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					
					$product_total = $this->model_catalog_product->getTotalProducts($data);
									
					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])

                    );
				}
				
				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
                    /* description */
                    'description' => html_entity_decode($category['description'], ENT_QUOTES, 'UTF-8'),
                    /* description */

					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		$this->children = array(
            'common/custom_menu',
            'module/language',
			'module/currency',
            'module/cart'
        );
				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/header.tpl';
		} else {
			$this->template = 'default/template/common/header.tpl';
		}
		
    	$this->render();
	} 	
}
?>