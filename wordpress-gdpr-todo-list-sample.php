<?php
/**
 * Plugin Name: GDPR Todo List Sample
 * Description: Sample project using the WordPress core GDPR functionality.
 * Version: 1.0.0
 * Author: Ben Lobaugh, WebDevStudios
 * Author URI: https://webdevstudios.com
 */

add_filter( 'wp_privacy_personal_data_exporters', 'register_todo_list_exporter' );

function register_todo_list_exporter( $exporters ) {
	$exporters['todo-list'] = array(
		'exporter_friendly_name'	=> __( 'Todo List' ),
		'callback'					=> 'todo_list_exporter',
	);
	return $exporters;
}

function todo_list_exporter( $email_address, $page = 1 ) {
	global $wpdb;

	$sql = "SELECT * FROM `todo_list` WHERE email='$email_address'";
	$list = $wpdb->get_results( $sql );

	$export_items 	= array();
	$group_id 		= 'todo-items';
	$group_label	= 'Todo List Items';

	foreach( $list as $item ) {

		$item_data = array(
			array(
				'name'	=> __( 'Todo Item' ),
				'value'	=> $item->todo
			),
			array(
				'name'	=> __( 'Status' ),
				'value'	=> $item->status,
			),
			array(
				'name'	=> __( 'Created' ),
				'value'	=> $item->created
			)
		);

		$export_items[] = array(
			'group_id'		=> $group_id,
			'group_label'	=> $group_label,
			'item_id'		=> $item->id,
			'data'			=> $item_data
		);
	}
	
	return array(
		'data'	=> $export_items,
		'done'	=> true
	);
}

add_filter( 'wp_privacy_personal_data_erasers', 'register_todo_list_eraser' );

function register_todo_list_eraser( $erasers ) {
	$erasers['todo-list'] = array(
		'eraser_friendly_name'	=> __( 'Todo List' ),
		'callback'				=> 'todo_list_eraser'
	);
	return $erasers;
}

function todo_list_eraser( $email_address, $page = 1 ) { 
	global $wpdb;

	$removed = $wpdb->delete( 'todo_list', array( 'email' => $email_address ) );

	return array(
		'items_removed'  => $removed,
		'items_retained' => false,
		'messages'       => array(),
		'done'           => true,
	);
}
