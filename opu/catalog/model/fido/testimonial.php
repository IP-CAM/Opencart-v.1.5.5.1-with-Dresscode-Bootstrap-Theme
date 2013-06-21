<?php
class ModelFidoTestimonial extends Model {
	public function getTestimonial($testimonial_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "testimonial WHERE testimonial_id = '" . (int)$testimonial_id . "'");

		return $query->row;
	}

	public function getTestimonials($start = 0, $limit = 20, $language = 'en') {
		$query = $this->db->query("SELECT * FROM  " . DB_PREFIX . "testimonial t LEFT JOIN  " . DB_PREFIX . "testimonial_to_store t2s ON (t.testimonial_id = t2s.testimonial_id) WHERE t.status = 1 AND t.language_code = '" . $language . "' AND t2s.store_id = '" . (int)$this->config->get('config_store_id') . "' ORDER BY t.featured DESC, t.sort_order ASC, t.date_added DESC LIMIT " . (int)$start . ", " . (int)$limit);

		return $query->rows;
	}

	public function getTotalTestimonials($language_code) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM  " . DB_PREFIX . "testimonial t LEFT JOIN " . DB_PREFIX . "testimonial_to_store t2s ON (t.testimonial_id = t2s.testimonial_id) WHERE t.status = 1 AND t.language_code = '" . $language_code . "' AND t2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->row) {
			return $query->row['total'];
		} else {
			return FALSE;
		}
	}

	public function addTestimonial($data) {
		$this->db->query("INSERT INTO  " . DB_PREFIX . "testimonial SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['testify_email']) . "', website = '" . $this->db->escape($data['website']) . "', company = '" . $this->db->escape($data['company']) . "', title = '" . $this->db->escape($data['title']) . "', rating = '" . (int)$data['rating'] . "', language_code = '" . $this->session->data['language'] . "', testimony = '" . $this->db->escape($data['testimony']) . "', status = '" . (int)$this->config->get('testimonial_auto_approve') . "', date_added = NOW(), date_modified = NOW()");

		$testimonial_id = $this->db->getLastId();

		$this->db->query("INSERT INTO  " . DB_PREFIX . "testimonial_to_store SET testimonial_id = '" . (int)$testimonial_id . "', store_id = '" . (int)$this->config->get('config_store_id') . "'");

		$this->cache->delete('testimonial');
	}

	public function emailExists($email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM  " . DB_PREFIX . "testimonial WHERE LCASE(email) = LCASE('" . $this->db->escape($email) . "')");

		if ($query->row) {
			return $query->row['total'];
		} else {
			return FALSE;
		}
	}
}
?>
