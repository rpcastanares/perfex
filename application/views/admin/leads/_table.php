<?php
    $table_data = array();
    $_table_data = array(
    '',
    '#',
        _l('leads_dt_name'),
        _l('lead_company'),
        _l('leads_dt_email'),
        _l('leads_dt_phonenumber'),
        _l('leads_dt_assigned'),
        _l('leads_dt_status'),
        _l('lead_source'),
        _l('leads_dt_last_contact'),
        _l('leads_dt_datecreated'),
        "Client Type");
    foreach($_table_data as $_t){
        array_push($table_data,$_t);
    }
    $custom_fields = get_custom_fields('leads',array('show_on_table'=>1));
    foreach($custom_fields as $field){
        array_push($table_data,$field['name']);
    }
    render_datatable($table_data,'leads'); 
?>