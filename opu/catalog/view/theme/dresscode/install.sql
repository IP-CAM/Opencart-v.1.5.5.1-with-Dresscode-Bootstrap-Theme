DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'affiliate';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'affiliate';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'banner';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'banner';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'slideshow';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'slideshow';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'carousel';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'carousel';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'featured';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'featured';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'category';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'category';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'category';
INSERT INTO ?:setting VALUES (null, 0, 'category', 'category_module', 'a:10:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:9;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'account';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'account';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'account';
INSERT INTO ?:setting VALUES (null, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'special';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'special';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'bestseller';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'bestseller';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'latest';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'latest';

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_featured';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_featured';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_featured';
INSERT INTO ?:setting VALUES (null, 0, 'featured', 'dresscode_featured_module', 'a:11:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"6";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:2:"10";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"3";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"7";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"8";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"4";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:2:"11";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"5";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:9;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"2";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:10;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"9";s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);
INSERT INTO ?:setting VALUES (null, 0, 'featured', 'featured_product', '33', 0);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_latest';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_latest';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_latest';
INSERT INTO ?:setting VALUES (null, 0, 'dresscode_latest', 'dresscode_latest_module', 'a:1:{i:0;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_special';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_special';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_special';
INSERT INTO ?:setting VALUES (null, 0, 'dresscode_special', 'dresscode_special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_bestseller';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_bestseller';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_bestseller';
INSERT INTO ?:setting VALUES (null, 0, 'dresscode_bestseller', 'dresscode_bestseller_module', 'a:1:{i:0;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:3:"329";s:12:"image_height";s:3:"418";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_banner';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_banner';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_banner';
INSERT INTO ?:setting VALUES (null, 0, 'dresscode_banner', 'dresscode_banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"900";s:6:"height";s:3:"484";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);


DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'newslettersubscribe';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'newslettersubscribe';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'newslettersubscribe';
INSERT INTO ?:setting VALUES (null, 0, 'newslettersubscribe', 'newslettersubscribe_module', 'a:11:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:9;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:10;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:14:"content_slider";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'buyshop';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'buyshop';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'buyshop';

INSERT INTO ?:setting VALUES (null, 0, 'buyshop', 'bs_general', 'a:9:{s:4:"font";s:9:"Open Sans";s:9:"bgpattern";s:1:"0";s:10:"themecolor";s:0:"";s:14:"contentbgcolor";s:0:"";s:9:"fontcolor";s:0:"";s:8:"tagstack";s:7:"animate";s:15:"productrollover";s:6:"enable";s:8:"ajaxcart";s:6:"enable";s:8:"response";s:6:"enable";}', 1);
INSERT INTO ?:setting VALUES (null, 0, 'buyshop', 'bs_productlabels', 'a:4:{s:4:"sale";s:6:"enable";s:12:"saleposition";s:8:"top_left";s:5:"video";s:6:"enable";s:13:"videoposition";s:9:"top_right";}', 1);
INSERT INTO ?:setting VALUES (null, 0, 'buyshop', 'bs_social', 'a:2:{s:7:"twitter";s:11:"themeforest";s:8:"facebook";s:12:"109822959866";}', 1);


UPDATE  ?:product_description SET `tag` =  'Smartphone' WHERE  `product_id` = 28;
UPDATE  ?:product_description SET `tag` =  'Phone,Mobile' WHERE  `product_id` = 29;
UPDATE  ?:product_description SET `tag` =  'Camera,Canon' WHERE  `product_id` = 30;
UPDATE  ?:product_description SET `tag` =  'Camera' WHERE  `product_id` = 31;
UPDATE  ?:product_description SET `tag` =  'iPod' WHERE  `product_id` = 32;
UPDATE  ?:product_description SET `tag` =  'Monitor,Laptop' WHERE  `product_id` = 33;
UPDATE  ?:product_description SET `tag` =  'iPod,Phone' WHERE  `product_id` = 34;
UPDATE  ?:product_description SET `tag` =  'Cool,modern' WHERE  `product_id` = 35;
UPDATE  ?:product_description SET `tag` =  'iPod' WHERE  `product_id` = 36;
UPDATE  ?:product_description SET `tag` =  'iPhone,Mobile' WHERE  `product_id` = 40;
UPDATE  ?:product_description SET `tag` =  'Laptop,iMac' WHERE  `product_id` = 41;
UPDATE  ?:product_description SET `tag` =  'Monitor,Apple' WHERE  `product_id` = 42;
UPDATE  ?:product_description SET `tag` =  'Macbook' WHERE  `product_id` = 43;
UPDATE  ?:product_description SET `tag` =  'Macbook,Laptop' WHERE  `product_id` = 44;
UPDATE  ?:product_description SET `tag` =  'Macbook' WHERE  `product_id` = 45;
UPDATE  ?:product_description SET `tag` =  'Laptop,Sony' WHERE  `product_id` = 46;
UPDATE  ?:product_description SET `tag` =  'Cool,Laptop,Usefull' WHERE  `product_id` = 47;
UPDATE  ?:product_description SET `tag` =  'iPod' WHERE  `product_id` = 48;
UPDATE  ?:product_description SET `tag` =  'Mobile' WHERE  `product_id` = 49;



DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_custom_product_box';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_custom_product_box';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_custom_product_box';
INSERT INTO ?:setting VALUES (null, 0, 'dresscode_custom_product_box', 'dresscode_custom_product_box_module', 'a:1:{i:1;a:5:{s:11:"description";a:1:{i:1;s:1595:"&lt;div class=&quot;dresscode_product_custom_block&quot;&gt;\r\n                             &lt;div class=&quot;dresscode_product_custom_block_subtitle&quot;&gt;\r\n                                 You can add your content here, like promotions or some additional info\r\n                             &lt;/div&gt;\r\n                             &lt;div class=&quot;custom_block_items&quot;&gt;\r\n                                 &lt;div class=&quot;custom_block_item custom_block_item_1&quot;&gt;\r\n                                     &lt;table&gt;&lt;tr&gt;&lt;td&gt;Special offer: 1+1=3 Get a gift!&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;\r\n                                 &lt;/div&gt;\r\n\r\n                                 &lt;div class=&quot;custom_block_item custom_block_item_2&quot;&gt;\r\n                                     &lt;table&gt;&lt;tr&gt;&lt;td&gt;free Reward Card Worth $10, $50, $100.&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;\r\n                                 &lt;/div&gt;\r\n                                 &lt;div class=&quot;custom_block_item custom_block_item_3&quot;&gt;\r\n                                     &lt;table&gt;&lt;tr&gt;&lt;td&gt;Join to our Club&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;\r\n                                 &lt;/div&gt;\r\n                                 &lt;div class=&quot;custom_block_item custom_block_item_4&quot;&gt;\r\n                                     &lt;table&gt;&lt;tr&gt;&lt;td&gt;free shipping&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;\r\n                                 &lt;/div&gt;\r\n                             &lt;/div&gt;\r\n\r\n                    &lt;/div&gt;";}s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1);

DELETE FROM ?:extension WHERE `type` = 'module' AND `code` = 'dresscode_custom_menu_box';
DELETE FROM ?:setting WHERE `store_id` = '0' AND `group` = 'dresscode_custom_menu_box';
INSERT INTO ?:extension SET `type` = 'module', `code` = 'dresscode_custom_menu_box';
INSERT INTO ?:setting VALUES (null, 0, 'dresscode_custom_menu_box', 'dresscode_custom_menu_box_module', 'a:1:{i:1;a:5:{s:11:"description";a:1:{i:1;s:1327:"&lt;h1 class=&quot;custom_menu_title&quot;&gt;Lorem ipsum dolor&lt;/h1&gt;\r\n                        &lt;div class=&quot;clearfix&quot;&gt;\r\n                            &lt;p class=&quot;custom_menu_img&quot;&gt;&lt;img src=&quot;http://www.ethemeuk.com/dresscode/media/category_img_1.jpg&quot; alt=&quot;&quot;&gt;&lt;/p&gt;\r\n                            &lt;p class=&quot;custom_menu_text_1&quot;&gt;This is a HTML block; you can create it via admin panel. There are many blocks like this on site. They are created especially to set to everybody’s preferences. If you have any questions please make a request via our &lt;a href=&quot;index.php?route=information/contact&quot;&gt;contact form&lt;/a&gt;&lt;/p&gt;\r\n                            &lt;p class=&quot;custom_menu_img&quot; &gt;&lt;img src=&quot;http://www.ethemeuk.com/dresscode/media/category_img_2.jpg&quot; alt=&quot;&quot;&gt;&lt;/p&gt;\r\n                            &lt;p class=&quot;custom_menu_text_2&quot;&gt;This is a HTML block; you can create it via admin panel. There are many blocks like this on site. They are created especially to set to everybody’s preferences. If you have any questions please make a request via our &lt;a href=&quot;index.php?route=information/contact&quot;&gt;contact form&lt;/a&gt;&lt;/p&gt;\r\n                        &lt;/div&gt;";}s:9:"layout_id";s:1:"1";s:8:"position";s:11:"custom_menu";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1);


DELETE FROM ?:banner where `banner_id`= 9;
INSERT INTO ?:banner (`banner_id`, `name`, `status`) VALUES
(9, 'Top Slider', 1);

DELETE FROM ?:banner_image where `banner_id`= 9;
INSERT INTO ?:banner_image (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(78, 9, 'index.php?route=product/category&amp;amp;path=34', 'data/slider_img1.jpg'),
(79, 9, 'index.php?route=product/category&amp;amp;path=34', 'data/slider_img2.jpg'),
(80, 9, 'index.php?route=product/category&amp;amp;path=34', 'data/slider_img3.jpg'),
(81, 9, 'index.php?route=product/category&amp;amp;path=34', 'data/slider_img4.jpg'),
(82, 9, 'index.php?route=product/category&amp;amp;path=34', 'data/slider_img5.jpg'),
(83, 9, 'index.php?route=product/category&amp;amp;path=34', 'data/slider_img6.jpg');


DELETE FROM ?:banner_image_description where `banner_id`= 9;
INSERT INTO ?:banner_image_description (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(78, 1, 9, 'slide1'),
(79, 1, 9, 'slide2'),
(80, 1, 9, 'slide3'),
(81, 1, 9, 'slide4'),
(82, 1, 9, 'slide5'),
(83, 1, 9, 'slide6');



DELETE FROM ?:information where `information_id`= 7;
DELETE FROM ?:information where `information_id`= 8;
DELETE FROM ?:information where `information_id`= 9;
DELETE FROM ?:information where `information_id`= 10;
INSERT INTO ?:information (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(7, 0, 5, 1),
(8, 0, 6, 1),
(9, 0, 7, 1),
(10, 0, 8, 1);

DELETE FROM ?:information_description where `information_id`= 7;
DELETE FROM ?:information_description where `information_id`= 8;
DELETE FROM ?:information_description where `information_id`= 9;
DELETE FROM ?:information_description where `information_id`= 10;
INSERT INTO ?:information_description (`information_id`, `language_id`, `title`, `description`) VALUES
(7, 1, 'original products', '&lt;p&gt;	See exclusive information about our original products&lt;/p&gt;'),
(8, 1, 'free shipping', '&lt;p&gt; 	FREE SHIPPING FREE SHIPPING FREE SHIPPING&lt;/p&gt;'),
(9, 1, 'cash on delivery', '&lt;p&gt;cash on delivery cash on delivery&lt;/p&gt;'),
(10, 1, '30 days returns', '&lt;p&gt;30 days returns 30 days returns&lt;/p&gt;');

DELETE FROM ?:information_to_store where `information_id`= 7;
DELETE FROM ?:information_to_store where `information_id`= 8;
DELETE FROM ?:information_to_store where `information_id`= 9;
DELETE FROM ?:information_to_store where `information_id`= 10;
INSERT INTO ?:information_to_store (`information_id`, `store_id`) VALUES
(7, 0),
(8, 0),
(9, 0),
(10, 0);

UPDATE ?:setting SET `value` = '328' WHERE `key` = 'config_image_product_width';
UPDATE ?:setting SET `value` = '418' WHERE `key` = 'config_image_product_height';

UPDATE ?:setting SET `value` = '328' WHERE `key` = 'config_image_additional_width';
UPDATE ?:setting SET `value` = '418' WHERE `key` = 'config_image_additional_height';

UPDATE ?:setting SET `value` = '328' WHERE `key` = 'config_image_thumb_width';
UPDATE ?:setting SET `value` = '418' WHERE `key` = 'config_image_thumb_height';

UPDATE ?:setting SET `value` = '329' WHERE `key` = 'config_image_related_width';
UPDATE ?:setting SET `value` = '418' WHERE `key` = 'config_image_related_height';

UPDATE ?:setting SET `value` = '625' WHERE `key` = 'config_image_popup_width';
UPDATE ?:setting SET `value` = '794' WHERE `key` = 'config_image_popup_height';

UPDATE ?:setting SET `value` = '40' WHERE `key` = 'config_image_wishlist_width';
UPDATE ?:setting SET `value` = '51' WHERE `key` = 'config_image_wishlist_height';

UPDATE ?:setting SET `value` = '40' WHERE `key` = 'config_image_cart_width';
UPDATE ?:setting SET `value` = '51' WHERE `key` = 'config_image_cart_height';

UPDATE ?:category_description SET `description` = '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.ethemeuk.com/dresscode/media/category_img.jpg&quot; /&gt;&lt;/p&gt;&lt;p class=&quot;custom_category_menu_text&quot;&gt;This is a HTML block; you can create it via admin panel. There are many blocks like this on site. They are created especially to set to everybody’s preferences. If you have any questions please make a request via our &lt;a class=&quot;custom_category_link&quot; href=&quot;index.php?route=information/contact&quot;&gt;contact form&lt;/a&gt;&lt;/p&gt;' WHERE `category_id` = '20';
UPDATE ?:category_description SET `description` = '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://www.ethemeuk.com/dresscode/media/category_img_3.jpg&quot; /&gt;&lt;/p&gt;&lt;p class=&quot;custom_category_menu_text&quot;&gt;This is a HTML block; you can create it via admin panel. There are many blocks like this on site. They are created especially to set to everybody’s preferences. If you have any questions please make a request via our &lt;a class=&quot;custom_category_link&quot; href=&quot;index.php?route=information/contact&quot;&gt;contact form&lt;/a&gt;&lt;/p&gt;' WHERE `category_id` = '18';


UPDATE ?:user_group SET `permission` = 'a:2:{s:6:"access";a:145:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:14:"catalog/review";i:10;s:18:"common/filemanager";i:11;s:13:"design/banner";i:12;s:19:"design/custom_field";i:13;s:13:"design/layout";i:14;s:14:"extension/feed";i:15;s:17:"extension/manager";i:16;s:16:"extension/module";i:17;s:17:"extension/payment";i:18;s:18:"extension/shipping";i:19;s:15:"extension/total";i:20;s:16:"feed/google_base";i:21;s:19:"feed/google_sitemap";i:22;s:20:"localisation/country";i:23;s:21:"localisation/currency";i:24;s:21:"localisation/geo_zone";i:25;s:21:"localisation/language";i:26;s:25:"localisation/length_class";i:27;s:25:"localisation/order_status";i:28;s:26:"localisation/return_action";i:29;s:26:"localisation/return_reason";i:30;s:26:"localisation/return_status";i:31;s:25:"localisation/stock_status";i:32;s:22:"localisation/tax_class";i:33;s:21:"localisation/tax_rate";i:34;s:25:"localisation/weight_class";i:35;s:17:"localisation/zone";i:36;s:14:"module/account";i:37;s:16:"module/affiliate";i:38;s:13:"module/banner";i:39;s:17:"module/bestseller";i:40;s:14:"module/buyshop";i:41;s:15:"module/carousel";i:42;s:15:"module/category";i:43;s:23:"module/dresscode_banner";i:44;s:27:"module/dresscode_bestseller";i:45;s:32:"module/dresscode_custom_menu_box";i:46;s:35:"module/dresscode_custom_product_box";i:47;s:25:"module/dresscode_featured";i:48;s:23:"module/dresscode_latest";i:49;s:24:"module/dresscode_special";i:50;s:15:"module/featured";i:51;s:13:"module/filter";i:52;s:18:"module/google_talk";i:53;s:18:"module/information";i:54;s:13:"module/latest";i:55;s:26:"module/newslettersubscribe";i:56;s:16:"module/slideshow";i:57;s:14:"module/special";i:58;s:12:"module/store";i:59;s:15:"module/tagcloud";i:60;s:14:"module/welcome";i:61;s:24:"payment/authorizenet_aim";i:62;s:21:"payment/bank_transfer";i:63;s:14:"payment/cheque";i:64;s:11:"payment/cod";i:65;s:21:"payment/free_checkout";i:66;s:22:"payment/klarna_account";i:67;s:22:"payment/klarna_invoice";i:68;s:14:"payment/liqpay";i:69;s:20:"payment/moneybookers";i:70;s:14:"payment/nochex";i:71;s:15:"payment/paymate";i:72;s:16:"payment/paypoint";i:73;s:13:"payment/payza";i:74;s:26:"payment/perpetual_payments";i:75;s:14:"payment/pp_pro";i:76;s:17:"payment/pp_pro_uk";i:77;s:19:"payment/pp_standard";i:78;s:15:"payment/sagepay";i:79;s:22:"payment/sagepay_direct";i:80;s:18:"payment/sagepay_us";i:81;s:19:"payment/twocheckout";i:82;s:28:"payment/web_payment_software";i:83;s:16:"payment/worldpay";i:84;s:27:"report/affiliate_commission";i:85;s:22:"report/customer_credit";i:86;s:22:"report/customer_online";i:87;s:21:"report/customer_order";i:88;s:22:"report/customer_reward";i:89;s:24:"report/product_purchased";i:90;s:21:"report/product_viewed";i:91;s:18:"report/sale_coupon";i:92;s:17:"report/sale_order";i:93;s:18:"report/sale_return";i:94;s:20:"report/sale_shipping";i:95;s:15:"report/sale_tax";i:96;s:14:"sale/affiliate";i:97;s:12:"sale/contact";i:98;s:11:"sale/coupon";i:99;s:13:"sale/customer";i:100;s:20:"sale/customer_ban_ip";i:101;s:19:"sale/customer_group";i:102;s:20:"sale/newssubscribers";i:103;s:10:"sale/order";i:104;s:11:"sale/return";i:105;s:12:"sale/voucher";i:106;s:18:"sale/voucher_theme";i:107;s:20:"setting/az_functions";i:108;s:21:"setting/loo_functions";i:109;s:15:"setting/setting";i:110;s:13:"setting/store";i:111;s:16:"shipping/auspost";i:112;s:17:"shipping/citylink";i:113;s:14:"shipping/fedex";i:114;s:13:"shipping/flat";i:115;s:13:"shipping/free";i:116;s:13:"shipping/item";i:117;s:23:"shipping/parcelforce_48";i:118;s:15:"shipping/pickup";i:119;s:19:"shipping/royal_mail";i:120;s:12:"shipping/ups";i:121;s:13:"shipping/usps";i:122;s:15:"shipping/weight";i:123;s:11:"tool/backup";i:124;s:14:"tool/error_log";i:125;s:12:"total/coupon";i:126;s:12:"total/credit";i:127;s:14:"total/handling";i:128;s:16:"total/klarna_fee";i:129;s:19:"total/low_order_fee";i:130;s:12:"total/reward";i:131;s:14:"total/shipping";i:132;s:15:"total/sub_total";i:133;s:9:"total/tax";i:134;s:11:"total/total";i:135;s:13:"total/voucher";i:136;s:9:"user/user";i:137;s:20:"user/user_permission";i:138;s:15:"module/tagcloud";i:139;s:14:"module/buyshop";i:140;s:14:"module/buyshop";i:141;s:14:"module/buyshop";i:142;s:14:"module/buyshop";i:143;s:14:"module/buyshop";i:144;s:27:"module/dresscode_bestseller";}s:6:"modify";a:145:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:14:"catalog/review";i:10;s:18:"common/filemanager";i:11;s:13:"design/banner";i:12;s:19:"design/custom_field";i:13;s:13:"design/layout";i:14;s:14:"extension/feed";i:15;s:17:"extension/manager";i:16;s:16:"extension/module";i:17;s:17:"extension/payment";i:18;s:18:"extension/shipping";i:19;s:15:"extension/total";i:20;s:16:"feed/google_base";i:21;s:19:"feed/google_sitemap";i:22;s:20:"localisation/country";i:23;s:21:"localisation/currency";i:24;s:21:"localisation/geo_zone";i:25;s:21:"localisation/language";i:26;s:25:"localisation/length_class";i:27;s:25:"localisation/order_status";i:28;s:26:"localisation/return_action";i:29;s:26:"localisation/return_reason";i:30;s:26:"localisation/return_status";i:31;s:25:"localisation/stock_status";i:32;s:22:"localisation/tax_class";i:33;s:21:"localisation/tax_rate";i:34;s:25:"localisation/weight_class";i:35;s:17:"localisation/zone";i:36;s:14:"module/account";i:37;s:16:"module/affiliate";i:38;s:13:"module/banner";i:39;s:17:"module/bestseller";i:40;s:14:"module/buyshop";i:41;s:15:"module/carousel";i:42;s:15:"module/category";i:43;s:23:"module/dresscode_banner";i:44;s:27:"module/dresscode_bestseller";i:45;s:32:"module/dresscode_custom_menu_box";i:46;s:35:"module/dresscode_custom_product_box";i:47;s:25:"module/dresscode_featured";i:48;s:23:"module/dresscode_latest";i:49;s:24:"module/dresscode_special";i:50;s:15:"module/featured";i:51;s:13:"module/filter";i:52;s:18:"module/google_talk";i:53;s:18:"module/information";i:54;s:13:"module/latest";i:55;s:26:"module/newslettersubscribe";i:56;s:16:"module/slideshow";i:57;s:14:"module/special";i:58;s:12:"module/store";i:59;s:15:"module/tagcloud";i:60;s:14:"module/welcome";i:61;s:24:"payment/authorizenet_aim";i:62;s:21:"payment/bank_transfer";i:63;s:14:"payment/cheque";i:64;s:11:"payment/cod";i:65;s:21:"payment/free_checkout";i:66;s:22:"payment/klarna_account";i:67;s:22:"payment/klarna_invoice";i:68;s:14:"payment/liqpay";i:69;s:20:"payment/moneybookers";i:70;s:14:"payment/nochex";i:71;s:15:"payment/paymate";i:72;s:16:"payment/paypoint";i:73;s:13:"payment/payza";i:74;s:26:"payment/perpetual_payments";i:75;s:14:"payment/pp_pro";i:76;s:17:"payment/pp_pro_uk";i:77;s:19:"payment/pp_standard";i:78;s:15:"payment/sagepay";i:79;s:22:"payment/sagepay_direct";i:80;s:18:"payment/sagepay_us";i:81;s:19:"payment/twocheckout";i:82;s:28:"payment/web_payment_software";i:83;s:16:"payment/worldpay";i:84;s:27:"report/affiliate_commission";i:85;s:22:"report/customer_credit";i:86;s:22:"report/customer_online";i:87;s:21:"report/customer_order";i:88;s:22:"report/customer_reward";i:89;s:24:"report/product_purchased";i:90;s:21:"report/product_viewed";i:91;s:18:"report/sale_coupon";i:92;s:17:"report/sale_order";i:93;s:18:"report/sale_return";i:94;s:20:"report/sale_shipping";i:95;s:15:"report/sale_tax";i:96;s:14:"sale/affiliate";i:97;s:12:"sale/contact";i:98;s:11:"sale/coupon";i:99;s:13:"sale/customer";i:100;s:20:"sale/customer_ban_ip";i:101;s:19:"sale/customer_group";i:102;s:20:"sale/newssubscribers";i:103;s:10:"sale/order";i:104;s:11:"sale/return";i:105;s:12:"sale/voucher";i:106;s:18:"sale/voucher_theme";i:107;s:20:"setting/az_functions";i:108;s:21:"setting/loo_functions";i:109;s:15:"setting/setting";i:110;s:13:"setting/store";i:111;s:16:"shipping/auspost";i:112;s:17:"shipping/citylink";i:113;s:14:"shipping/fedex";i:114;s:13:"shipping/flat";i:115;s:13:"shipping/free";i:116;s:13:"shipping/item";i:117;s:23:"shipping/parcelforce_48";i:118;s:15:"shipping/pickup";i:119;s:19:"shipping/royal_mail";i:120;s:12:"shipping/ups";i:121;s:13:"shipping/usps";i:122;s:15:"shipping/weight";i:123;s:11:"tool/backup";i:124;s:14:"tool/error_log";i:125;s:12:"total/coupon";i:126;s:12:"total/credit";i:127;s:14:"total/handling";i:128;s:16:"total/klarna_fee";i:129;s:19:"total/low_order_fee";i:130;s:12:"total/reward";i:131;s:14:"total/shipping";i:132;s:15:"total/sub_total";i:133;s:9:"total/tax";i:134;s:11:"total/total";i:135;s:13:"total/voucher";i:136;s:9:"user/user";i:137;s:20:"user/user_permission";i:138;s:15:"module/tagcloud";i:139;s:14:"module/buyshop";i:140;s:14:"module/buyshop";i:141;s:14:"module/buyshop";i:142;s:14:"module/buyshop";i:143;s:14:"module/buyshop";i:144;s:27:"module/dresscode_bestseller";}}' WHERE `name` = 'Top Administrator';

ALTER TABLE ?:product ADD `youtube` VARCHAR(255) NOT NULL;
UPDATE  ?:product SET `youtube` =  'http://www.youtube.com/watch?v=xRx3m0cP0Hg' WHERE  `product_id` = 49;
UPDATE  ?:product SET `youtube` =  'http://www.youtube.com/watch?v=xRx3m0cP0Hg' WHERE  `product_id` = 42;
UPDATE  ?:product SET `youtube` =  'http://www.youtube.com/watch?v=xRx3m0cP0Hg' WHERE  `product_id` = 33;




