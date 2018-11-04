<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Front_Controller {
	
	public function __construct()
    {
        parent::__construct();

    }

	public function index()
    {

        //load model
        $this->load->model('ms_categories_model');


        $this->data['title'] = 'Welcome';
        $this->data['theme'] = 'theme1/index';

        $this->data['menu'] = $this->ms_categories_model->getRows();
        $this->db->last_query();
        

        $this->load->view('frontend/theme',$this->data);
    }
}