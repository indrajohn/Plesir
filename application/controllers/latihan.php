<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Latihan extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		$this->load->model('user');
	}

	public function index(){
		if($this->session->userdata('logged_in'))
	   {
		    $session_data = $this->session->userdata('logged_in');
		    $data['username'] = $session_data['username'];
		    $this->admin();
			//$this->grocery_crud->set_table('admin');
	        //$output = $this->grocery_crud->render();
			
			//$this->output($output);
	   }
	   else
	   {
	     
	     redirect('/', 'refresh');
	   }
	}

	
	 public  function logout()
		{
		   session_start(); 
		   $this->session->unset_userdata('logged_in');
		   session_destroy();
		   redirect('/', 'refresh');
		}
	
	public function admin(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_lang_string('insert_error','Username sudah ada di database.');
			$crud->set_lang_string('update_error','Tidak bisa update data, username sudah ada di database.');
			$crud->where('IS_ACTIVE','1');
			$crud->set_theme('flexigrid');
			$crud->set_table('admin');
			$crud->order_by('NAMA_DEPAN','asc');
			$crud->set_subject('Admin');
			
			$crud->required_fields('USERNAME','PASSWORD','NAMA_DEPAN','NAMA_BELAKANG','NO_TELP','EMAIL');
			$crud->columns(array('NAMA_DEPAN','NAMA_BELAKANG','USERNAME','TGL_LAHIR','NO_TELP','EMAIL','IS_ACTIVE'));
			
			$crud->display_as('TGL_LAHIR','TGL. LAHIR')->display_as('IS_ACTIVE','ACTIVE')->display_as('NO_TELP','TELP')->display_as('EMAIL','E-MAIL');
			$crud->set_rules('EMAIL','EMAIL','valid_email'); 
				 
			$crud->callback_add_field('NO_TELP',array($this,'add_field_callback_telp'));
			$crud->callback_edit_field('NO_TELP 	', array($this, 'edit_field_callback_telp'));
			$crud->callback_before_insert(array($this,'cek_admin_before_user_save'));
			
			$crud->callback_before_update(array($this,'cek_admin_before_user_update'));
			$crud->change_field_type('PASSWORD', 'password');
			
			$data['judul'] = 'Manajemen Admin';
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	

	function add_field_callback_telp()
	{
		return '+62 <input type="text" maxlength="12" value="" name="NO_TELP" style="width:470px">';
	}
	
	function edit_field_callback_telp($value, $primary_key) {
        return '+62 <input type="text" maxlength="12" value="' . $value . '" name="NO_TELP" style="width:470px">';
    }
	
	function decode_password_admin($value, $row){
		$this->load->library('encrypt');
		$key = '!@#$%^&*()_+QWERTYUIOP';
		
		$pass_db = $this->db->where('ID_ADMIN', $row->id)->get('admin')->row()->password;
		$pass_decode = $this->encrypt->decode($pass_db, $key);
		return "<input type='text' name='plain_pass' value='".$pass_decode."' />"; 
	}
	
	function cek_admin_before_user_save($post_array){
		$i = $this->db->where('USERNAME', $post_array['username'])->get('ADMIN')->num_rows();
		if($i == 0 ){
			$this->load->library('encrypt');
			$key = '!@#$%^&*()_+QWERTYUIOP';
			$post_array['password'] = $this->encrypt->encode($post_array['password'], $key);
		 
			$post_array['created_at'] = date('Y-m-d');
			return $post_array;
		}else{
			return false;
		}
	}

	function cek_admin_before_user_update($post_array, $primary_key){
		$i = $this->db->where(array('USERNAME'=>$post_array['username'], 'ID_ADMIN !='=>$primary_key))->get('admin')->num_rows();
		if($i == 0 ){
			if(!empty($post_array['password'])){
				$this->load->library('encrypt');
				$key = '!@#$%^&*()_+QWERTYUIOP';
				$post_array['password'] = $this->encrypt->encode($post_array['password'], $key);
			}else{
				 unset($post_array['password']);
			}
			
			$post_array['updated_at'] = date('Y-m-d');
		    return $post_array;
		}else{
			return false;
		}			
	}	
	
	public function member(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			
			$crud->where('IS_ACTIVE','1');
			$crud->set_table('member');
			$crud->set_subject('Member');
			$crud->order_by('NAMA_DEPAN','asc');
			$crud->columns(array('ID_MEMBER','NAMA_DEPAN','USERNAME','NO_TELP','EMAIL','IS_ACTIVE'));
			$crud->display_as('TGL_LAHIR','TGL. LAHIR')->display_as('IS_ACTIVE','ACTIVE')->display_as('NO_TELP','NO. TELP')->display_as('EMAIL','E-MAIL');
			$crud->display_as('JUMLAH_RATING','JUM. RATE');
			$crud->change_field_type('PASSWORD', 'password');
			$crud->edit_fields('IS_ACTIVE');
			$data['judul'] = 'Manajemen Member';
			//$crud->unset_add();
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function merk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->where('IS_ACTIVE','1');
			$crud->set_table('merk');
			$crud->set_subject('Merk');
			$crud->set_field_upload('LOGO','gambarLogoMerk');
			$crud->order_by('NAMA','asc');
			$crud->required_fields('NAMA','NO_TELP','EMAIL','LOGO');
			$crud->columns(array('ID_MERK','NAMA','NO_TELP','EMAIL','LOGO','IS_ACTIVE'));
			$crud->set_rules('EMAIL','EMAIL','valid_email');
			$crud->callback_before_insert(array($this,'cek_merk_before_user_save'));
			$crud->callback_before_update(array($this,'cek_merk_before_user_update'));
			$crud->callback_before_upload(array($this,'_before_upload'));
			$crud->callback_after_upload(array($this,'example_callback_after_upload'));
			$data['judul'] = 'Manajemen Merk';			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	function cek_merk_before_user_save($post_array){
		$i = $this->db->where('NAMA', $post_array['nama'])->get('merk')->num_rows();
		if($i > 0 ){
			return false;
		}
	}

	function cek_merk_before_user_update($post_array, $primary_key){
		$i = $this->db->where(array('NAMA'=>$post_array['nama'], 'ID_MERK !='=>$primary_key))->get('merk')->num_rows();
		if($i > 0 ){
			return false;
		}
	}	
	
	
	
	
	
	
	
	public function kategoriProduk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_lang_string('insert_error','Nama Kategori Produk sudah ada di database.');
			$crud->set_lang_string('update_error','Tidak bisa update data, Nama Kategori Produk sudah ada di database.');
			
			$crud->set_theme('flexigrid');
			$crud->set_table('kategori_produk');
			$crud->set_subject('Kategori Produk');
			$crud->order_by('NAMA_KATEGORI','asc');
			$crud->required_fields('NAMA_KATEGORI');
			$crud->columns(array('ID_KATEGORI_PRODUK','NAMA_KATEGORI','IS_ACTIVE'));
			$crud->display_as('IS_ACTIVE','ACTIVE');
			$crud->callback_before_insert(array($this,'cek_kategori_produk_before_user_save'));
			$crud->callback_before_update(array($this,'cek_kategori_produk_before_user_update'));
			
			$data['judul'] = 'Manajemen Kategori Produk';
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	function cek_kategori_produk_before_user_save($post_array){
		$i = $this->db->where('NAMA_KATEGORI', $post_array['nama_kategori'])->get('kategori_produk')->num_rows();
		if($i > 0 ){
			return false;
		}
	}

	function cek_kategori_produk_before_user_update($post_array, $primary_key){
		$i = $this->db->where(array('NAMA_KATEGORI'=>$post_array['nama_kategori'], 'ID_KATEGORI_PRODUK !='=>$primary_key))->get('kategori_produk')->num_rows();
		if($i > 0 ){
			return false;
		}
	}	
	
	
	public function produk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->order_by('ID_MERK, ID_KATEGORI_PRODUK, WAKTU_UPLOAD', 'ASC, ASC, DESC'); 
			$crud->set_table('produk');
			$crud->set_subject('Produk');
			$crud->required_fields('ID_MERK','NAMA','HARGA','ID_KATEGORI_PRODUK');
			$crud->columns(array('ID_PRODUK','ID_MERK','ID_KATEGORI_PRODUK','NAMA','DESKRIPSI','HARGA','IS_ACTIVE'));
			$crud->set_relation('ID_MERK','merk','NAMA');
			$crud->set_relation('ID_KATEGORI_PRODUK','kategori_produk','NAMA_KATEGORI');
			$crud->display_as('ID_MERK','MERK');
			$crud->display_as('ID_KATEGORI_PRODUK','KATEGORI PRODUK')->display_as('IS_ACTIVE','ACTIVE');
			
			$data['judul'] = 'Manajemen Produk';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function gambarProduk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->order_by('ID_PRODUK','asc');
			$crud->set_table('gambar_produk');
			$crud->set_subject('Gambar Produk');
			$crud->required_fields('ID_PRODUK','GAMBAR');
			$crud->set_relation('ID_PRODUK','produk','NAMA');
			$crud->set_field_upload('GAMBAR','gambarProduk');
			$crud->callback_before_upload(array($this,'_before_upload'));
			$crud->callback_after_upload(array($this,'example_callback_after_upload'));
			
			$crud->display_as('ID_PRODUK','NAMA PRODUK');
			$data['judul'] = 'Manajemen Gambar Produk';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	function example_callback_after_upload($uploader_response,$field_info, $files_to_upload)
	{
		$this->load->library('image_moo');
		 
		$file_uploaded = $field_info->upload_path.'/'.$uploader_response[0]->name; 
		 
		$this->image_moo->load($file_uploaded)->resize(400,400)->save($file_uploaded,true);
		 
		return true;
	}
	
	
	function _before_upload($files_to_upload,$field_info)
	{
		foreach($files_to_upload as $value) {
			$ext = pathinfo($value['name'], PATHINFO_EXTENSION);
			$rename = $value['name'];
		}
		$allowed_formats = array("jpg","png","jpeg");
		if(in_array($ext,$allowed_formats))
		{
			return true;
		}
		else
		{
			return 'You just can upload file .jpg , .jpeg , .png'; 
		}

		if ($rename) {
			$ext1 = end(explode(".",$rename));
			$img_name = $rename = mktime().".".$ext1;
			$rename = $img_name;

			return $rename;
		}
	} 
	
	
	public function detailProduk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->order_by('ID_PRODUK','asc');
			$crud->set_table('detail_produk');
			$crud->set_subject('Detail Produk');
			$crud->required_fields('UKURAN','JUMLAH','ID_PRODUK');
			$crud->set_relation('ID_PRODUK','produk','NAMA');
			$crud->display_as('ID_PRODUK','NAMA PRODUK');
						
			$data['judul'] = 'Manajemen Detail Produk';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	public function disscountProduk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->order_by('ID_PRODUK','asc');
			$crud->set_table('disscount');
			$crud->set_subject('Disscount Produk');
			$crud->required_fields('ID_PRODUK','HARGA_DISSCOUNT','WAKTU_MULAI','WAKTU_SELESAI');
			$crud->display_as('IS_ACTIVE','ACTIVE');
			$crud->display_as('ID_PRODUK','NAMA PRODUK');
			$crud->set_relation('ID_PRODUK','produk','NAMA');
						
			$data['judul'] = 'Manajemen Disscount Produk';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function ratingProduk(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->set_table('rating_produk');
			$crud->set_subject('Rating Produk');
			
			$crud->set_relation('ID_MEMBER','member','USERNAME');
			$crud->set_relation('ID_PRODUK','produk','NAMA');
						
			$crud->unset_add();
			$crud->unset_edit();
			$crud->unset_delete();
			$data['judul'] = 'Manajemen Rating Produk';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	public function pemesanan(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->set_table('pemesanan');
			$crud->where('STATUS_PEMESANAN','NOT CONFIRMED');
			$crud->or_where('STATUS_PENGIRIMAN','NOT DELIVERED');
			$crud->order_by('WAKTU_PEMESANAN','asc');
			$crud->set_subject('Transaksi Pemesanan');
			$crud->edit_fields('STATUS_PEMESANAN','STATUS_PENGIRIMAN');
			$crud->required_fields('STATUS_PENGIRIMAN','STATUS_PEMESANAN');
			$crud->set_relation('ID_MEMBER','member','ID_MEMBER');
			$crud->columns(array('ID_PEMESANAN','ID_MEMBER','WAKTU_PEMESANAN','TOTAL_BIAYA_PRODUK','TOTAL_BIAYA_PENGIRIMAN','TOTAL_BIAYA_KESELURUHAN','STATUS_PEMBAYARAN','STATUS_PEMESANAN','STATUS_PENGIRIMAN'));	
			$crud->display_as('TOTAL_BIAYA_PRODUK','BIAYA PRODUK')->display_as('TOTAL_BIAYA_PENGIRIMAN','BIAYA KIRIM')->display_as('TOTAL_BIAYA_KESELURUHAN','BIAYA KESELURUHAN');
			$crud->display_as('STATUS_PEMBAYARAN','STAT. BAYAR')->display_as('STATUS_PENGIRIMAN','STAT. PENGIRIMAN')->display_as('STATUS_PEMESANAN','STAT.PEMESANAN');
			$crud->unset_add();
			$crud->unset_delete();
			$data['judul'] = 'Manajemen Transaksi Pemesanan';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	public function detailPemesanan(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->set_table('detail_pemesanan');
			$crud->set_relation('ID_PEMESANAN','pemesanan','ID_PEMESANAN');
			$crud->set_relation('ID_PRODUK','produk','ID_PRODUK');
			$crud->order_by('ID_PEMESANAN','asc');
			$crud->set_subject('Transaksi Pemesanan');
			
		
						
			$crud->unset_add();
			$crud->unset_edit();
			$crud->unset_delete();
			$data['judul'] = 'Manajemen Detail Transaksi Pemesanan';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function identitasPengiriman(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->set_table('identitas_pengiriman');
			$crud->set_subject('Identitas Pengiriman');
			
			$crud->set_relation('ID_PEMESANAN','pemesanan','ID_PEMESANAN');
						
			$crud->unset_add();
			$crud->unset_edit();
			$crud->unset_delete();
			$data['judul'] = 'Manajemen Identitas Pengiriman Transaksi Pemesanan';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function konfirmasiPembayaran(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->set_table('konfirmasi_pembayaran');
			$crud->set_subject('Konfirmasi Pembayaran');
			$crud->where('STATUS_PENGIRIMAN','NOT DELIVERED');
			$crud->or_where('STATUS_PENGIRIMAN','SENDING');
			$crud->set_relation('ID_PEMESANAN','pemesanan','ID_PEMESANAN');
			$crud->set_field_upload('BUKTI_PEMBAYARAN','gambarBuktiPembayaran');
						
			$crud->unset_add();
			$crud->unset_edit();
			$crud->unset_delete();
			$data['judul'] = 'Manajemen Konfrimasi Pembayaran Transaksi Pemesanan';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function pesan(){
		try{
			$crud = new grocery_CRUD();
			
			$crud->set_theme('flexigrid');
			$crud->set_table('pesan');
			$crud->set_subject('Pesan');
		
			$crud->set_relation('ID_MEMBER','member','ID_MEMBER');
			
			$data['judul'] = 'Manajemen Pesan';
			
			$data['output'] = $crud->render();
			$this->load->view('main_view', $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	
	
	
	

}