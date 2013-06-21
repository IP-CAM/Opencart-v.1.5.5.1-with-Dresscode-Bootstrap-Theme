<?php
class Controllermodelmodel extends Controller {
	private $error = array();
	public function index() {
		$this->load->language('make/make');

		$this->document->setTitle($this->language->get('heading_title2'));
		
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
		
		$this->data['heading_title'] = $this->language->get('heading_title2');
		$this->data['add_new'] = $this->language->get('add_new');
	
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		
		$this->load->model('make/make');
		$results = $this->model_make_make->getModelDetails();
		foreach ($results as $result) {		
			$this->data['model'][] = array(
				'modelId'			=> $result['modelId'],
				'makeId' 		 	=> $result['makeId'],
				'ModelName'      	=> $result['ModelName'],
				'MakeName'      	=> $result['MakeName'],
				'CreatedDate'      	=> $result['CreatedDate']
			);
		}
		/*$result_make = $this->model_make_make->getMakeDetails();
		$sOption = '';
		foreach ($result_make as $results_make) {	
			$sOption = $sOption."<option value='$results_make[makeId]'>$results_make[MakeName]</option>";
		}
		$this->data['make'] = "<select name='optMake' id='optMake'><option value='-1'>--Select Model--</option>".$sOption."</select>";*/
		
		$this->template = 'model/model.tpl';
		$this->children = array(
		'common/header',
		'common/footer',
		);
		$this->response->setOutput($this->render());		
  }
}
?>