<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';
require $_SERVER['DOCUMENT_ROOT'].'/dashboard-api/vendor/autoload.php';
//require 'JWT/ExpiredException.php';
//require_once APPPATH.'vendor/autoload.php';
use Restserver\Libraries\REST_Controller;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;
require_once APPPATH.'libraries/JWT.PHP';
//echo  APPPATH.'libraries/ExpiredException.PHP'; die();
require_once APPPATH.'libraries/ExpiredException.PHP';

/**
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Dashboard extends REST_Controller {

    function __construct()
    {
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Content-Type,Authorization,Content-Length, Accept-Encoding");
        if ( "OPTIONS" === $_SERVER['REQUEST_METHOD'] ) {
            die();
        }
        parent::__construct();
        $this->load->helper('patra_auth');
        $this->load->model('M_dashboard','mdashboard');
    }


    public function data_registered_users_get()
    {
        $jwt=getBearerToken();
        $key = $this->config->item("jwt_key");
        $page = $this->get('page');
        $limit=  $this->get('limit');
        $search= $this->get('search');

        if (empty($page)) {
            $page=1;
        }

        if (empty($limit)) {
            $limit=10;
        }

        if (empty($search)) {
            $search="";
        }

        try
        {
            $decoded = JWT::decode($jwt, new Key($key, 'HS256'));
            $today=date('Y-m-d H:i:s');
            

            $data_visitor_all=$this->mdashboard->getRegisteredUser($limit,$page,$search);
            $response=[
                "status"=>"success",
                "data"=>$data_visitor_all,
                //"last_query"=>$this->db->last_query(),
            ];
            return  $this->response($response, REST_Controller::HTTP_OK);
           
        }
        catch (\Firebase\JWT\ExpiredException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()], REST_Controller::HTTP_OK); 
        }
        catch (\Firebase\JWT\SignatureInvalidException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()], REST_Controller::HTTP_OK); 
        }
        catch (\Firebase\JWT\BeforeValidException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()], REST_Controller::HTTP_OK); 
        }
        
    }

    public function data_visitors_get()
    {
        $jwt=getBearerToken();

        $key = $this->config->item("jwt_key");
        $page = $this->get('page');
        $limit=  $this->get('limit');
        $search= $this->get('search');

        if (empty($page)) {
            $page=1;
        }

        if (empty($limit)) {
            $limit=10;
        }

        if (empty($search)) {
            $search="";
        }

        try
        {
            $decoded = JWT::decode($jwt, new Key($key, 'HS256'));
            $today=date('Y-m-d H:i:s');
            

            $data_visitor_all=$this->mdashboard->getVisitors($limit,$page,$search);
            $total_data=$this->mdashboard->getTotalVisitor($search);
            $response=[
                "status"=>"success",
                "total_data"=>$total_data,
                "data"=>$data_visitor_all
            ];
            return  $this->response($response, REST_Controller::HTTP_OK);
           
        }
        catch (\Firebase\JWT\ExpiredException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }
        catch (\Firebase\JWT\SignatureInvalidException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }
        catch (\Firebase\JWT\BeforeValidException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }catch(exception $exception){
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }
        
    }

    public function data_summary_get()
    {
        $jwt=getBearerToken();

        $key = $this->config->item("jwt_key");

        try
        {
            $decoded = JWT::decode($jwt, new Key($key, 'HS256'));
            $today=date('Y-m-d H:i:s');
            
            $num_of_visitors=$this->mdashboard->getTheNumberOfVisitors();
            $num_of_visitors_on_today=$this->mdashboard->getTheNumberOfVisitorOnToday();
            $num_of_registered_user=$this->mdashboard->getTheNumberOfRegisteredUsers();
            $num_of_registered_user_on_today=$this->mdashboard->getTheNumberOfRegisteredUsersOnToday();
            $data_summary=[
                "num_of_visitors"=>$num_of_visitors,
                "num_of_visitors_on_today"=>$num_of_visitors_on_today,
                "num_of_registered_users"=>$num_of_registered_user,
                "num_of_registered_users_on_today"=>$num_of_registered_user_on_today,
            ];
            $response=
                [
                "status"=>"success",
                "data"=>$data_summary
                ]
            ;
            return  $this->response($response, REST_Controller::HTTP_OK);
           
        }
        catch (\Firebase\JWT\ExpiredException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }
        catch (\Firebase\JWT\SignatureInvalidException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }
        catch (\Firebase\JWT\BeforeValidException $exception ) {
            // Tell the user that their JWT has expired
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }catch(exception $exception){
            return  $this->response(["message"=>$exception->getMessage()." You are unauthorized"], REST_Controller::HTTP_OK); 
        }
        
    }



    public function users_post()
    {
        // $this->some_model->update_user( ... );
        $message = [
            'id' => 100, // Automatically generated by the model
            'name' => $this->post('name'),
            'email' => $this->post('email'),
            'message' => 'Added a resource'
        ];

        $this->set_response($message, REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
    }

    public function users_delete()
    {
        $id = (int) $this->get('id');

        // Validate the id.
        if ($id <= 0)
        {
            // Set the response and exit
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // $this->some_model->delete_something($id);
        $message = [
            'id' => $id,
            'message' => 'Deleted the resource'
        ];

        $this->set_response($message, REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
    }

}
