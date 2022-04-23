<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
	// public function __construct()
	// {
	// 	parent::__construct();
	// 	$this->load->model('permission_model');
	// }

	// public function index()
	// {

	// 	$this->template->load('template', 'dashboard');
	// }
	public function __construct()
	{
		parent::__construct();
		$this->load->model('permission_model');
		$this->load->model('User_model');
		$this->load->model('Kecamatan_model');
		$this->load->model('Dashboard_model');

		if (!$this->session->userdata('no_hp')) {
			redirect('auth');
		} elseif ($this->session->userdata('role') !== 'Admin' && $this->session->userdata('role') !== 'Operator') {
			redirect('auth/blocked');
		}
	}

	public function index()
	{
		$data['user'] = $this->db->get_where('users', ['no_hp' => $this->session->userdata('no_hp')])->row_array();

		$data['kecamatan'] = $this->Kecamatan_model->get_kecamatan()->result_array();
		$data['bentukKekerasan'] = $this->db->from('bentuk_kekerasan')->order_by('id_bentuk_kekerasan', 'ASC')->get()->result_array();
		$data['dataKekerasan'] = $this->Dashboard_model->get_bentukKekerasan()->row_array();

		$data['umur'] = $this->Dashboard_model->get_umur()->row_array();
		$data['user'] = $this->Dashboard_model->get_user()->row_array();

		// var_dump($data['dataKekerasan']);
		// die;

		$data['korban'] = $this->Dashboard_model->get_korban()->row_array();
		$data['laki'] = $this->Dashboard_model->get_korbanLakiLaki()->row_array();
		$data['perempuan'] = $this->Dashboard_model->get_korbanPerempuan()->row_array();

		$data['galing'] = $this->Dashboard_model->get_galing()->row_array();
		$data['jawai'] = $this->Dashboard_model->get_jawai()->row_array();
		$data['jawaiSelatan'] = $this->Dashboard_model->get_jawaiSelatan()->row_array();
		$data['paloh'] = $this->Dashboard_model->get_paloh()->row_array();
		$data['pemangkat'] = $this->Dashboard_model->get_pemangkat()->row_array();
		$data['sajad'] = $this->Dashboard_model->get_sajad()->row_array();
		$data['sajinganBesar'] = $this->Dashboard_model->get_sajinganBesar()->row_array();
		$data['salatiga'] = $this->Dashboard_model->get_salatiga()->row_array();
		$data['sambas'] = $this->Dashboard_model->get_sambas()->row_array();
		$data['sebawi'] = $this->Dashboard_model->get_sebawi()->row_array();
		$data['sejangkung'] = $this->Dashboard_model->get_sejangkung()->row_array();
		$data['selakau'] = $this->Dashboard_model->get_selakau()->row_array();
		$data['selakauTimur'] = $this->Dashboard_model->get_selakauTimur()->row_array();
		$data['semparuk'] = $this->Dashboard_model->get_semparuk()->row_array();
		$data['subah'] = $this->Dashboard_model->get_subah()->row_array();
		$data['tangaran'] = $this->Dashboard_model->get_tangaran()->row_array();
		$data['tebas'] = $this->Dashboard_model->get_tebas()->row_array();
		$data['tekarang'] = $this->Dashboard_model->get_tekarang()->row_array();
		$data['telukKeramat'] = $this->Dashboard_model->get_telukKeramat()->row_array();


		$data['title'] = 'SIPUDAK';
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar');
		$this->load->view('templates/topbar', $data);
		$this->load->view('dashboard');
		$this->load->view('templates/footer', $data);
	}
}
