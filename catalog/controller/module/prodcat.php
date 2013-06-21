<?php

class ControllerModuleProdcat extends Controller {

    protected function index($setting) {

        $this->language->load('module/prodcat');
        $this->load->model('catalog/category');
        $this->load->model('catalog/prodcat');

        if (isset($this->request->get['product_id'])) {

            $product_id = $this->request->get['product_id'];

            if (!empty($setting)) {

                $lastlevelcategory = $setting['lastlevelcategory'];
                $this->data['column_count'] = $setting['column_count'];
                $this->data['tableparams'] = $setting['tableparam'];
                $this->data['trparams'] = $setting['trparam'];
                $this->data['tdparams'] = $setting['tdparam'];
                $this->data['aparams'] = $setting['aparam'];
                $this->data['heading_title'] = $setting['heading_title'];
                $this->data['heading_param'] = $setting['heading_param'];


                $this->data['categories'] = array();
                $categories = array();
                $categories = $this->model_catalog_prodcat->getProductCategories($product_id);


                foreach ($categories as $category) {

                    if (empty($setting['categories'])||!in_array($category['category_id'], $setting['categories'])) {
                        $this->data['categories'][] = $category;
                    }
                }


                if ($lastlevelcategory) {
                    $parent_categories = array();
                    foreach ($this->data['categories'] as $category) {
                        $parents = $this->model_catalog_prodcat->getParentCategories($category['category_id']);

                        if ($parents) {
                            $parent_categories = array_merge($parents, $parent_categories);
                        }
                    }
                    foreach ($this->data['categories'] as $key => $category) {
                        if (in_array($category['category_id'], $parent_categories)) {
                            unset($this->data['categories'][$key]);
                        }
                    }
                }
            }
        }

        $this->data['description'] = html_entity_decode($setting['description'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/prodcat.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/module/prodcat.tpl';
        } else {
            $this->template = 'default/template/module/prodcat.tpl';
        }

        $this->render();
    }

}

?>
