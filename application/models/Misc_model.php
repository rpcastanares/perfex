<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Misc_model extends CRM_Model
{
    public $notifications_limit = 15;
    function __construct()
    {
        parent::__construct();
    }
    public function get_taxes_dropdown_template($name, $taxname, $type = '', $item_id = '', $is_edit = false, $manual = false)
    {
        // if passed manualy - like in proposal convert items or project
        if ($manual == true) {
            if (strpos($taxname, '+') !== false) {
                $__tax   = explode('+', $taxname);
                // Multiple taxes found // possible option from default settings when invoicing project
                $taxname = array();
                foreach ($__tax as $t) {
                    $_temp = explode('|', $t);
                    if (isset($_temp[0]) && isset($_temp[1])) {
                        $tax = get_tax_by_name($_temp[0]);
                        array_push($taxname, $tax->name . '|' . $tax->taxrate);
                    } //isset($_temp[0]) && isset($_temp[1])
                } //$__tax as $t
            } //strpos($taxname, '+') !== false
            else {
                $_temp = explode('|', $taxname);
                // isset tax rate
                if (isset($_temp[0]) && isset($_temp[1])) {
                    $tax = get_tax_by_name($_temp[0]);
                    if ($tax) {
                        $taxname = $tax->name . '|' . $tax->taxrate;
                    } //$tax
                } //isset($_temp[0]) && isset($_temp[1])
            }
        } //$manual == true
        $this->load->model('taxes_model');
        $taxes = $this->taxes_model->get();
        $i     = 0;
        foreach ($taxes as $tax) {
            unset($taxes[$i]['id']);
            $taxes[$i]['name'] = $tax['name'] . '|' . $tax['taxrate'];
            $i++;
        } //$taxes as $tax
        if ($is_edit == true) {
            // Lets check the items taxes in case of changes.
            if ($type == 'invoice') {
                $item_taxes = get_invoice_item_taxes($item_id);
            } //$type == 'invoice'
            else if ($type == 'estimate') {
                $item_taxes = get_estimate_item_taxes($item_id);
            } //$type == 'estimate'
            foreach ($item_taxes as $item_tax) {
                $new_tax            = array();
                $new_tax['name']    = $item_tax['taxname'];
                $new_tax['taxrate'] = $item_tax['taxrate'];
                $taxes[]            = $new_tax;
            } //$item_taxes as $item_tax
        } //$is_edit == true
        // Clear the duplicates
        $taxes            = array_map("unserialize", array_unique(array_map("serialize", $taxes)));
        $select           = '<select class="selectpicker display-block tax" data-width="100%" name="' . $name . '" multiple data-none-selected-ted="' . _l('dropdown_non_selected_tex') . '" data-live-search="true">';
        $_no_tax_selected = '';
        if ((is_array($taxname) && count($taxname) == 0) || $taxname == '' || ((is_array($taxname) && count($taxname) == 1 && $taxname[0] == ''))) {
            $_no_tax_selected = 'selected';
        } //(is_array($taxname) && count($taxname) == 0) || $taxname == '' || ((is_array($taxname) && count($taxname) == 1 && $taxname[0] == ''))
        $select .= '<option value="" ' . $_no_tax_selected . ' data-taxrate="0">' . _l('no_tax') . '</option>';
        foreach ($taxes as $tax) {
            $selected = '';
            if (is_array($taxname)) {
                foreach ($taxname as $_tax) {
                    if (is_array($_tax)) {
                        if ($_tax['taxname'] == $tax['name']) {
                            $selected = 'selected';
                        } //$_tax['taxname'] == $tax['name']
                    } //is_array($_tax)
                    else {
                        if ($_tax == $tax['name']) {
                            $selected = 'selected';
                        } //$_tax == $tax['name']
                    }
                } //$taxname as $_tax
            } //is_array($taxname)
            else {
                if ($taxname == $tax['name']) {
                    $selected = 'selected';
                } //$taxname == $tax['name']
            }
            $select .= '<option value="' . $tax['name'] . '" ' . $selected . ' data-taxrate="' . $tax['taxrate'] . '" data-taxname="' . $tax['name'] . '" data-subtext="' . $tax['name'] . '">' . $tax['taxrate'] . '%</option>';
        } //$taxes as $tax
        $select .= '</select>';
        return $select;
    }
    public function get_update_info()
    {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_SSL_VERIFYHOST => 0,
            CURLOPT_SSL_VERIFYPEER => 0,
            CURLOPT_TIMEOUT=>60,
            CURLOPT_URL => UPDATE_INFO_URL,
            CURLOPT_POST => 1,
            CURLOPT_POSTFIELDS => array(
                'update_info' => 'true'
            )
        ));
        $result = curl_exec($curl);
        if (!$curl) {
            die('Error: "' . curl_error($curl) . '" - Code: ' . curl_errno($curl));
        }
        curl_close($curl);
        return $result;
    }
    public function get_current_db_version()
    {
        return $this->db->get('tblmigrations')->row()->version;
    }
    public function is_db_upgrade_required($v = '')
    {
        if (!is_numeric($v)) {
            $v = $this->get_current_db_version();
        }
        $this->load->config('migration');
        if ((int) $this->config->item('migration_version') !== (int) $v) {
            return true;
        }
        return false;
    }
    public function upgrade_database_silent()
    {
        $this->load->config('migration');
        $this->load->library('migration', array(
            'migration_enabled' => true,
            'migration_type' => $this->config->item('migration_type'),
            'migration_table' => $this->config->item('migration_table'),
            'migration_auto_latest' => $this->config->item('migration_auto_latest'),
            'migration_version' => $this->config->item('migration_version'),
            'migration_path' => $this->config->item('migration_path')
        ));
        if ($this->migration->current() === FALSE) {
            return array(
                'success' => false,
                'message' => $this->migration->error_string()
            );
        } else {
            return array(
                'success' => true
            );
        }
    }
    public function upgrade_database()
    {
        if (!is_really_writable(APPPATH . 'config/config.php')) {
            show_error('/config/config.php file is not writable. You need to change the permissions to 755. This error occurs while trying to update database to latest version.');
            die;
        }
        $update = $this->upgrade_database_silent();
        if ($update['success'] == false) {
            show_error($update['message']);
        } else {
            set_alert('success', 'Your database is up to date');
            if (is_staff_logged_in()) {
                redirect(admin_url(), 'refresh');
            } else {
                redirect(site_url('authentication/admin'));
            }
        }
    }

    public function add_attachment_to_database($rel_id, $rel_type, $attachment, $external = false)
    {

        $data['dateadded'] = date('Y-m-d H:i:s');
        $data['rel_id']    = $rel_id;
        if (!isset($attachment[0]['staffid'])) {
            $data['staffid'] = get_staff_user_id();
        } else {
            $data['staffid'] = $attachment[0]['staffid'];
        }

        if (isset($attachment[0]['contact_id'])) {
            $data['contact_id'] = $attachment[0]['contact_id'];
        }

        $data['rel_type']       = $rel_type;
        $data['attachment_key'] = md5(uniqid(rand(), true) . $rel_id . $rel_type . time());

        if ($external == false) {
            $data['file_name'] = $attachment[0]['file_name'];
            $data['filetype']  = $attachment[0]['filetype'];
        } else {
            $path_parts            = pathinfo($attachment[0]['name']);
            $data['file_name']     = $attachment[0]['name'];
            $data['external_link'] = $attachment[0]['link'];
            $data['filetype']      = get_mime_by_extension('.' . $path_parts['extension']);
            $data['external']      = $external;
            if (isset($attachment[0]['thumbnailLink'])) {
                $data['thumbnail_link'] = $attachment[0]['thumbnailLink'];
            }
        }

        $this->db->insert('tblfiles', $data);
        return $this->db->insert_id();
    }

    public function get_staff_started_timers()
    {
        $this->db->where('staff_id', get_staff_user_id());
        $this->db->where('end_time IS NULL');
        return $this->db->get('tbltaskstimers')->result_array();
    }
    /**
     * Add reminder
     * @since  Version 1.0.2
     * @param mixed $data All $_POST data for the reminder
     * @param mixed $id   relid id
     * @return boolean
     */

    public function add_reminder($data, $id)
    {
        if (isset($data['notify_by_email'])) {
            $data['notify_by_email'] = 1;
        } //isset($data['notify_by_email'])
        else {
            $data['notify_by_email'] = 0;
        }
        $data['date']        = to_sql_date($data['date'], true);
        $data['description'] = nl2br($data['description']);
        $data['creator']     = get_staff_user_id();
        $this->db->insert('tblreminders', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            logActivity('New Reminder Added [' . ucfirst($data['rel_type']) . 'ID: ' . $data['rel_id'] . ' Description: ' . $data['description'] . ']');
            return true;
        } //$insert_id
        return false;
    }
    public function get_notes($rel_id, $rel_type)
    {
        $this->db->join('tblstaff', 'tblstaff.staffid=tblnotes.addedfrom');
        $this->db->where('rel_id', $rel_id);
        $this->db->where('rel_type', $rel_type);
        $this->db->order_by('dateadded', 'desc');
        return $this->db->get('tblnotes')->result_array();
    }
    public function add_note($data, $rel_type, $rel_id)
    {

        $data['dateadded']   = date('Y-m-d H:i:s');
        $data['addedfrom']   = get_staff_user_id();
        $data['rel_type']    = $rel_type;
        $data['rel_id']      = $rel_id;
        $data['description'] = nl2br($data['description']);
        $this->db->insert('tblnotes', $data);
        $insert_id = $this->db->insert_id();
        if ($insert_id) {
            return $insert_id;
        }

        return false;
    }

    public function edit_note($data, $id)
    {

        $this->db->where('id', $id);
        $this->db->update('tblnotes', array(
            'description' => nl2br($data['description'])
        ));
        if ($this->db->affected_rows() > 0) {
            return true;
        }

        return false;
    }
    public function get_activity_log($limit = 50)
    {
        $this->db->limit($limit);
        $this->db->order_by('date', 'desc');
        return $this->db->get('tblactivitylog')->result_array();
    }
    public function delete_note($note_id)
    {
        $this->db->where('id', $note_id);
        $note = $this->db->get('tblnotes')->row();
        if ($note->addedfrom != get_staff_user_id() && !is_admin()) {
            return false;
        }
        $this->db->where('id', $note_id);
        $this->db->delete('tblnotes');
        if ($this->db->affected_rows() > 0) {
            return true;
        }

        return false;
    }
    /**
     * Get all reminders or 1 reminder if id is passed
     * @since Version 1.0.2
     * @param  mixed $id reminder id OPTIONAL
     * @return array or object
     */
    public function get_reminders($id = '')
    {
        $this->db->join('tblstaff', 'tblstaff.staffid = tblreminders.staff', 'left');
        if (is_numeric($id)) {
            $this->db->where('tblreminders.id', $id);
            return $this->db->get('tblreminders')->row();
        } //is_numeric($id)
        $this->db->order_by('date', 'desc');
        return $this->db->get('tblreminders')->result_array();
    }
    /**
     * Remove client reminder from database
     * @since Version 1.0.2
     * @param  mixed $id reminder id
     * @return boolean
     */
    public function delete_reminder($id)
    {
        $reminder = $this->get_reminders($id);
        if ($reminder->creator == get_staff_user_id() || is_admin()) {
            $this->db->where('id', $id);
            $this->db->delete('tblreminders');
            if ($this->db->affected_rows() > 0) {
                logActivity('Reminder Deleted [' . ucfirst($reminder->rel_type) . 'ID: ' . $reminder->id . ' Description: ' . $reminder->description . ']');
                return true;
            } //$this->db->affected_rows() > 0
            return false;
        } //$reminder->creator == get_staff_user_id() || is_admin()
        return false;
    }
    public function get_tasks_distinct_assignees()
    {
        return $this->db->query("SELECT DISTINCT(staffid) as assigneeid FROM tblstafftaskassignees")->result_array();
    }
    public function get_google_calendar_ids()
    {
        $is_admin = is_admin();
        $this->load->model('departments_model');
        $departments       = $this->departments_model->get();
        $staff_departments = $this->departments_model->get_staff_departments(false, true);
        $ids               = array();
        // Check departments google calendar ids
        foreach ($departments as $department) {
            if ($department['calendar_id'] == '') {
                continue;
            } //$department['calendar_id'] == ''
            if ($is_admin) {
                $ids[] = $department['calendar_id'];
            } //$is_admin
            else {
                if (in_array($department['departmentid'], $staff_departments)) {
                    $ids[] = $department['calendar_id'];
                } //in_array($department['departmentid'], $staff_departments)
            }
        } //$departments as $department
        // Ok now check if main calendar is setup
        $main_id_calendar = get_option('google_calendar_main_calendar');
        if ($main_id_calendar != '') {
            $ids[] = $main_id_calendar;
        } //$main_id_calendar != ''
        return $ids;
    }
    /**
     * Get current user notifications
     * @param  boolean $read include and readed notifications
     * @return array
     */
    public function get_user_notifications($read = 1)
    {
        $total        = 10;
        $total_unread = total_rows('tblnotifications', array(
            'isread' => $read,
            'touserid' => get_staff_user_id()
        ));
        if (is_numeric($read)) {
            $this->db->where('isread', $read);
        } //is_numeric($read)
        if ($total_unread > $total) {
            $_diff = $total_unread - $total;
            $total = $_diff + $total;
        } //$total_unread > $total
        $this->db->where('touserid', get_staff_user_id());
        $this->db->limit($total);
        $this->db->order_by('date', 'desc');
        return $this->db->get('tblnotifications')->result_array();
    }
    /**
     * Get current user all notifications
     * @param  mixed $page page number / ajax request
     * @return array
     */
    public function get_all_user_notifications($page)
    {
        $offset = ($page * $this->notifications_limit);
        $this->db->limit($this->notifications_limit, $offset);
        $this->db->where('touserid', get_staff_user_id());
        $this->db->order_by('date', 'desc');
        $notifications = $this->db->get('tblnotifications')->result_array();
        $i             = 0;
        foreach ($notifications as $notification) {
            if (($notification['fromcompany'] == NULL && $notification['fromuserid'] != 0) || ($notification['fromcompany'] == NULL && $notification['fromclientid'] != 0)) {
                if ($notification['fromuserid'] != 0) {
                    $notifications[$i]['profile_image'] = '<a href="' . admin_url('staff/profile/' . $notification['fromuserid']) . '">' . staff_profile_image($notification['fromuserid'], array(
                        'staff-profile-image-small',
                        'img-circle',
                        'pull-left'
                    )) . '</a>';
                } else {
                    $notifications[$i]['profile_image'] = '<a href="' . admin_url('clients/client/' . $notification['fromclientid']) . '">
                    <img class="client-profile-image-small img-circle pull-left" src="' . contact_profile_image_url($notification['fromclientid']) . '"></a>';
                }
            } else {
                $notifications[$i]['profile_image'] = '';
                $notifications[$i]['full_name']     = '';
            }
            $additional_data = '';
            if (!empty($notification['additional_data'])) {
                $additional_data = unserialize($notification['additional_data']);
                $x               = 0;
                foreach ($additional_data as $data) {
                    if (strpos($data, '<lang>') !== false) {
                        $lang                = get_string_between($data, '<lang>', '</lang>');
                        $additional_data[$x] = _l($lang);
                    }
                    $x++;
                }
            }
            $notifications[$i]['description'] = _l($notification['description'], $additional_data);
            $notifications[$i]['date']        = time_ago($notification['date']);
            $i++;
        } //$notifications as $notification
        return $notifications;
    }
    /**
     * Set notification read when user open notification dropdown
     * @return boolean
     */
    public function set_notifications_read()
    {
        $this->db->where('touserid', get_staff_user_id());
        $this->db->update('tblnotifications', array(
            'isread' => 1
        ));
        if ($this->db->affected_rows() > 0) {
            return true;
        } //$this->db->affected_rows() > 0
        return false;
    }
    public function set_notification_read($id)
    {
        $this->db->where('touserid', get_staff_user_id());
        $this->db->where('id', $id);
        $this->db->update('tblnotifications', array(
            'isread' => 1
        ));
    }
    /**
     * Dismiss announcement
     * @param  array  $data  announcement data
     * @param  boolean $staff is staff or client
     * @return boolean
     */
    public function dismiss_announcement($id, $staff = true)
    {
        if ($staff == false) {
            $userid = get_contact_user_id();
        } //$staff == false
        else {
            $userid = get_staff_user_id();
        }
        $data['announcementid'] = $id;
        $data['userid']         = $userid;
        $data['staff']          = $staff;
        $this->db->insert('tbldismissedannouncements', $data);
        return true;
    }
    /**
     * Perform search on top header
     * @since  Version 1.0.1
     * @param  string $q search
     * @return array    search results
     */
    public function perform_search($q)
    {
        $this->load->model('staff_model');
        $is_admin                       = is_admin();
        $result                         = array();
        $limit                          = get_option('limit_top_search_bar_results_to');
        $have_assigned_customers        = have_assigned_customers();
        $have_permission_customers_view = has_permission('customers', '', 'view');
        if ($have_assigned_customers || $have_permission_customers_view) {
            // Clients
            $this->db->select();
            $this->db->join('tblcountries', 'tblcountries.country_id = tblclients.country', 'left');
            $this->db->from('tblclients');
            if ($have_assigned_customers && !$have_permission_customers_view) {
                $this->db->where('userid IN (SELECT customer_id FROM tblcustomeradmins WHERE staff_id=' . get_staff_user_id() . ')');
            }
            $this->db->like('company', $q);
            $this->db->or_like('vat', $q);
            $this->db->or_like('phonenumber', $q);
            $this->db->or_like('city', $q);
            $this->db->or_like('zip', $q);
            $this->db->or_like('state', $q);
            $this->db->or_like('address', $q);
            $this->db->or_like('tblcountries.short_name', $q);
            $this->db->or_like('tblcountries.long_name', $q);
            $this->db->or_like('tblcountries.numcode', $q);
            $this->db->or_like('tblcountries.calling_code', $q);
            $this->db->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'clients',
                'search_heading' => _l('clients')
            );
        }

        if ($have_assigned_customers || $have_permission_customers_view) {
            // Contacts
            $this->db->select();
            $this->db->from('tblcontacts');
            if ($have_assigned_customers && !$have_permission_customers_view) {
                $this->db->where('userid IN (SELECT customer_id FROM tblcustomeradmins WHERE staff_id=' . get_staff_user_id() . ')');
            }
            $this->db->like('firstname', $q);
            $this->db->or_like('lastname', $q);
            $this->db->or_like('email', $q);
            $this->db->or_like("CONCAT(firstname, ' ', lastname)", $q);
            $this->db->or_like('phonenumber', $q);
            $this->db->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'contacts',
                'search_heading' => _l('customer_contacts')
            );
        }

        if (has_permission('staff', '', 'view')) {
            // Staff
            $this->db->select()->from('tblstaff')->like('firstname', $q)->or_like('lastname', $q)->or_like("CONCAT(firstname, ' ', lastname)", $q, FALSE)->or_like('facebook', $q)->or_like('linkedin', $q)->or_like('phonenumber', $q)->or_like('email', $q)->or_like('skype', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'staff',
                'search_heading' => _l('staff_members')
            );
        }

        if (is_staff_member() || (!is_staff_member() && get_option('access_tickets_to_none_staff_members') == 1)) {
            // Tickets
            $this->db->select()->join('tbldepartments', 'tbldepartments.departmentid = tbltickets.department')->join('tblclients', 'tblclients.userid = tbltickets.userid', 'left')->join('tblcontacts', 'tblcontacts.id = tbltickets.contactid', 'left')->from('tbltickets')->like('ticketid', $q)->or_like('subject', $q)->or_like('message', $q)->or_like('lastname', $q)->or_like('tblcontacts.email', $q)->or_like("CONCAT(firstname, ' ', lastname)", $q)->or_like('company', $q)->or_like('vat', $q)->or_like('tblcontacts.phonenumber', $q)->or_like('tblclients.phonenumber', $q)->or_like('city', $q)->or_like('zip', $q)->or_like('state', $q)->or_like('address', $q)->or_like('tbldepartments.name', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'tickets',
                'search_heading' => _l('support_tickets')
            );
        }

        if (has_permission('surveys', '', 'view')) {
            // Surveys
            $this->db->select()->from('tblsurveys')->like('subject', $q)->or_like('slug', $q)->or_like('description', $q)->or_like('viewdescription', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'surveys',
                'search_heading' => _l('surveys')
            );
        }

        if (has_permission('knowledge_base', '', 'view')) {
            // Knowledge base articles
            $this->db->select()->from('tblknowledgebase')->like('subject', $q)->or_like('description', $q)->or_like('slug', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'knowledge_base_articles',
                'search_heading' => _l('kb_string')
            );

        }

        if (is_staff_member()) {
            // Leads
            $this->db->select()->from('tblleads')->like('name', $q)->or_like('email', $q)->or_like('phonenumber', $q)->limit($limit);
            if (!$is_admin) {
                $this->db->where('assigned', get_staff_user_id());
                $this->db->or_where('addedfrom', get_staff_user_id());
                $this->db->or_where('is_public', 1);
            } //$staff->admin == 0
            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'leads',
                'search_heading' => _l('leads')
            );
        }

        $tasks = has_permission('tasks', '', 'view');
        // Staff tasks
        $this->db->select();
        $this->db->from('tblstafftasks');
        $this->db->like('name', $q);
        if (!$is_admin) {
            if (!$tasks) {
                $where = '(id IN (SELECT taskid FROM tblstafftaskassignees WHERE staffid = ' . get_staff_user_id() . ') OR id IN (SELECT taskid FROM tblstafftasksfollowers WHERE staffid = ' . get_staff_user_id() . ') OR addedfrom=' . get_staff_user_id() . ' ';
                if (get_option('show_all_tasks_for_project_member') == 1) {
                    $where .= ' OR (rel_type="project" AND rel_id IN (SELECT project_id FROM tblprojectmembers WHERE staff_id=' . get_staff_user_id() . '))';
                }
                $where .= ' OR is_public = 1)';
                $this->db->where($where);
            } //!$tasks
        } //!$is_admin
        $this->db->or_like('priority', $q);
        $this->db->or_like('description', $q);
        $this->db->limit($limit);

        $result[] = array(
            'result' => $this->db->get()->result_array(),
            'type' => 'tasks',
            'search_heading' => _l('tasks')
        );

        if (has_permission('contracts', '', 'view')) {
            // Contracts
            $this->db->select()->from('tblcontracts')->like('description', $q)->or_like('subject', $q)->limit($limit);
            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'contracts',
                'search_heading' => _l('contracts')
            );
        }

        if (has_permission('payments', '', 'view')) {
            // Invoice payment records
            $this->db->select('*,tblinvoicepaymentrecords.id as paymentid')->from('tblinvoicepaymentrecords')->join('tblinvoicepaymentsmodes', 'tblinvoicepaymentrecords.paymentmode = tblinvoicepaymentsmodes.id', 'LEFT')->like('tblinvoicepaymentrecords.id', $q)->or_like('paymentmode', $q)->or_like('tblinvoicepaymentsmodes.name', $q)->or_like('invoiceid', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'invoice_payment_records',
                'search_heading' => _l('payments')
            );

        }

        if (has_permission('invoices', '', 'view')) {
            if (is_numeric($q)) {
                $q = trim($q);
                $q = ltrim($q, '0');
            }

            // Invoices
            $this->db->select('*,tblinvoices.id as invoiceid');
            $this->db->from('tblinvoices');
            $this->db->join('tblclients', 'tblclients.userid = tblinvoices.clientid');
            $this->db->join('tblcurrencies', 'tblcurrencies.id = tblinvoices.currency');
            $this->db->like('number', $q, 'after');
            $this->db->or_like('company', $q);
            $this->db->or_like('clientnote', $q);
            $this->db->or_like('vat', $q);
            $this->db->or_like('phonenumber', $q);
            $this->db->or_like('city', $q);
            $this->db->or_like('zip', $q);
            $this->db->or_like('state', $q);
            $this->db->or_like('address', $q);
            $this->db->or_like('adminnote', $q);
            $this->db->or_like('tblinvoices.billing_street', $q);
            $this->db->or_like('tblinvoices.billing_city', $q);
            $this->db->or_like('tblinvoices.billing_state', $q);
            $this->db->or_like('tblinvoices.billing_zip', $q);
            $this->db->or_like('tblinvoices.shipping_street', $q);
            $this->db->or_like('tblinvoices.shipping_city', $q);
            $this->db->or_like('tblinvoices.shipping_state', $q);
            $this->db->or_like('tblinvoices.shipping_zip', $q);
            $this->db->or_like('tblclients.billing_street', $q);
            $this->db->or_like('tblclients.billing_city', $q);
            $this->db->or_like('tblclients.billing_state', $q);
            $this->db->or_like('tblclients.billing_zip', $q);
            $this->db->or_like('tblclients.shipping_street', $q);
            $this->db->or_like('tblclients.shipping_city', $q);
            $this->db->or_like('tblclients.shipping_state', $q);
            $this->db->or_like('tblclients.shipping_zip', $q);
            $this->db->order_by('number,YEAR(date)', 'desc');
            $this->db->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'invoices',
                'search_heading' => _l('invoices')
            );
        }

        if (has_permission('estimates', '', 'view')) {
            if (is_numeric($q)) {
                $q = trim($q);
                $q = ltrim($q, '0');
            }
            // Estimates
            $this->db->select('*,tblestimates.id as estimateid');
            $this->db->from('tblestimates');
            $this->db->join('tblclients', 'tblclients.userid = tblestimates.clientid');
            $this->db->join('tblcurrencies', 'tblcurrencies.id = tblestimates.currency');
            $this->db->like('number', $q, 'after');
            $this->db->or_like('company', $q);
            $this->db->or_like('clientnote', $q);
            $this->db->or_like('vat', $q);
            $this->db->or_like('phonenumber', $q);
            $this->db->or_like('city', $q);
            $this->db->or_like('zip', $q);
            $this->db->or_like('state', $q);
            $this->db->or_like('address', $q);
            $this->db->or_like('adminnote', $q);
            $this->db->or_like('tblestimates.billing_street', $q);
            $this->db->or_like('tblestimates.billing_city', $q);
            $this->db->or_like('tblestimates.billing_state', $q);
            $this->db->or_like('tblestimates.billing_zip', $q);
            $this->db->or_like('tblestimates.shipping_street', $q);
            $this->db->or_like('tblestimates.shipping_city', $q);
            $this->db->or_like('tblestimates.shipping_state', $q);
            $this->db->or_like('tblestimates.shipping_zip', $q);
            $this->db->or_like('tblclients.billing_street', $q);
            $this->db->or_like('tblclients.billing_city', $q);
            $this->db->or_like('tblclients.billing_state', $q);
            $this->db->or_like('tblclients.billing_zip', $q);
            $this->db->or_like('tblclients.shipping_street', $q);
            $this->db->or_like('tblclients.shipping_city', $q);
            $this->db->or_like('tblclients.shipping_state', $q);
            $this->db->or_like('tblclients.shipping_zip', $q);
            $this->db->order_by('number,YEAR(date)', 'desc');
            $this->db->limit($limit);


            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'estimates',
                'search_heading' => _l('estimates')
            );
        }


        if (has_permission('expenses', '', 'view')) {
            // Expenses
            $this->db->select('*,tblexpenses.amount as amount,tblexpensescategories.name as category_name,tblinvoicepaymentsmodes.name as payment_mode_name,tbltaxes.name as tax_name, tblexpenses.id as expenseid')->from('tblexpenses')->join('tblclients', 'tblclients.userid = tblexpenses.clientid', 'left')->join('tblinvoicepaymentsmodes', 'tblinvoicepaymentsmodes.id = tblexpenses.paymentmode', 'left')->join('tbltaxes', 'tbltaxes.id = tblexpenses.tax', 'left')->join('tblexpensescategories', 'tblexpensescategories.id = tblexpenses.category')->or_like('company', $q)->or_like('paymentmode', $q)->or_like('tblinvoicepaymentsmodes.name', $q)->or_like('vat', $q)->or_like('phonenumber', $q)->or_like('city', $q)->or_like('zip', $q)->or_like('state', $q)->or_like('address', $q)->or_like('tblexpensescategories.name', $q)->or_like('tblexpenses.note', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'expenses',
                'search_heading' => _l('expenses')
            );
        }

        if (has_permission('goals', '', 'view')) {
            // Goals
            $this->db->select()->from('tblgoals')->like('description', $q)->or_like('subject', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'goals',
                'search_heading' => _l('goals')
            );
        }

        if ($is_admin) {
            // Custom fields
            $this->db->select()->from('tblcustomfieldsvalues')->like('value', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'custom_fields',
                'search_heading' => _l('custom_fields')
            );
        }

        if (has_permission('invoices', '', 'view')) {
            // Invoice items
            $this->db->select()->from('tblitems_in')->where('rel_type', 'invoice')->like('description', $q)->or_like('long_description', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'invoice_items',
                'search_heading' => _l('invoice_items')
            );
        }

        if (has_permission('estimates', '', 'view')) {
            // Estimate items
            $this->db->select()->from('tblitems_in')->where('rel_type', 'estimate')->like('description', $q)->or_like('long_description', $q)->limit($limit);

            $result[] = array(
                'result' => $this->db->get()->result_array(),
                'type' => 'estimate_items',
                'search_heading' => _l('estimate_items')
            );
        }

        $projects = has_permission('projects', '', 'view');
        // Projects
        $this->db->select();
        $this->db->from('tblprojects');
        $this->db->join('tblclients', 'tblclients.userid = tblprojects.clientid');
        $this->db->like('description', $q);
        $this->db->or_like('name', $q);
        if (!$projects) {
            $this->db->where('tblprojects.id IN (SELECT project_id FROM tblprojectmembers WHERE staff_id=' . get_staff_user_id() . ')');
        } //!$projects
        $this->db->limit($limit);

        $result[] = array(
            'result' => $this->db->get()->result_array(),
            'type' => 'projects',
            'search_heading' => _l('projects')
        );
        return $result;
    }
}
