<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_login extends CI_Model {

    public $variable;

    public function __construct() {
        parent::__construct();
    }

    public function getLogin($data_user){
        $username=$data_user["username"];
        $password=$data_user["password"];
        $sql="select a.username,a.password,email,user_code 
                from t_mtr_user a 
                where a.username='$username'";
                return $this->db->query($sql)->row();
    }
   

}