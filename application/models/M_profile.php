<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_profile extends CI_Model {

    public $variable;

    public function __construct() {
        parent::__construct();
    }

    public function getLogin($data_user){
        $username=$data_user["username"];
        $password=$data_user["password"];
        $sql="select a.username,a.password,email
                from t_mtr_user a 
                where a.username='$username'";
                return $this->db->query($sql)->row();
    }

    public function saveProfile($data_user){
        $username=$data_user["username"];
        $user_code=$data_user["user_code"];
        $update=$this->db->update("t_mtr_user",$data_user,"user_code='$user_code'");
        return $update;
    }
   

}