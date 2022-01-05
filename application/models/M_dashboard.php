<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_dashboard extends CI_Model {

    public $variable;

    public function __construct() {
        parent::__construct();
    }

    public function getRegisteredUser($limit,$page,$search){
        $offset= ($page - 1) * $limit;
        $where=" where status=1 ";
        if (!empty($search)) {
            $where .= "and(LOWER(a.username) like LOWER('%" . $search . "%'))";
        }
        
        $sql="select a.username,a.password,a.created_on,a.id_seq as 'key' 
                from t_mtr_user_frontend a 
                $where limit $limit offset $offset";
                return $this->db->query($sql)->result();
    }

    public function getVisitors($limit,$page,$search){
        $offset= ($page - 1) * $limit;
        $where=" where status=1 ";
        if (!empty($search)) {
            $where .= "and(LOWER(a.ip_address) like LOWER('%" . $search . "%'))";
        }
        $sql="select a.ip_address,created_at,a.id_seq as 'key'
                from t_mtr_guest a 
                $where limit $limit offset $offset";
                return $this->db->query($sql)->result();
    }

    public function getTotalVisitor($search){
       
        $where=" where status=1 ";
        if (!empty($search)) {
            $where .= "and(LOWER(a.ip_address) like LOWER('%" . $search . "%'))";
        }
        $sql="select count(*) as total_data
                from t_mtr_guest a 
                $where";
                return $this->db->query($sql)->row()->total_data;
    }

    public function getTheNumberOfVisitors(){
        //$today=date("Y:m:d");
        
        $sql="SELECT count(*) as num_of_visitors FROM t_mtr_guest where  status=1";
                return $this->db->query($sql)->row()->num_of_visitors;
    }

    public function getTheNumberOfRegisteredUsers(){
        //$today=date("Y:m:d");
        
        $sql="SELECT count(*) as num_of_registered_user FROM t_mtr_user_frontend where  status=1";
                return $this->db->query($sql)->row()->num_of_registered_user;
    }
    
    public function getTheNumberOfVisitorOnToday(){
        $today=date("Y:m:d");
        
        $sql="SELECT count(*) as num_of_visitors_on_today FROM `t_mtr_guest` where created_at='$today' and status=1";
                return $this->db->query($sql)->row()->num_of_visitors_on_today;
    }

    public function getTheNumberOfRegisteredUsersOnToday(){
        $today=date("Y:m:d");
        
        $sql="SELECT count(*) as num_of_registered_user_on_today FROM t_mtr_user_frontend where created_on='$today' and  status=1";
                return $this->db->query($sql)->row()->num_of_registered_user_on_today;
    }

    public function getTheNumberOfVisitorDuringLast7Days(){
        
        $sql="select a.ip_address,created_at
                from t_mtr_guest a 
                where a.status=1";
                return $this->db->query($sql)->result();
    }

    
   

}