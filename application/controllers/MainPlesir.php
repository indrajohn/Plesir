<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class MainPlesir extends CI_Controller {
 
    function __construct()
    {
        parent::__construct();
 
        $this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		$this->load->model('user');
 
    }
    public function index()
    {
        if($this->session->userdata('logged_in'))
	   {
		  
		    $session_data = $this->session->userdata('logged_in');
		    $data['username'] = $session_data['username'];
		    $this->grocery_crud->set_table('tbl_admin_web');
	        $output = $this->grocery_crud->render();
			$this->output($output,"beranda","Admin");
	   }
	   else
	   {
	     //If no session, redirect to login page
	     redirect('/', 'refresh');
	   }


    }
	public function HomeLayout()
	{	
		$this->output(null,"beranda","Selamat Datang di PLESIR");
	}

    public  function logout()
		 {
		 	session_start(); 
		   $this->session->unset_userdata('logged_in');
		   session_destroy();
		   redirect('/', 'refresh');
		 }

    public function admin()
    {
    	$user= $this->user->getAdmin();
		$crud = new grocery_CRUD();
        $crud->set_table('tbl_admin_web');
        $crud->required_fields('nama_user','username','password');
        $crud->unique_fields('username');
        $output = $crud->render();
		
		$this->output($output,"","Manajemen Admin");
    }

	
	public function tambah_foto_wisata(){
		$crud = new grocery_CRUD();
        $crud->set_table('tbl_foto');
		$crud->set_relation('id_wisata','tbl_wisata','nama_wisata');
		$crud->display_as('id_wisata','Nama Wisata');
		$crud->set_field_upload('foto','plesir_web_service/images/wisata');
	$output = $crud->render();
	$this->output($output,"","Manajemen Foto Wisata");
	}
	
	public function jenis_wisata()
    {
		$crud = new grocery_CRUD();
        $crud->set_table('tbl_jenis_wisata');
		$crud->required_fields('nama','deskripsi');
		$crud->display_as('nama','Nama Jenis Wisata');
		$output = $crud->render();
		$this->output($output,"","Manajemen Jenis Wisata");
    }
	
	
	public function tambah_wisata()
    {
		$crud = new grocery_CRUD();
        $crud->set_table('tbl_wisata');
		$crud->required_fields('nama_wisata','deskripsi_wisata','latitude','longitude');
		$crud->set_relation('id_jenis_wisata','tbl_jenis_wisata','nama');
		$output = $crud->render();

		$this->output($output,"","Manajemen Wisata");
    }
	
	public function output($output = null,$tes = null,$judul = null)
	{
		$data['judul'] = $judul;
		$data['tes'] = $tes;
		$data['output'] = $output;	
		$this->load->view('Main_view',$data);
	}

	
}	