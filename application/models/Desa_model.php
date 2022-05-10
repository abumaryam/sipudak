<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Desa_model extends CI_Model
{
    public function get_desa($limit, $start)
    {
        $query = $this->db->select('desa.*,nama_kecamatan', 'jumlah_kasus', 'tahun')
            ->from('desa')
            ->join('kecamatan', 'kecamatan.id_kecamatan = desa.id_kecamatan')
            ->join('kasus', 'kasus.id_desa = desa.id_desa')
            ->limit($limit, $start)
            ->get();
        return $query;
    }

    public function get_detail_desa($id)
    {
        $query = $this->db->select('desa.*,nama_kecamatan')
            ->from('desa')
            ->join('kecamatan', 'kecamatan.id_kecamatan = desa.id_kecamatan')
            ->where('id_desa', $id)
            ->get();
        return $query;
    }

    public function get_page_desa($limit, $start)
    {
        $query = $this->db->select('desa.*,nama_kecamatan')
            ->from('desa')
            ->join('kecamatan', 'kecamatan.id_kecamatan = desa.id_kecamatan')
            ->get($limit)->result_array();
        return $query;
    }

    public function adddesa()
    {
        $data = [
            'nama_desa' => $this->input->post('nama_desa', true),
            'id_kecamatan' => $this->input->post('nama_kecamatan', true),
        ];

        // insert ke dalam database
        $this->db->insert('desa', $data);
    }

    public function editdesa()
    {
        $data = [
            'nama_desa' => $this->input->post('nama_desa', true),
            'id_kecamatan' => $this->input->post('nama_kecamatan', true)
        ];

        // insert ke dalam database
        $this->db->where('id_desa', $this->input->post('id_desa'));
        $this->db->update('desa', $data);
    }

    public function delete($id)
    {
        $this->db->where('id_desa', $id);
        // $this->_deleteImage($id);
        $this->db->delete('desa');
    }

    public function get_keyword($keyword)
    {
        $query = $this->db->select('desa.*,nama_kecamatan')
            ->from('desa')
            ->join('kecamatan', 'kecamatan.id_kecamatan = desa.id_kecamatan')
            ->like('nama_desa', $keyword)
            ->get();
        return $query;
    }

    public function get_jumlah_kasus($limit, $start)
    {
        $query = $this->db->select('pengaduan_kasus.id_desa, tahun_pengaduan, count(pengaduan_kasus.id_desa) as j_kasus, kecamatan.nama_kecamatan as kecamatan, desa.nama_desa as namades, desa.longitude as long, desa.latitude as lat')
            ->from('pengaduan_kasus')
            ->join('desa', 'desa.id_desa = pengaduan_kasus.id_desa')
            ->join('kecamatan', 'kecamatan.id_kecamatan = desa.id_kecamatan')
            ->group_by('id_desa')
            ->limit($limit, $start)
            ->get();
        return $query;
    }
}
