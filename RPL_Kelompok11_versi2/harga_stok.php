<?php
    $harga     = format_rupiah($r[harga]);

    $hargatetap  = "<span class='price'> <br /></span>&nbsp;
                    <span style=\"color:#ff6600;font-size:14px;\"> Rp. <b>$harga,-</b></span>";

      $divharga=$hargatetap;


    // tombol stok habis kalau stoknya 0
    $stok        = $r['stok'];
    $tombolbeli  = "<a class='prod_cart' href=\"aksi.php?module=keranjang&act=tambah&id=$r[id_produk]\">beli</a>";
    $tombolhabis = "<div class='prod_cart_habis'>habis</div>";
    if ($stok!=0){
      $tombol=$tombolbeli;
    }else{
      $tombol=$tombolhabis;
    }
?>
