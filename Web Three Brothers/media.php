<?php
  error_reporting(0);
  session_start();
?>
<!DOCTYPE html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Three Brothers Clothing Company</title>
	<link rel="stylesheet" type="text/css" href="template/css/style.css"  media="screen" />
	<link rel="stylesheet" type="text/css" href="template/css/common.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="template/css/button.css" media="screen" />
	<script src="template/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="template/js/slides.min.jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			$('.slides').slides({
				preload: true,
				generatePagination: true,
				play:3000
			});
		});
	</script>
</head>
	<body>
<!--Wrapper-->
<div id="wrapper">
      <!--Page-->
      <div class="page shadow">
    <!--Header-->
    <div id="header">
          <div class="primary-section">
        <div class="logo"><img height = "75px" width = "220px" src="template/images/logo.jpeg" /></div>
        <div class="header-aside">
          <ul>
		<?php
		if ($_SESSION[email]=="") {
			echo "
			<li class='border'><a href='media.php?module=login' class='log'> login </a></li>
            <li><a href='media.php?module=register' class='user'>register</a></li>
			";
		}
		else {
			echo "<li class='border'><a href='logout.php' class='log'> Logout </a></li>";
		}
		?>
          </ul>
            </div>
      </div>
          <div class="nav-section">
        <ul class="navigation">
              <li class="home"><a href="media.php?module=home" class="home">Home </a></li>
              <li><a href="media.php?module=daftar_barang">Daftar Barang </a></li>
              <li><a href="media.php?module=keranjangbelanja">Keranjang Belanja </a></li>
            </ul>
        </div>
    <!--Header-->
    <!--Content-->
    <div id="content">

<?php
  if ($_GET[module]!='home') {
    if ($_SESSION[email] !="") {
    echo "<div class='sidebar'>
          <div class='latest-product'>
                <h2>Your Menu</h2>
                <ul class='info'>
          <img src='template/images/profil.png' />
          <li><a href='media.php?module=profilKustomer'>My Profil</a></li>
          <li><a href='media.php?module=keranjangbelanja'>Shopping Cart<img src='template/images/cart.gif' /></a></li>
          ";
         echo "<div style='color:#E1473D;border:1px solid #E78686;padding:10px;background:#FFE1E1;'>";
          include "item.php";
         echo "</div>";

         echo "<br>";

         echo "<h2>Kategori Produk</h2>
         <ul class='info'>";

         //database

         echo "</div>";
    echo "

          <li><a href='logout.php'>Logout</a></li>
            </ul>
               </div>
      ";
    }else{
      echo "<div class='sidebar'>
            <div class='latest-product'>";

           echo "<h2>Kategori Produk</h2>
           <ul class='info'>";

           //database

            echo "</div>";
           echo "</div>";
    }

echo'<div class="content-right">';
include "tengah.php";
echo'</div>';
}else{
  if ($_SESSION[email] !="") {

    echo "<div class='sidebar'>
          <div class='latest-product'>
                <h2>Your Menu</h2>
                <ul class='info'>
          <img src='template/images/profil.png' />
          <li><a href='media.php?module=profilKustomer'>My Profil</a></li>
          <li><a href='media.php?module=keranjangbelanja'>Shopping Cart<img src='template/images/cart.gif' /></a></li>
          ";
         echo "<div style='color:#E1473D;border:1px solid #E78686;padding:10px;background:#FFE1E1;'>";
          include "item.php";
         echo "</div>";

         echo "<br>";

         echo "<h2>Kategori Produk</h2>
         <ul class='info'>";

        // database
         echo "</div>";

    echo "
          <li><a href='logout.php'>Logout</a></li>
            </ul>
               </div>
      ";
    echo "<div class='content-right'>";
    include "tengah.php";
    echo "</div>";
  }else{
    include "tengah.php";
  }

}


?>
</div>


     </div>
    <!-- Content-->
  </div>
      <!--Footer-->
      <div id="footer">
    <div class="footer-top">

    <div class="page">
          <div class="footer-bottom">
              <center><strong><p>Three Brothers Clothing Company</p></strong></center>
        </div>
  </div>
      <!--Footer-->
    </div>
<!--Wrapper-->
</body>
</html>
