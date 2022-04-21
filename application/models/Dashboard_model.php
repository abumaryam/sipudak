<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard_model extends CI_Model
{
    public function get_korban()
    {
        $query = $this->db->select('*, COUNT(id_korban) as korban')
            ->from('korban')->get();
        return $query;
    }

    public function get_korbanLakiLaki()
    {
        $query = $this->db->select('*, COUNT(id_korban) as korbanLakiLaki')
            ->where('jenis_kelamin', 'Laki-Laki')
            ->from('korban')->get();
        return $query;
    }

    public function get_korbanPerempuan()
    {
        $query = $this->db->select('*, COUNT(id_korban) as korbanPerempuan')
            ->where('jenis_kelamin', 'Perempuan')
            ->from('korban')->get();
        return $query;
    }

    public function get_galing()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '1')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_jawai()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '2')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_jawaiSelatan()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '3')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_paloh()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '4')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_pemangkat()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '5')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_sajad()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '6')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_sajinganBesar()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '7')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_salatiga()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '8')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_sambas()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '9')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_sebawi()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '10')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_sejangkung()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '11')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_selakau()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '12')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_selakauTimur()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '13')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_semparuk()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '14')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_subah()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '15')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_tangaran()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '16')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_tebas()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '17')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_tekarang()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '18')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_telukKeramat()
    {
        $query = $this->db->select('COUNT(id_pengaduan) as kasus')
            ->where('id_kecamatan', '19')
            ->from('pengaduan_kasus')->get();
        return $query;
    }

    public function get_bentukKekerasan()
    {

        $query = $this->db->select('
        COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 1, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as satu,
        COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 2, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as dua,
        COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 3, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as tiga,
        COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 4, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as empat,
        COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 5, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as lima,COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 6, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as enam,
        COUNT(IF(bentuk_kekerasan.id_bentuk_kekerasan = 7, bentuk_kekerasan.id_bentuk_kekerasan, NULL)) as tujuh')
            ->from('pengaduan_kasus')
            ->join('sub_bentuk_kekerasan', 'pengaduan_kasus.id_sub_bentuk_kekerasan = sub_bentuk_kekerasan.id_sub_bentuk_kekerasan')
            ->join('bentuk_kekerasan', 'sub_bentuk_kekerasan.id_bentuk_kekerasan = bentuk_kekerasan.id_bentuk_kekerasan')
            ->get();

        return $query;
    }

    public function get_umur()
    {

        $query = $this->db->select('COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) <= 5, 1, NULL)) as satu,
        COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) BETWEEN 6 AND 12, 1, NULL)) as dua,
        COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) BETWEEN 13 AND 17, 1, NULL)) as tiga,
        COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) BETWEEN 18 AND 24, 1, NULL)) as empat,
        COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) BETWEEN 25 AND 44, 1, NULL)) as lima,
        COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) BETWEEN 45 AND 59, 1, NULL)) as enam,
        COUNT(IF(TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) >= 60, 1, NULL)) as tujuh,')
            ->from('korban')
            ->get();

        return $query;
    }
}
