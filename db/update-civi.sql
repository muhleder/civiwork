INSERT INTO `civicrm_uf_group` (`id`, `is_active`, `group_type`, `title`, `help_pre`, `help_post`, `limit_listings_group_id`, `post_URL`, `add_to_group_id`, `add_captcha`, `is_map`, `is_edit_link`, `is_uf_link`, `is_update_dupe`, `cancel_URL`, `is_cms_user`, `notify`, `is_reserved`, `name`, `created_id`, `created_date`, `is_proximity_search`)
VALUES
	(10, 1, 'Individual, Contact', 'System Default Profile', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 1, 'system_default_profile', NULL, NULL, 0);

INSERT INTO `civicrm_uf_field` (`id`, `uf_group_id`, `field_name`, `is_active`, `is_view`, `is_required`, `weight`, `help_post`, `help_pre`, `visibility`, `in_selector`, `is_searchable`, `location_type_id`, `phone_type_id`, `label`, `field_type`, `is_reserved`)
VALUES
	(43, 10, 'email', 1, 0, 0, 1, NULL, NULL, 'User and User Admin Only', 0, 0, NULL, NULL, 'Email Address', 'Contact', 1);
