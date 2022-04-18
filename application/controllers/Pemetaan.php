<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pemetaan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('permission_model');
        $this->load->model('Kecamatan_model');
        $this->load->model('Pemetaan_model');
    }

    public function index()
    {
        $data['user'] = $this->db->get_where('users', ['no_hp' => $this->session->userdata('no_hp')])->row_array();

        $data['kecamatan'] = $this->Kecamatan_model->get_kecamatan()->result_array();
        // $data['newData'] = $this->Pemetaan_model->get_TitikBaru()->result_array();
        // $data['oldData'] = $this->Pemetaan_model->get_TitikLama()->result_array();

        $query = $this->db->select('*, SUM(Jlh_Kasus / Jarak) as zd, SUM(1 / Jarak) as satud, SUM(Jlh_Kasus) as jumlahkasus, kecamatan.nama_kecamatan as nama')
            ->from('titik_kecamatan')
            ->join('kecamatan', 'kecamatan.id_kecamatan = titik_kecamatan.id_titik_hitung')
            ->group_by('id_titik_hitung')
            ->where('tahun = 2019')
            ->get();

        $data['titikhitung'] = $query->result_array();

        if ($this->input->get('cari')) {

            $key = $this->input->get('cari');

            // echo "<pre>";
            // // print_r($this->input->post());


            $query = $this->db->select('*, SUM(Jlh_Kasus / Jarak) as zd, SUM(1 / Jarak) as satud, SUM(Jlh_Kasus) as jumlahkasus, kecamatan.nama_kecamatan as nama')
                ->from('titik_kecamatan')
                ->join('kecamatan', 'kecamatan.id_kecamatan = titik_kecamatan.id_titik_hitung')
                ->group_by('id_titik_hitung')
                ->where('tahun', $key)
                ->get();


            // print_r($this->db->last_query());
            // die;

            $data['titikhitung'] = $query->result_array();

            // print_r($this->input->get('cari'));
            // die;
        }


        // echo json_encode($data['titiklama']);
        // die;

        $data['title'] = 'SIPUDAK';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar', $data);
        $this->load->view('pemetaan/index', $data);
        $this->load->view('templates/footer', $data);
    }

    public function PerhitunganIdw()
    {
        $data['user'] = $this->db->get_where('users', ['no_hp' => $this->session->userdata('no_hp')])->row_array();

        $query = $this->db->select('*, SUM(Jlh_Kasus / pow(Jarak, 3)) as zd, SUM(1 / pow(Jarak, 3)) as satud, SUM(Jlh_Kasus) as jumlahkasus, kecamatan.nama_kecamatan as nama')
            ->from('titik_kecamatan')
            ->join('kecamatan', 'kecamatan.id_kecamatan = titik_kecamatan.id_titik_hitung')
            ->group_by('id_titik_hitung')
            ->get();

        $data['titikhitung'] = $query->result_array();

        $data['title'] = 'SIPUDAK';
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar', $data);
        $this->load->view('pemetaan/perhitungan', $data);
        $this->load->view('templates/footer', $data);
    }

    public function PetaPerTahun()
    {
        $data['user'] = $this->db->get_where('users', ['no_hp' => $this->session->userdata('no_hp')])->row_array();
    }

    public function hitung()
    {
        $kcm = $this->input->post('kecamatan');
        $thn = $this->input->post('tahun');
        $ttk_kcm = $this->input->post('ttk_kecamatan');

        $data['user'] = $this->db->get_where('users', ['no_hp' => $this->session->userdata('no_hp')])->row_array();


        $data['ttk_kec'] = $this->db->get('kecamatan')->result_array();
        $data['kecamatan'] = $this->db->get('kecamatan')->result_array();


        // echo "<pre>";
        // print_r($this->input->post());
        // die;

        // $data['titik'] = $this->Pemetaan_model->filterTitik($kcm_id, $thn);
        $data['kasus'] = $this->Pemetaan_model->filterKasus($kcm, $thn);
        $data['jarak'] = $this->Pemetaan_model->filterJarak($kcm, $ttk_kcm);

        $this->form_validation->set_rules(
            'kasus',
            'Bulan',
            'required|trim'
        );

        $this->form_validation->set_rules(
            'jarak',
            'Bulan',
            'required|trim'
        );

        if ($this->form_validation->run() == false) {
            $data['title1'] = 'SIPUDAK';
            $data['title'] = 'Halaman Tambah Pelaporan';
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/topbar', $data);
            $this->load->view('pemetaan/hitung', $data);
            $this->load->view('templates/footer');
        } else {

            // var_dump($this->input->post('tahun')); die;
            $this->Pemetaan_model->tambah();
            $this->session->set_flashdata('flash', 'Ditambahkan');
            redirect('pemetaan');
        }
    }

    function get_kec()
    {
        if ($this->input->post('ttk_kecamatan')) {
            echo $this->Pemetaan_model->get_kec($this->input->post('ttk_kecamatan'));
        }
    }

    function get_jarak()
    {
        if ($this->input->post('ttk_kecamatan') && $this->input->post('id_kecamatan')) {
            echo $this->Pemetaan_model->get_jarak($this->input->post('ttk_kecamatan'), $this->input->post('id_kecamatan'));
        }
    }
}
