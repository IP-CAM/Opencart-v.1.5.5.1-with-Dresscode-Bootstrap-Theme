<?php

class ModelCatalogProdcat extends Model {

    public function getProductCategories($product_id) {
        $query = "SELECT cd.category_id, c.parent_id, cd.name FROM " . DB_PREFIX . "product_to_category ptc inner join " . DB_PREFIX . "category c on ptc.category_id = c.category_id inner join " . DB_PREFIX . "category_description cd on c.category_id = cd.category_id where ptc.product_id=" . (int)$product_id;
        $result = $this->db->query($query);
        return $result->rows;
        }
    
    
   public function getParentCategories($category_id) {
       $category_data = array();
		$category = $this->db->query("SELECT parent_id FROM " . DB_PREFIX . "category WHERE category_id = '" . (int)$category_id . "' LIMIT 1");
	        
                if($category->num_rows>0){
                $category_data[] = $category->row['parent_id'];   
                $parent = $this->getParentCategories($category->row['parent_id']);
               	if ($parent) {
				$category_data = array_merge($parent, $category_data);
			}	
                }
                
		return $category_data;
	}

}
?>