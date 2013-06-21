<?php
class ControllerModuleDresscodespecial extends Controller {
	protected function index($setting) {
		$this->language->load('module/dresscode_special');
 
      	$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');

		$this->data['products'] = array();
		
		$data = array(
			'sort'  => 'pd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		$results = $this->model_catalog_product->getProductSpecials($data);

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
			} else {
				$image = false;
			}

            //addit image
            $results_images = $this->model_catalog_product->getProductImages($result['product_id']);
            if ($results_images) {
                $first = true;
                foreach ($results_images as $results_image) {
                    if ( $first ) {
                        $popup = $this->model_tool_image->resize($results_image['image'], $setting['image_width'], $setting['image_height']);
                        $first = false;
                    }
                }
            } else {
                $popup = false;
            }

            //addit image

            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) { 
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}

            //youtube
            $this->data['youtubes'] = array();
            $query = $this->db->query("SELECT youtube as video FROM ".DB_PREFIX."product WHERE product_id='".(int)$result['product_id']."'");
            $youtubes = explode(',',$query->row['video']);
            $this->data['youtubes'] = $youtubes;
            //youtube

            /* vars from admin panel labels settings */
            $this->config->get('bs_general');
            $this->data['buyshop_general_settings'] = $this->config->get('bs_general');
            if (isset($this->data['buyshop_general_settings']['ajaxcart'])) {
                $this->data['ajaxcart'] = $this->data['buyshop_general_settings']['ajaxcart'];
            }
            $this->data['buyshop_productlabels_settings'] = $this->config->get('bs_productlabels');
            if (isset($this->data['buyshop_productlabels_settings']['sale'])) {
                $this->data['sale'] = $this->data['buyshop_productlabels_settings']['sale'];
            } else {
                $this->data['sale'] = '';
            }
            if (isset($this->data['buyshop_productlabels_settings']['video'])) {
                $this->data['video'] = $this->data['buyshop_productlabels_settings']['video'];
            } else {
                $this->data['video'] = '';
            }
            if (isset($this->data['buyshop_productlabels_settings']['saleposition'])) {
                $this->data['saleposition'] = $this->data['buyshop_productlabels_settings']['saleposition'];
            } else {
                $this->data['saleposition'] = '';
            }
            if (isset($this->data['buyshop_productlabels_settings']['videoposition'])) {
                $this->data['videoposition'] = $this->data['buyshop_productlabels_settings']['videoposition'];
            } else {
                $this->data['videoposition'] = '';
            }


            $this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
                //addit image
                'popup'   	 => $popup,
                //addit image

                //youtube video
                'youtube_video' => $youtubes,

                'name-main'        => strlen($result['name']) > 43 ? utf8_substr(strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8')), 0, 43) . '..' : $result['name'],
                'name'        => $result['name'],
                'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/dresscode_special.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/dresscode_special.tpl';
		} else {
			$this->template = 'default/template/module/dresscode_special.tpl';
		}

		$this->render();
	}
}
?>