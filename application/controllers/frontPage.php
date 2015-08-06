<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class FrontPage extends CI_Controller {
	/*controler halaman depan
	
	
	*/
	function __construct()
    {
        parent::__construct();
      
    }
	public function index()
	{
		
		
		
	
	
		
	}
	public function listSurat ()
	{
			$crud = new grocery_CRUD();
    $crud->set_table('surat');//nama table yg akan di list 
	$crud->set_subject('Surat');//deskripsi tombol

    $crud->columns('nomorSurat','perihal','tanggal','idInstansi','idSifatSurat','fileAttach','Distribusi');//kolom yg akan ditampilkan
	$crud->set_relation('idInstansi','instansi','namaInstansi');//relasi tabel : contoh
	$crud->set_relation('idSifatSurat','sifatSurat','SifatSurat');//relasi tabel dengan tabel type surat
	$crud->set_field_upload('fileAttach','assets/');//ubah field fileAttach menjadi mode upload
	$crud->set_relation_n_n('Distribusi', 'distribusi', 'unit', 'id_surat', 'id_unit', 'namaGroup');
	
    $output = $crud->render();
 	$this->_outputs($output); 
    
	}
		public function unit ()
	{
	$crud = new grocery_CRUD();
    $crud->set_table('unit');
	//$crud->columns('namaGroup');
	 $crud->callback_column('namaGroup',array($this,'_linkSurat'));
    //$crud->columns('nomorSurat','perihal','tanggal');
 
    $output = $crud->render();
 	$this->_outputs($output); 
    
	}
	function _linkSurat($value, $row)
	{
		return "<a href='".site_url('FrontPage/suratperunit/'.$row->idUnit)."'>$value</a>";
	}
	public function suratperunit ()
	{
	$crud = new grocery_CRUD();
    $crud->set_table('distribusi');
	$crud->where('id_unit',$this->uri->segment(3));
	$crud->set_primary_key('id_unit','distribusi');
	$crud->set_relation('id_unit','unit','namaGroup');
	$crud->set_relation('id_surat','surat','nomorSurat');
	$crud->columns('id_surat');
	$crud->display_as('id_surat','nomor surat');
	$crud->unset_add();
    $crud->unset_edit();
    //$crud->columns('nomorSurat','perihal','tanggal');
 
    $output = $crud->render();
 	$this->_outputs($output); 
    
	}
	public function instansi ()
	{
	$crud = new grocery_CRUD();
    $crud->set_table('instansi');
    //$crud->columns('nomorSurat','perihal','tanggal');
 
    $output = $crud->render();
 	$this->_outputs($output); 
    
	}
	public function user ()
	{
	$crud = new grocery_CRUD();
    $crud->set_table('user');

	$crud->set_relation('idUnit','unit','namaGroup');
	
	
 
    $output = $crud->render();
 	$this->_outputs($output); 
    
	}
	public function sifatSurat ()
	{
	$crud = new grocery_CRUD();
    $crud->set_table('sifatSurat');
    //$crud->columns('nomorSurat','perihal','tanggal');
 
    $output = $crud->render();
 	$this->_outputs($output); 
    
	}
	// render 
		function _outputs($output = null)
	{
    //$this->load->view('adminpanel/header.php');
    $this->load->view('frontPageTemplate',$output);
    //$this->load->view('adminpanel/footer.php');
	} 
	
		
	
	
	
}