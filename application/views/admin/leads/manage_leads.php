<?php init_head(); ?>
<div id="wrapper">
 <div class="content">
  <div class="row">
   <?php include_once(APPPATH . 'views/admin/includes/alerts.php'); ?>
   <div class="col-md-12">
    
   <?php $this->load->view('admin/includes/widgets/leads_summary')?>

<div class="panel_s mtop5">
 <div class="panel-body">
  <div class="tab-content">
   <?php
   if($this->session->has_userdata('leads_kanban_view') && $this->session->userdata('leads_kanban_view') == 'true') { ?>

   <div class="active kan-ban-tab" id="kan-ban-tab" style="overflow:auto;">
     <div class="kanban-leads-sort">
      <span class="bold"><?php echo _l('leads_sort_by'); ?>: </span>
      <a href="#" onclick="leads_kanban_sort('dateadded'); return false"><?php echo _l('leads_sort_by_datecreated'); ?></a>
      |
      <a href="#" onclick="leads_kanban_sort('leadorder');return false;"><?php echo _l('leads_sort_by_kanban_order'); ?></a>
      |
      <a href="#" onclick="leads_kanban_sort('lastcontact');return false;"><?php echo _l('leads_sort_by_lastcontact'); ?></a>
    </div>
    <div class="row">
      <div class="container-fluid leads-kan-ban">
       <div id="kan-ban"></div>
     </div>
   </div>
 </div>
 <?php } else { ?>

 <div class="row" id="leads-table">
  <div class="col-md-12">
   <div class="row">
    <div class="col-md-12">
     <p class="bold"><?php echo _l('filter_by'); ?></p>
   </div>
   <?php if(is_admin()){ ?>
   <div class="col-md-3">
     <?php echo render_select('view_assigned',$staff,array('staffid',array('firstname','lastname')),'','',array('data-width'=>'100%','data-none-selected-text'=>_l('leads_dt_assigned'))); ?>
   </div>
   <?php } ?>
   <!-- <div class="col-md-3">
     <?php
     //echo render_select('view_status',$statuses,array('id','name'),'','',array('data-width'=>'100%','data-none-selected-text'=>_l('leads_dt_status')));
     ?>
   </div> -->
   <div class="col-md-3">
     <?php
     echo render_select('view_source',$sources,array('id','name'),'','',array('data-width'=>'100%','data-none-selected-text'=>_l('leads_source')));
     ?>
   </div>
   <div class="col-md-3">
     <select name="custom_view" title="<?php echo _l('additional_filters'); ?>" id="custom_view" class="selectpicker" data-width="100%">
       <option value=""></option>
       <option value="lost"><?php echo _l('lead_lost'); ?></option>
       <option value="junk"><?php echo _l('lead_junk'); ?></option>
       <!-- <option value="public"><?php echo _l('lead_public'); ?></option> -->
       <option value="contacted_today"><?php echo _l('lead_add_edit_contected_today'); ?></option>
       <option value="created_today"><?php echo _l('created_today'); ?></option>
       <?php if(is_admin()){ ?>
       <option value="not_assigned"><?php echo _l('leads_not_assigned'); ?></option>
       <?php } ?>
     </select>
   </div>
 </div>
</div>
<div class="clearfix"></div>
<hr />
<div class="col-md-12">
  <?php if(is_admin()){ ?><!-- <a href="#" data-toggle="modal" data-target="#leads_bulk_actions" class="btn btn-info mbot15"><?php echo _l('bulk_actions'); ?></a> -->
  <div class="modal fade bulk_actions" id="leads_bulk_actions" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
     <div class="modal-content">
      <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       <h4 class="modal-title"><?php echo _l('bulk_actions'); ?></h4>
     </div>
     <div class="modal-body">
      
      <div class="checkbox checkbox-danger" style="display: none;">
        <input type="checkbox" name="mass_delete" id="mass_delete">
        <label for="mass_delete"><?php echo _l('mass_delete'); ?></label>
      </div>
      <hr class="mass_delete_separator" />
      <div id="bulk_change">
        <?php echo render_select('move_to_status_leads_bulk',$statuses,array('id','name'),'ticket_single_change_status'); ?>
        <?php echo render_select('move_to_source_leads_bulk',$sources,array('id','name'),'lead_source'); ?>
        <?php echo render_select('assign_to_leads_bulk',$staff,array('staffid',array('firstname','lastname')),'leads_dt_assigned'); ?>
     </div>
   </div>
   <div class="modal-footer">
     <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _l('close'); ?></button>
     <a href="#" class="btn btn-info" onclick="leads_bulk_action(this); return false;"><?php echo _l('confirm'); ?></a>
   </div>
 </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal --><?php } ?>
<?php
$table_data = array();
  $_table_data = array(
    '<span class="hide"> - </span><div class="checkbox mass_select_all_wrap" style="display: none;"><input type="checkbox" id="mass_select_all" data-to-table="leads"><label></label></div>',
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

$_op = _l('options');
array_push($table_data,$_op);
render_datatable($table_data,'leads'); ?>
</div>
</div>
<?php } ?>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<?php include_once(APPPATH.'views/admin/leads/status.php'); ?>
<?php init_tail(); ?>
<script>
 var c_leadid = '<?php echo $leadid; ?>';
</script>
<script>
 $(function(){
  leads_kanban();
});
</script>
</body>
</html>
