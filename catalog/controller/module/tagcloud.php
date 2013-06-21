<?php
class ControllerModuleTagCloud extends Controller 
{
    protected function index($setting) 
    {
        $this->data = array_merge($this->data, $this->language->load('module/tagcloud'));

        $this->load->model('module/tagcloud');

        $this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/jcloud.js');


        $this->data['tagcloud'] = $this->model_module_tagcloud->getRandomTags(array(
            'limit'         => (int)$setting['limit'],
            'min_font_size' => (int)$setting['min_font_size'],
            'max_font_size' => (int)$setting['max_font_size'],
            'resize'        => $this->config->get('tagcloud_resize')
        ));

        /* theme options output */
        $this->config->get('bs_general');
        $this->data['buyshop_general_settings'] = $this->config->get('bs_general');

        if (isset($this->data['buyshop_general_settings']['tagstack'])) {
            $this->data['tagstack'] = $this->data['buyshop_general_settings']['tagstack'];
        } else {
            $this->data['tagstack'] = '';
        }


        /* theme options output */

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tagcloud.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/module/tagcloud.tpl';
        } else {
            $this->template = 'default/template/module/tagcloud.tpl';
        }
        
        $this->render();
    }
}
