<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi_combobox.php";
include "../config/fungsi_rupiah.php";

// Bagian Home
if ($_GET[module]=='home'){
  echo "<h2>Selamat Datang</h2>
          <p>Anda telah mengakses halaman Administrator.<br> Halaman ini digunakan untuk mengelola konten website dengan menu yang di sediakan di sebelah kiri. </p>
          <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
          <p align=right>Login : $hari_ini, ";
  echo tgl_indo(date("Y m d")); 
  echo " | "; 
  echo date("H:i:s");
  echo " WIB</p>";
}


// Bagian Kategori
elseif ($_GET[module]=='kategori'){
    include "modul/mod_kategori/kategori.php";
}

// Bagian Produk
elseif ($_GET[module]=='produk'){
    include "modul/mod_produk/produk.php";
}


// Bagian Order
elseif ($_GET[module]=='order'){
    include "modul/mod_order/order.php";
}


// Bagian Kota/Ongkos Kirim
elseif ($_GET[module]=='ongkoskirim'){
    include "modul/mod_ongkoskirim/ongkoskirim.php";
}


// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>
