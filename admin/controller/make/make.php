<?php
class Controllermakemake extends Controller {
	private $error = array();
	public function index() {
		$this->load->language('make/make');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->getList();
	} 
		
	public function getList() {		
		$url = '';
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['add_new'] = $this->language->get('add_new');
	
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		
		$this->load->model('make/make');
		$results = $this->model_make_make->getMakeDetails();
		foreach ($results as $result) {		
			$this->data['make'][] = array(
				'makeId'			=> $result['makeId'],
				'MakeName' 		 	=> $result['MakeName'],
				'CreatedDate'      	=> $result['CreatedDate']
			);
		}	

		$this->template = 'make/make.tpl';
		$this->children = array(
		'common/header',
		'common/footer',
		);
		$this->response->setOutput($this->render());		
  }
}
?>