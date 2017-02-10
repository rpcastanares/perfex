<div class="panel_s">
    <div class="panel-body">
        <div class="row">
            <div class="col-md-5">
            <a href="#" class="btn btn-default btn-with-tooltip" data-toggle="tooltip" data-title="<?php echo _l('leads_summary'); ?>" data-placement="btn-with-tooltipom" onclick="slideToggle('.leads-overview'); return false;"><i class="fa fa-bar-chart"></i></a>
            </div>
        </div>
        
        <div class="row leads-overview">
            <hr />
            <div class="col-md-12">
                <h3 class="text-success no-margin"><?php echo _l('leads_summary'); ?></h3>
            </div>
            <?php
                $roleId = get_staff_role_id();
                $statuses = $this->db->get('tblleadsstatus')->result_array();
                $where_not_admin = '(addedfrom = '.get_staff_user_id().' OR assigned='.get_staff_user_id().' OR is_public = 1)';
                $numStatuses = count($statuses);
                $is_admin = is_admin();
                $cnt = 1;
                foreach($statuses as $status){ 
            ?>
            <div class="col-md-2 col-xs-6 <?php if(!$cnt%6==0){ echo 'border-right'; } ?>">
                <?php
                    $this->db->where('status',$status['id']);
                    if(!$is_admin && $roleId != 6){
                        $this->db->where($where_not_admin);
                    }
                    $total = $this->db->count_all_results('tblleads');
                ?>
                <h3 class="bold"><?php echo $total; ?></h3>
                <span class="bold" style="color:<?php echo $status['color']; ?>"><?php echo $status['name'] . $cnt; ?></span>
            </div>
            <?php
                    if($cnt%6==0){
                        echo '<div class="clearfix"></div>';
                    } 
                    $cnt++; 
                } 
            ?>
            <?php 
                if(!$is_admin){
                    $this->db->where($where_not_admin);
                }
                $total_leads = $this->db->count_all_results('tblleads');

                if($cnt%6==0){
                    echo '<div class="clearfix"></div>';
                }
                // $cnt++;
            ?>
            <div class="col-md-2 col-xs-6 border-right">
                <?php
                    $this->db->where('lost',1);
                    if(!$is_admin && $roleId != 6){
                        $this->db->where($where_not_admin);
                    }
                    $total_lost = $this->db->count_all_results('tblleads');
                    $percent_lost = ($total_leads > 0 ? number_format(($total_lost * 100) / $total_leads,2) : 0);
                ?>
                <h3 class="bold"><?php echo $percent_lost; ?>%</h3>
                <span class="text-danger bold"><?php echo _l('lost_leads'); ?></span>
            </div>
            <?php 
                if($cnt%6==0){
                    echo '<div class="clearfix"></div>';
                }
            ?>
            <div class="col-md-2 col-xs-6 border-right">
                <?php
                    $this->db->where('junk',1);
                    if(!$is_admin && $roleId != 6){
                        $this->db->where($where_not_admin);
                    }
                    $total_junk = $this->db->count_all_results('tblleads');
                    $percent_junk = ($total_leads > 0 ? number_format(($total_junk * 100) / $total_leads,2) : 0);
                ?>
                <h3 class="bold"><?php echo $percent_junk; ?>%</h3>
                <span class="text-danger bold"><?php echo _l('junk_leads'); ?></span>
            </div>
        </div>
    </div>
</div>