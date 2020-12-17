<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{
   public function __construct()
   {

      parent::__construct();
      cek_login();
      cek_user();
   }
   public function barang()
   {
      $data = array(
         'title'    => 'Laporan Data Barang',
         'user'     => infoLogin(),
         'toko'     => $this->db->get('profil_perusahaan')->row(),
         'content'  => 'barang/item/laporan'
      );
      $this->load->view('templates/main', $data);
   }

   public function penjualan()
   {
      $data = array(
         'title'    => 'Laporan Penjualan',
         'user'     => infoLogin(),
         'toko'     => $this->db->get('profil_perusahaan')->row(),
         'content'  => 'penjualan/laporan'
      );
      $this->load->view('templates/main', $data);
   }

   public function bukuBesar(){
      $data = array(
         'title'    => 'Laporan Buku Besar',
         'user'     => infoLogin(),
         'toko'     => $this->db->get('profil_perusahaan')->row(),
         'content'  => 'buku_besar/laporan',
         'akun'     => $this->db->get('akun')->result()
      );
      $this->load->view('templates/main', $data);
   }

   public function jurnalUmum(){
      $data = array(
         'title'    => 'Jurnal Umum',
         'user'     => infoLogin(),
         'toko'     => $this->db->get('profil_perusahaan')->row(),
         'content'  => 'jurnal_umum/laporan'
      );
      $this->load->view('templates/main', $data);
   }

   public function laba_rugi()
   {
      $data = array(
         'title'    => 'Laporan Laba Rugi',
         'user'     => infoLogin(),
         'toko'     => $this->db->get('profil_perusahaan')->row(),
         'content'  => 'penjualan/laba_rugi'
      );
      $this->load->view('templates/main', $data);
   }

   public function stok()
   {
      $data = array(
         'title'    => 'Laporan Stok In/Out',
         'user'     => infoLogin(),
         'toko'     => $this->db->get('profil_perusahaan')->row(),
         'content'  => 'stok/laporan'
      );
      $this->load->view('templates/main', $data);
   }
}
