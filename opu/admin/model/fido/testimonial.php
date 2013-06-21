<?php
class ModelFidoTestimonial extends Model {
	public function addTestimonial($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "testimonial SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', website = '" . $this->db->escape($data['website']) . "', rating = '" . (int)$data['rating'] . "', company = '" . $this->db->escape($data['company']) . "', title = '" . $this->db->escape($data['title']) . "', language_code = '" . $data['language_code'] . "', testimony = '" . $this->db->escape($data['testimony']) . "', featured = '" . (int)$data['featured'] . "', status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', date_added = NOW(), date_modified = NOW()");

		$testimonial_id = $this->db->getLastId();

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "testimonial SET image = '" . $this->db->escape($data['image']) . "' WHERE testimonial_id = '" . (int)$testimonial_id . "'");
		}

		if (isset($data['testimonial_store'])) {
			foreach ($data['testimonial_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "testimonial_to_store SET testimonial_id = '" . (int)$testimonial_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		$this->cache->delete('testimonial');
	}

	public function editTestimonial($testimonial_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "testimonial SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', website = '" . $this->db->escape($data['website']) . "', company = '" . $this->db->escape($data['company']) . "', title = '" . $this->db->escape($data['title']) . "', rating = '" . (int)$data['rating'] . "', language_code = '" . $data['language_code'] . "', testimony = '" . $this->db->escape($data['testimony']) . "', featured = '" . (int)$data['featured'] . "', status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', date_modified = NOW() WHERE testimonial_id = '" . (int)$testimonial_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "testimonial SET image = '" . $this->db->escape($data['image']) . "' WHERE testimonial_id = '" . (int)$testimonial_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "testimonial_to_store WHERE testimonial_id = '" . (int)$testimonial_id . "'");

		if (isset($data['testimonial_store'])) {
			foreach ($data['testimonial_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "testimonial_to_store SET testimonial_id = '" . (int)$testimonial_id . "', store_id = '" . (int)$store_id . "'");
			}
		}

		$this->cache->delete('testimonial');
	}

	public function deleteTestimonial($testimonial_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "testimonial WHERE testimonial_id = '" . (int)$testimonial_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "testimonial_to_store WHERE testimonial_id = '" . (int)$testimonial_id . "'");

		$this->cache->delete('testimonial');
	}

	public function getTestimonial($testimonial_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "testimonial WHERE testimonial_id = '" . (int)$testimonial_id . "'");

		return $query->row;
	}

	public function getTestimonials($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "testimonial";

			$sort_data = array(
				'firstname',
				'lastname',
				'email',
			    'website',
				'status',
				'rating',
				'featured',
				'sort_order',
				'date_added'
			);

			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];
			} else {
				$sql .= " ORDER BY date_added";
			}

			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}

			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}

				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}

			$query = $this->db->query($sql);

			return $query->rows;
		} else {
			$testimonial_data = $this->cache->get('testimonial.' . $this->config->get('config_language_id'));

			if (!$testimonial_data) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "testimonial ORDER BY date_added");

				$testimonial_data = $query->rows;

				$this->cache->set('testimonial.' . $this->config->get('config_language_id'), $testimonial_data);
			}

			return $testimonial_data;
		}
	}

	public function getTestimonialStores($testimonial_id) {
		$testimonial_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "testimonial_to_store WHERE testimonial_id = '" . (int)$testimonial_id . "'");

		foreach ($query->rows as $result) {
			$testimonial_store_data[] = $result['store_id'];
		}

		return $testimonial_store_data;
	}

	public function getTotalTestimonials() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "testimonial");

		return $query->row['total'];
	}

	public function getTotalTestimonialsAwaitingApproval() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "testimonial WHERE status = '0'");

		return $query->row['total'];
	}

	public function checkTestimonials() {
		$create_testimonial = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "testimonial` (`testimonial_id` int(11) NOT NULL AUTO_INCREMENT, `customer_id` int(11) NOT NULL DEFAULT 0, `status` int(1) NOT NULL DEFAULT '0', `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '', `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '', `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '', `website` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '', `company` varchar(128) COLLATE utf8_bin, `title` varchar(128) COLLATE utf8_bin, `rating` int(1) NOT NULL DEFAULT '0', `language_code` varchar(5) NOT NULL DEFAULT 'en', `testimony` TEXT COLLATE utf8_bin NOT NULL, `image` VARCHAR(255), `featured` int(1) NOT NULL DEFAULT 0, `sort_order` int(5) NOT NULL DEFAULT 99999, `date_added` DATETIME NOT NULL, `date_modified` DATETIME NOT NULL, PRIMARY KEY (`testimonial_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_testimonial);
		$create_testimonial_to_store = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "testimonial_to_store` (`testimonial_id` int(11) NOT NULL, `store_id` int(11) NOT NULL, PRIMARY KEY (`testimonial_id`,`store_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_testimonial_to_store);
	}
}
?>
