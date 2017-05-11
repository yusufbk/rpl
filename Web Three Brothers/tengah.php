<?php
// Halaman utama (Home)
if ($_GET[module]=='home'){

echo'
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>';

      echo '
      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">';

        echo '<div class="item active">';
        if ($_SESSION[email] !="") {
          echo '
          <center><img width=730 src="images/slideshow.png" alt="Chania"></center>';
        }else{
          echo '
          <center><img width=1000 src="images/slideshow.png" alt="Chania"></center>';
        }
        echo '</div>';

        echo '<div class="item">';
        if ($_SESSION[email] !="") {
          echo '
          <center><img width=730 src="images/slideshow_2.jpeg" alt="Chania"></center>';
        }else{
          echo '
          <center><img width=1000 src="images/slideshow_2.jpeg" alt="Chania"></center>';
        }
        echo '</div>';

        echo '<div class="item">';
        if ($_SESSION[email] !="") {
          echo '
          <center><img width=730 src="images/slideshow_3.jpeg" alt="Chania"></center>';
        }else{
          echo '
          <center><img width=1000 src="images/slideshow_3.jpeg" alt="Chania"></center>';
        }

        echo "</div>";
      echo "</div>";


echo '
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
';
}
//MODULE INI DIGUNAKAN UNTUK MEMBUAT MENU BARU////////////////////////////////////

if ($_GET[module]=='daftar_barang'){
echo'<div class="banner">
              <div class="slides">
				<div class="slides_container">';

        echo"
                      <div class='imgeslider'><img src= alt='picture' title='product' width='220' height='240' />
                    <div class='banner-text'>
                          <h1>Nama</h1>
                          <p>Deskripsi</p>
                  </div>";

   echo"           </div>
          </div>
        </div>
		";

  echo "<div class='center_title_bar'>Daftar Produk</div>";

    include "diskon_stok.php";
	echo " <div class='product-info'>
		<img src='' border='0' />
            <h2><a href=''>Nama</a></h2>
            <div ><span>Harga</span></div>
               <ul>
				<li><a href='''>Detail</a> </li>
				 <li><a href=>Tombol</a></li>
              </ul>
          </div>";
}

elseif ($_GET[module]=='keranjangbelanja'){
    echo "<script>window.alert('Keranjang Belanjanya Masih Kosong');
        window.location=('index.php')</script>";
    }

//Module Login
elseif ($_GET[module]=='login') {
  echo "
  <div class='login-box'>
  <h2>Form Login</h2>
      <form name=form2>
      <table>
      <tr><td>Email</td><td> <input type=text name=email size=30></td></tr>
      <tr><td>Password</td><td> <input type=password name=password size=30></td></tr>
      <tr><td><input type='submit' class='button' value='Login' id='submit'></td></tr>
      </table>
      </form></div>";
}


//Module Register
elseif ($_GET[module]=='register') {
echo "
<div class='login-box'>
<h2>Form Register</h2>
      <form name=form>
      <table width='90%'>
      <tr><td>Nama Lengkap</td><td>  <input type=text name=nama size=30></td></tr>
      <tr><td>Password</td><td>  <input type=password name=password></td></tr>
      <tr><td>Alamat Pengiriman</td><td> <textarea name='alamat'></textarea>
      <br /> Alamat pengiriman harus di isi lengkap, termasuk kota/kabupaten dan kode posnya.</td></tr>
      <tr><td>Nomor Rekening</td><td>  <input type=text name=rekening></td></tr>
      <tr><td>Email</td><td>  <input type=text name=email size=30></td></tr>
      <tr><td valign=top>Kota Tujuan</td><td>
      <select name='kota'>
      <option value=0 selected>- Pilih Kota -</option>";

  echo "</select> <br /><br />*)  Apabila tidak terdapat nama kota tujuan Anda, pilih <b>Lainnya</b>
                  <br />**) Ongkos kirim dihitung berdasarkan kota tujuan</td></tr>
      <tr><td colspan=2><input type='submit' class='button' value='Daftar'></td></tr>
      </table>
      </form>
	  </div>";
}
?>
