<?php
class ControllerModuleTestimonial extends Controller {
	protected function index($setting) {
		$this->load->language('module/testimonial');
		$this->load->model('fido/testimonial');

		$this->data['template'] = $this->config->get('config_template');

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_stars'] = $this->language->get('text_stars');
		$this->data['text_more'] = $this->language->get('text_more');
		$this->data['text_testify'] = $this->language->get('text_testify');
		$this->data['text_more_testimonials'] = $this->language->get('text_more_testimonials');
		$this->data['text_no_testimonials'] = $this->language->get('text_no_testimonials');

		$this->data['display_photo'] = $this->config->get('testimonial_module_photo');

		$this->data['display_rating'] = $this->config->get('testimonial_display_rating_module');

		$this->data['photo_size'] = $setting['image_height'];

		$this->load->model('tool/image');

		$this->data['testimonials'] = array();

		$results = $this->model_fido_testimonial->getTestimonials(0, $setting['limit'], $this->session->data['language']);

		foreach ($results as $result) {
			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				$photo = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
			} else {
				$photo = $this->model_tool_image->resize('no_photo.jpg', $setting['image_width'], $setting['image_height']);
			}

			$testimony = nl2br(html_entity_decode($result['testimony'], ENT_QUOTES, 'UTF-8'));

			$word_string = '';

			$words = explode(' ', strip_tags($testimony));

			if ($this->config->get('testimonial_excerpt_module')) {
				if ($setting['word_limit']) {
					$excerpt_words = $setting['word_limit'];
				} else {
					$excerpt_words = 5;
				}

				if ($excerpt_words > count($words)) {
					$excerpt_words = count($words);
				}

				for ($i = 0; $i < $excerpt_words; $i++) {
					$word_string .= $words[$i] . ' ';
				}
			}

			$this->data['testimonials'][] = array(
				'testimony'     => $word_string,
				'name'          => $result['firstname'] . ' ' . $result['lastname'],
				'website'       => $result['website'],
				'company'       => $result['company'],
				'title'         => $result['title'],
				'photo'         => $photo,
			    'rating'        => $result['rating'],
				'stars'         => sprintf($this->language->get('text_stars'), $result['rating']),
				'href'          => $this->url->link('information/testimonial/display', 'testimonial_id=' . $result['testimonial_id'])
			);
		}

		$this->data['testify'] = $this->url->link('information/testimonial/testify');
		$this->data['more_testimonials'] = $this->url->link('information/testimonial');

		$this->data['enable_guest'] = $this->config->get('testimonial_guest_status') && !$this->customer->isLogged();

		if ($this->customer->isLogged()) {
			$this->data['is_logged'] = TRUE;
		} else {
			$this->data['is_logged'] = FALSE;
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/testimonial.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/testimonial.tpl';
		} else {
			$this->template = 'default/template/module/testimonial.tpl';
		}

		$this->render();
	}
}
?>
