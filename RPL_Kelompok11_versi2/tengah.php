<script language="javascript">
function validasi(form){
  if (form.nama.value == ""){
    alert("Anda belum mengisikan Nama.");
    form.nama.focus();
    return (false);
  }
  if (form.alamat.value == ""){
    alert("Anda belum mengisikan Alamat.");
    form.alamat.focus();
    return (false);
  }
  if (form.telpon.value == ""){
    alert("Anda belum mengisikan Telpon.");
    form.telpon.focus();
    return (false);
  }
  if (form.email.value == ""){
    alert("Anda belum mengisikan Email.");
    form.email.focus();
    return (false);
  }
  if (form.kota.value == 0){
    alert("Anda belum mengisikan Kota.");
    form.kota.focus();
    return (false);
  }
  if (form.kode.value == ""){
    alert("Anda belum mengisikan Kode.");
    form.kode.focus();
    return (false);
  }
  return (true);
}

function validasi2(form2){
  if (form2.email.value == ""){
    alert("Anda belum mengisikan Email.");
    form2.email.focus();
    return (false)
  }
  if (form2.password.value == ""){
    alert("Anda belum mengisikan Password.");
    form2.password.focus();
    return (false);
  }
  return (true);
}

function harusangka(jumlah){
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;
  return true;
}
</script>


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
	<li data-target="#myCarousel" data-slide-to="3"></li>
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
        echo '</div>';

		echo '<div class="item">';
        if ($_SESSION[email] !="") {
          echo '
          <center><img width=730 src="images/slideshow_4.jpg" alt="Chania"></center>';
        }else{
          echo '
          <center><img width=1000 src="images/slideshow_4.jpg" alt="Chania"></center>';
        }
        echo '</div>';
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


if ($_GET[module]=='daftar_barang'){
echo'<div class="banner">
              <div class="slides">
				<div class="slides_container">';
  $sql=mysql_query("SELECT * FROM produk ORDER BY id_produk DESC LIMIT 6");
  while ($r=mysql_fetch_array($sql)){
  $deskripsi=substr($r[deskripsi],0,50);
  	echo"
                  <div class='imgeslider'><img src='foto_produk/$r[gambar]' alt='produk' title='product' width='220' height='240' />
                <div class='banner-text'>
                      <h1>$r[nama_produk]</h1>
                      <p>$deskripsi</p>
                      <a href='media.php?module=detailproduk&id=$r[id_produk]'> &nbsp;&nbsp;&nbsp; Lihat &nbsp;&nbsp; <span></span></a></div>
              </div>";
			  }

   echo"           </div>
          </div>
        </div>
		";

  echo "<div class='center_title_bar'><br><h3>Daftar Produk</h3></div>";
  $sql=mysql_query("SELECT * FROM produk ORDER BY id_produk DESC LIMIT 6");
  while ($r=mysql_fetch_array($sql)){

    include "harga_stok.php";
	echo " <div class='product-info'>
		<img src='foto_produk/small_$r[gambar]' border='0' />
            <h2><a href='media.php?module=detailproduk&id=$r[id_produk]'>$r[nama_produk]</a></h2>
            <div ><span>$divharga</span></div>
            <div style='color:#000;'><span><strong>Stok : $stok</strong></span></div>
               <ul>
				<li><a href='media.php?module=detailproduk&id=$r[id_produk]' class='prod_details'>Selengkapnya</a> </li>
				 <li><a href='#'> $tombol </a></li>
              </ul>
          </div>";
  }
}


//Module Warning
elseif ($_GET[module]=='warning') {
	echo "<div id='info'>! Untuk Melakukan Hal ini Anda Harus Login Terlebih Dahulu <a href='media.php?module=login'>disini</a></div>";
}

// Modul detail produk
elseif ($_GET[module]=='detailproduk'){
  // Tampilkan detail produk berdasarkan produk yang dipilih
	$detail=mysql_query("SELECT * FROM produk,kategori
                      WHERE kategori.id_kategori=produk.id_kategori
                      AND id_produk='$_GET[id]'");
	$r = mysql_fetch_array($detail);

  include "harga_stok.php";

  echo "
    	  <div class='product-detail'>
              <div class='img'><a href='foto_produk/$r[gambar]'><img src='foto_produk/$r[gambar]' border='0' width='230' height='210'/></a><br/>
            <div class='prod_price'>$divharga</div>
            <div style='text-align:center;margin-right:18px;'>(stok: $r[stok])</div>
            $tombol
			  </div>
            <div class='product_title_big' style='text-align:center;margin-left:30px;'>$r[nama_produk]</div>
              <div class='deskripsi' style='text-align:center;'>$r[deskripsi]</div>
          </div>";

}

// Modul produk per kategori
elseif ($_GET[module]=='detailkategori'){
  // Tampilkan nama kategori
  $sq = mysql_query("SELECT nama_kategori from kategori where id_kategori='$_GET[id]'");
  $n = mysql_fetch_array($sq);

  echo "<div class='center_title_bar'>Kategori: $n[nama_kategori]</div>";


  // Tampilkan daftar produk yang sesuai dengan kategori yang dipilih
 	$sql = mysql_query("SELECT * FROM produk WHERE id_kategori='$_GET[id]'
            ORDER BY id_produk DESC LIMIT 9");
	$jumlah = mysql_num_rows($sql);

	// Apabila ditemukan produk dalam kategori
	if ($jumlah > 0){
  while ($r=mysql_fetch_array($sql)){

    include "harga_stok.php";
	echo " <div class='product-info'>
		<img src='foto_produk/small_$r[gambar]' border='0' height='110' title='klik untuk memperbesar gambar' />
            <h2><a href='media.php?module=detailproduk&id=$r[id_produk]'>$r[nama_produk]</a></h2>
           <div><span>$divharga</span></div>
           <div style='color:#000;'><span><strong>Stok : $stok</strong></span></div>
               <ul>
                <li><a href='media.php?module=detailproduk&id=$r[id_produk]' class='prod_details'>selengkapnya</a> </li>
                <li><a href='#'> $tombol </a></li>
              </ul>
          </div>";
  }

  }
  else{
    echo "<p align=center>Belum ada produk pada kategori ini.</p>";
  }
}


// Modul keranjang belanja
elseif ($_GET[module]=='keranjangbelanja'){
  // Tampilkan produk-produk yang telah dimasukkan ke keranjang belanja
	$sid = $_SESSION[email];
	$sql = mysql_query("SELECT * FROM orders_temp, produk
			                WHERE id_session='$sid' AND orders_temp.id_produk=produk.id_produk");
  $ketemu=mysql_num_rows($sql);
  if($ketemu < 1){
    echo "<script>window.alert('Keranjang Belanjanya Masih Kosong');
        window.location=('index.php')</script>";
    }
  else{
    echo "<div class='center_title_bar'>Keranjang Belanja</div>
          <div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>
          <div class='details_big_cari'>
              <div>
          <form method=post action=aksi.php?module=keranjang&act=update>
          <table border=0 cellpadding=3 align=center width='95%'>
          <tbody>
          <tr><th>No</th><th>Produk</th><th>Nama Produk</th><th>Berat(Kg)</th><th>Qty</th>
          <th>Harga</th><th>Sub Total</th><th>Hapus</th></tr>";

  $no=1;
  while($r=mysql_fetch_array($sql)){
    $subtotal    = ($r[harga]) * $r[jumlah];
    $total       = $total + $subtotal;
    $subtotal_rp = format_rupiah($subtotal);
    $total_rp    = format_rupiah($total);
    $harga       = format_rupiah($r[harga]);

    echo "<tr style='color:#000;border: 1px solid #ECECEC'><td>$no</td><input type=hidden name=id[$no] value=$r[id_orders_temp]>
              <td align=center><br><img src=foto_produk/small_$r[gambar]></td>
              <td>$r[nama_produk]</td>
       			  <td align=center>$r[berat]</td>
              <td><select name='jml[$no]' value=$r[jumlah] onChange='this.form.submit()'>";
              for ($j=1;$j <= $r[stok];$j++){
                  if($j == $r[jumlah]){
                   echo "<option selected>$j</option>";
                  }else{
                   echo "<option>$j</option>";
                  }
              }
        echo "</select></td>
              <td>$harga</td>
              <td>$subtotal_rp</td>
              <td align=center><a href='aksi.php?module=keranjang&act=hapus&id=$r[id_orders_temp]'>
              <img src=images/kali.png border=0 title=Hapus></a></td>
          </tr>";
    $no++;
  }
  echo "<tr style='color:#000'><td colspan=6 align=right><br><b>Total</b>:</td><td colspan=2><br>Rp. <b>$total_rp</b></td></tr>
        <tr><td colspan=3><br /><a href='javascript:history.go(-1)' class='button'>Lanjutkan Belanja</a><br /></td>
        <td colspan=5 align=right><br /><a href='media.php?module=datatransaksi' class='button'>Selesai Belanja</a></a><br /></td></tr>
        </tbody></table></form><br />
        <div id='info'>*) Total harga diatas belum termasuk ongkos kirim yang akan dihitung saat <b>Selesai Belanja</b>.</div>
        </div>

          </div>
          </div>
            <div class='bottom_prod_box_big'></div>
          </div>";
  }

}


//Module Login
elseif ($_GET[module]=='login') {
	if ($_GET[act]=='aksilogin') {
echo "<div id='info'>";
		$email = $_POST['email'];
		$password = md5($_POST['password']);

		$sql = "SELECT * FROM	kustomer WHERE email='$email' AND password='$password'";
		$hasil = mysql_query($sql);
		$r = mysql_fetch_array($hasil);

		if(mysql_num_rows($hasil) == 0){
					 echo "Email atau Password Anda tidak benar<br />";
		}
		else{
		session_start();
		$_SESSION[email]= $r[email];
		$_SESSION[password]= $r[password];
	   echo "<script> alert('Silahkan Berbelanja Di Toko Kami');window.location='index.php'</script>\n";
		 exit(0);
		}
echo "</div>";
	}
  echo "
  <div class='login-box'>
  <h2>Form Login</h2>
      <form name=form2 action=media.php?module=login&act=aksilogin method=POST onSubmit=\"return validasi2(this)\">
      <table>
      <tr><td>Email</td><td> <input type=text name=email size=30></td></tr>
      <tr><td>Password</td><td> <input type=password name=password size=30></td></tr>
      <tr><td><input type='submit' class='button' value='Login' id='submit'></td></tr>
      </table>
      </form></div>";
}


//Module Register
elseif ($_GET[module]=='register') {
$kar1=strstr($_POST[email], "@");
$kar2=strstr($_POST[email], ".");
$password=md5($_POST[password]);
echo "<div id='info'>";
// Cek email kustomer di database
$cek_email=mysql_num_rows(mysql_query("SELECT email FROM kustomer WHERE email='$_POST[email]'"));
// Kalau email sudah ada yang pakai
if ($cek_email > 0){
  echo "Email <b>$_POST[email]</b> sudah ada yang pakai.<br />";
}
elseif (empty($_POST[email]) || empty($_POST[password])){
  echo "Lengkapi data anda dengan valid<br />";
}
elseif (strlen($kar1)==0 OR strlen($kar2)==0){
  echo "Alamat email Anda tidak valid, mungkin kurang tanda titik (.) atau tanda @.<br />";
}
else{
if(!empty($_POST['kode'])){
  if($_POST['kode']==$_SESSION['captcha_session']){
// simpan data kustomer
mysql_query("INSERT INTO kustomer(email, password)
             VALUES('$_POST[email]','$password')");
			echo "<b>Anda berhasil Melakukan Registrasi</b><br/>
				Silahkan anda login <a href='media.php?module=login'>disini</a>";
	}else{
	echo "Kode yang Anda masukkan tidak cocok<br />";
	}
	}else{
	echo "Anda belum memasukkan kode<br />";
	}

}
echo "</div>";
echo "
<div class='login-box'>
<h2>Form Register</h2>
      <form name=form action=media.php?module=register method=POST onSubmit=\"return validasi(this)\">
      <table width='90%'>
	  <tr><td>Email</td><td>  <input type=text name=email size=30></td></tr>
      <tr><td>Password</td><td>  <input type=password name=password></td></tr>";
      echo"
        <tr><td>&nbsp;</td><td><img src='captcha.php'></td></tr>
        <tr><td>&nbsp;</td><td>(Masukkan 6 kode diatas)<br /><input type=text name=kode size=6 maxlength=6><br /></td></tr>
      <tr><td colspan=2><input type='submit' class='button' value='Daftar'></td></tr>
      </table>
      </form>
	  </div>";
}

//Module Data Transaksi
elseif ($_GET[module]=='datatransaksi') {
echo "<div id='info'>";
if (empty($_POST[nama]) || empty($_POST[alamat]) || empty($_POST[telepon]) || empty($_POST[kota])){
  echo "Lengkapi data anda dengan valid<br />";
}

echo "</div>";

echo "
<div class='login-box'>
<h2>Form Data Transaksi</h2>
      <form name=form action=media.php?module=simpantransaksimember method=POST onSubmit=\"return validasi(this)\">
      <table width='90%'>
      <tr><td>Nama Lengkap</td><td>  <input type=text name=nama size=30></td></tr>
      <tr><td>Alamat Pengiriman</td><td> <textarea name='alamat'></textarea>
      <br /> Alamat pengiriman harus di isi lengkap, termasuk kota/kabupaten dan kode posnya.</td></tr>
      <tr><td>Telepon</td><td>  <input type=text name=telepon></td></tr>
      <tr><td valign=top>Kota Tujuan</td><td>
      <select name='kota'>
      <option value=0 selected>- Pilih Kota -</option>";
      $tampil=mysql_query("SELECT * FROM kota ORDER BY nama_kota");
      while($r=mysql_fetch_array($tampil)){
         echo "<option value=$r[id_kota]>$r[nama_kota]</option>";
      }
  echo "</select> <br /><br />*)  Apabila tidak terdapat nama kota tujuan Anda, pilih <b>Lainnya</b>
                  <br />**) Ongkos kirim dihitung berdasarkan kota tujuan</td></tr>
      <tr><td colspan=2><input type='submit' class='button' value='Submit'></td></tr>
      </table>
      </form>
	  </div>";

}


// Modul simpan transaksi member
elseif ($_GET[module]=='simpantransaksimember'){
  $email = $_SESSION[email];
  $password = $_SESSION[password];

  $id = mysql_fetch_array(mysql_query("SELECT id_kustomer FROM kustomer WHERE email='$email' AND password='$password'"));
	$id_kustomer=$id[id_kustomer];


  $tgl_skrg = date("Ymd");
  $jam_skrg = date("H:i:s");

  mysql_query("INSERT INTO data_transaksi(nama, alamat, telepon, id_kota, id_kustomer, tgl_order,jam_order)
               VALUES('$_POST[nama]','$_POST[alamat]','$_POST[telepon]','$_POST[kota]','$id_kustomer','$tgl_skrg','$jam_skrg')");

 $id_2 = mysql_fetch_array(mysql_query("SELECT id_transaksi FROM data_transaksi WHERE id_transaksi IN(SELECT MAX(id_transaksi) from data_transaksi)"));
 $id_transaksi=$id_2[id_transaksi];

echo "<div style='color:#000'>";
$email = $_SESSION[email];
$password = $_SESSION[password];

$sql = "SELECT * FROM	kustomer WHERE email='$email' AND password='$password'";
$hasil = mysql_query($sql);
$r = mysql_fetch_array($hasil);

// fungsi untuk mendapatkan isi keranjang belanja
function isi_keranjang(){
	$isikeranjang = array();
	$sid = $_SESSION[email];
	$sql = mysql_query("SELECT * FROM orders_temp WHERE id_session='$sid'");

	while ($r=mysql_fetch_array($sql)) {
		$isikeranjang[] = $r;
	}
	return $isikeranjang;
}

$id = mysql_fetch_array(mysql_query("SELECT id_kustomer FROM kustomer WHERE email='$email' AND password='$password'"));

// mendapatkan nomor kustomer
$id_kustomer=$id[id_kustomer];


// panggil fungsi isi_keranjang dan hitung jumlah produk yang dipesan
$isikeranjang = isi_keranjang();
$jml          = count($isikeranjang);

// simpan data detail pemesanan
for ($i = 0; $i < $jml; $i++){
  mysql_query("INSERT INTO orders_detail(id_transaksi, id_produk, jumlah)
               VALUES('$id_transaksi',{$isikeranjang[$i]['id_produk']}, {$isikeranjang[$i]['jumlah']})");
}

// setelah data pemesanan tersimpan, hapus data pemesanan di tabel pemesanan sementara (orders_temp)
for ($i = 0; $i < $jml; $i++) {
  mysql_query("DELETE FROM orders_temp
	  	         WHERE id_orders_temp = {$isikeranjang[$i]['id_orders_temp']}");
}

$email = $_SESSION[email];
$password = $_SESSION[password];

$id = mysql_fetch_array(mysql_query("SELECT id_kustomer FROM kustomer WHERE email='$email' AND password='$password'"));
$id_kustomer=$id[id_kustomer];

$sql_1 = "SELECT * FROM	data_transaksi WHERE id_transaksi='$id_transaksi' AND id_kustomer='$id_kustomer'";
$hasil_1 = mysql_query($sql_1);
$r_1 = mysql_fetch_array($hasil_1);


  echo "<div class='center_title_bar'>Proses Transaksi Selesai</div>";
    	  echo "<div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>
          <div class='details_big_cari'>
              <div>
      Data pemesan beserta ordernya adalah sebagai berikut: <br />
      <table>
      <tr><td>Nama Lengkap   </td><td> : <b>$r_1[nama]</b> </td></tr>
      <tr><td>Alamat Lengkap </td><td> : $r_1[alamat] </td></tr>
      <tr><td>Telepon         </td><td> : $r_1[telepon] </td></tr>
      <tr><td>E-mail         </td><td> : $r[email] </td></tr></table><hr /><br />

      Nomor Order: <b>$id_transaksi</b><br /><br />";

      $daftarproduk=mysql_query("SELECT * FROM orders_detail,produk
                                 WHERE orders_detail.id_produk=produk.id_produk
                                 AND id_transaksi='$id_transaksi'");

echo "<table cellpadding=10>
      <tr bgcolor=#6da6b1><th>No</th><th>Nama Produk</th><th>Berat(Kg)</th><th>Qty</th><th>Harga Satuan</th><th>Sub Total</th></tr>";


$no=1;
while ($d=mysql_fetch_array($daftarproduk)){
   $subtotal    = ($d[harga]) * $d[jumlah];

   $subtotalberat = $d[berat] * $d[jumlah]; // total berat per item produk
   $totalberat  = $totalberat + $subtotalberat; // grand total berat all produk yang dibeli

   $total       = $total + $subtotal;
   $subtotal_rp = format_rupiah($subtotal);
   $total_rp    = format_rupiah($total);
   $harga       = format_rupiah($d[harga]);

   echo "<tr bgcolor=#dad0d0><td>$no</td><td>$d[nama_produk]</td><td align=center>$d[berat]</td><td align=center>$d[jumlah]</td>
                             <td align=right>$harga</td><td align=right>$subtotal_rp</td></tr>";
   $no++;
}

// $a=mysql_query("SELECT id_kota FROM data_transaksi WHERE id_transaksi IN(SELECT MAX(id_transaksi) from data_transaksi)");
$ongkos=mysql_fetch_array(mysql_query("SELECT kota.ongkos_kirim FROM kota,data_transaksi WHERE kota.id_kota=(SELECT id_kota FROM data_transaksi WHERE id_transaksi IN(SELECT MAX(id_transaksi) from data_transaksi))"));
$ongkoskirim1=$ongkos[ongkos_kirim];
$ongkoskirim = $ongkoskirim1 * $totalberat;

$grandtotal    = $total + $ongkoskirim;

$ongkoskirim_rp = format_rupiah($ongkoskirim);
$ongkoskirim1_rp = format_rupiah($ongkoskirim1);
$grandtotal_rp  = format_rupiah($grandtotal);

echo "<tr><td colspan=5 align=right>Total : Rp. </td><td align=right><b>$total_rp</b></td></tr>
      <tr><td colspan=5 align=right>Ongkos Kirim untuk Tujuan Kota Anda: Rp. </td><td align=right><b>$ongkoskirim1_rp</b>/Kg</td></tr>
	    <tr><td colspan=5 align=right>Total Berat : </td><td align=right><b>$totalberat Kg</b></td></tr>
      <tr><td colspan=5 align=right>Total Ongkos Kirim : Rp. </td><td align=right><b>$ongkoskirim_rp</b></td></tr>
      <tr><td colspan=5 align=right>Grand Total : Rp. </td><td align=right><b>$grandtotal_rp</b></td></tr>
      </table>";
echo "<hr /><p>
			<div style='color:#E1473D;border:1px solid #E78686;padding:10px;background:#FFE1E1;'>
			  No Order anda adalah : <b>$id_orders</b> , Silahkan Melakukan Pembayaran Pada Rekening dibawah ini, <br/>
			  Anda dapat melakukan Konfirmasi Pembayaran Melalui SMS Ke NO : <b>081275371724</b>
			  <br/>Dengan Format :
			  <b>#No Orders #Nominal Transfer # Bank Tujuan # Bank Pengirim</b> Contoh :
			  <b> # $id_orders #$grandtotal_rp #Mandiri #Riau </b></div> <br /> <br />
               Apabila Anda tidak melakukan pembayaran dalam 3 hari, maka transaksi dianggap batal.</p><br />    ";
	$sql  = mysql_query("SELECT * FROM modul WHERE id_modul='3'");
    $r    = mysql_fetch_array($sql);
   echo "$r[static_content]";

echo"
              </div>
          </div>
          </div>
            <div class='bottom_prod_box_big'></div>
          </div>";

		echo "</div>";

mysql_query("UPDATE produk,orders_detail,data_transaksi SET produk.stok=(stok-(SELECT jumlah FROM orders_detail WHERE orders_detail.id_transaksi IN(SELECT MAX(orders_detail.id_transaksi) from orders_detail))) WHERE produk.id_produk=(SELECT orders_detail.id_produk FROM orders_detail WHERE id_transaksi IN(SELECT MAX(id_transaksi) from data_transaksi)) AND data_transaksi.id_transaksi=(SELECT orders_detail.id_transaksi FROM orders_detail WHERE id_transaksi IN(SELECT MAX(id_transaksi) from data_transaksi))");
}
?>
