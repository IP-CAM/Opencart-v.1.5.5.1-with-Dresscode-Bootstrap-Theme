<?php
/**
 * Created by JetBrains PhpStorm.
 * User: luka
 * Date: 19.12.12
 * Time: 9:53
 * To change this template use File | Settings | File Templates.
 */

class ControllerModuleBuyshop extends Controller {

    private $error = array();
    public function index() {
        $this->load->model('catalog/information');
        //$this->template = 'module/buyshop.tpl';
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . 'module/buyshop.tpl')) {
            $this->template = $this->config->get('config_template') . 'module/buyshop.tpl';
        } else {
            $this->template = 'module/buyshop.tpl';
        }


        $this->load->model('setting/setting');


        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            //var_dump($this->request->post);
            //exit;
            $this->model_setting_setting->editSetting('buyshop', $this->request->post);
   /*
            print_r($this->request->post);
            $this->data['bs_m'] = $this->config->get('bs_m');
            print_r($this->data['bs_m']);
            exit;
*/
            $this->session->data['text_success'] = $this->language->get('text_success');

            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

//        if (isset($this->request->post['bs_m'])) {
//            $this->data['bs_m'] = $this->request->post['bs_m'];
//        } elseif ($this->config->get('bs_m')) {
            $this->data['bs_general'] = $this->config->get('bs_general');
            $this->data['bs_productlabels'] = $this->config->get('bs_productlabels');
            $this->data['bs_social'] = $this->config->get('bs_social');
 //       }

//        print_r($this->data['bs_m']);
//        exit;

        //$this->document->addScript('catalog/view/javascript/'.$this->config->get('config_template').'/script.js');
        //$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template'). '/stylesheet/' . $css_file);
        $this->document->addScript($this->config->get('config_url').'catalog/view/bs-colorpicker/js/colorpicker.js');
        $this->document->addStyle($this->config->get('config_url').'catalog/view/bs-colorpicker/css/colorpicker.css');
        $this->data['config_url'] = $this->config->get('config_url');
        $this->data['action'] = $this->url->link('module/buyshop', 'token=' . $this->session->data['token'], 'SSL');

        $this->children = array(
            'common/header',
            'common/footer'
        );
        $this->response->setOutput($this->render());
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/information')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}