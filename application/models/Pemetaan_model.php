<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pemetaan_model extends CI_Model
{
    // public function get_TitikBaru()
    // {
    //     return $this->db->get('titik_baru');
    // }

    // public function get_TitikLama()
    // {
    //     $query = $this->db->select('desa.* ,kasus.jumlah_kasus, tahun, desa.latitude as lat, desa.longitude as long')
    //         ->from('desa')
    //         ->join('kasus', 'kasus.id_desa = desa.id_desa')
    //         ->get();
    //     return $query;
    // }

    // public function PetaTahun()
    // {
    //     $query = $this->db->select('*, SUM(Jlh_Kasus / pow(Jarak, 3)) as zd, SUM(1 / pow(Jarak, 3)) as satud, SUM(Jlh_Kasus) as jumlahkasus, kecamatan.nama_kecamatan as nama')
    //         ->from('titik_kecamatan')
    //         ->join('kecamatan', 'kecamatan.id_kecamatan = titik_kecamatan.id_titik_hitung')
    //         ->group_by('id_titik_hitung')
    //         ->where()
    //         ->get();
    // }

    public function filterTitik($kcm_id)
    {
        $query = $this->db->select('nama_kecamatan, data_hitung.id_kecamatan')
            ->from('data_hitung')
            ->join('kecamatan', 'kecamatan.id_kecamatan = data_hitung.id_titik_hitung')
            ->where('data_hitung.id_kecamatan', $kcm_id)
            ->get()->result_array();
        return $query;
    }

    public function filterKasus($kcm, $thn)
    {
        $query = $this->db->select('count(id_kecamatan) as j_kasus, id_kecamatan')
            ->from('pengaduan_kasus')
            ->where('id_kecamatan', $kcm)
            ->where('tahun_pengaduan', $thn)
            ->group_by('id_kecamatan')
            ->get()->row_array();
        return $query;
    }

    public function filterJarak($kcm, $ttk_kcm)
    {
        $query = $this->db->select('Jarak')
            ->from('data_hitung')
            ->where('id_kecamatan', $kcm)
            ->where('id_titik_hitung', $ttk_kcm)
            ->get()->row_array();
        return $query;
    }

    public function get_kec($kecamatan_id)
    {
        // $query = $this->db->select('desa.*, kecamatan.nama_kecamatan')
        //     ->from('desa')
        //     ->join('kecamatan', 'desa.id_kecamatan = kecamatan.id_kecamatan')
        //     ->where('desa', $idkecamatan)
        //     ->get()->result_array();
        // return $query;
        $this->db->join('kecamatan', 'data_hitung.id_kecamatan = kecamatan.id_kecamatan');
        $this->db->where('id_titik_hitung', $kecamatan_id);
        $query = $this->db->get('data_hitung');

        $output = '<option value="">-- Pilih Kecamatan --</option>';

        //looping data
        foreach ($query->result() as $row) {
            $output .= '<option value="' . $row->id_kecamatan . '" >' . $row->nama_kecamatan . '</option>';
        }
        //return data desa
        return $output;
    }

    public function get_jarak($kecamatan_ttk, $kecamatan_id)
    {
        $this->db->where('id_titik_hitung', $kecamatan_ttk);
        $this->db->where('id_kecamatan', $kecamatan_id);
        $query = $this->db->get('data_hitung')->row();

        $output = 'value="' . $query->Jarak . '"';

        //looping data
        // foreach ($query->result() as $row) {
        //     $output .= '<option value="' . $row->id_kecamatan . '" >' . $row->nama_kecamatan . '</option>';
        // }
        //return data desa
        return $output;
    }

    public function tambah()
    {
        $data = [
            "id_kecamatan" => $this->input->post('kecamatan', true),
            "id_titik_hitung" => $this->input->post('ttk_kecamatan', true),
            "Jarak" => $this->input->post('jarak', true),
            "Jlh_Kasus" => $this->input->post('kasus', true),
            "Tahun" => $this->input->post('tahun', true)
        ];

        // echo "<pre>";
        // // // print_r($this->input->post());
        // print_r($data);
        // die;

        $cek_data = $this->db->get_where(
            'titik_kecamatan',
            [
                'id_kecamatan' => $this->input->post('kecamatan'),
                'id_titik_hitung' => $this->input->post('ttk_kecamatan'),
                'Tahun' => $this->input->post('tahun', true)
            ],
        )->row_array();

        if (!empty($cek_data)) {
            // update
            $this->db->update('titik_kecamatan', ['Jlh_Kasus' => $data['Jlh_Kasus']], ['id_t' => $cek_data['id_t']]);
            // print_r('edit');
        } else {
            // tambah'
            $this->db->insert('titik_kecamatan', $data);
            // print_r('add');
        }

        // print_r($this->db->last_query());



        // print_r($cek_data);
        // die;
    }
}
