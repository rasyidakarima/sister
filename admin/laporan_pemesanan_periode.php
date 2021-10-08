<?php
include_once "../library/inc.sesadmin.php";   // Validasi halaman harus Login
include_once "../library/inc.connection.php"; // Membuka koneksi
include_once "../library/inc.library.php";    // Membuka librari peringah fungsi

// Mengenalkan variabel teks
$SqlPeriode = ""; 
$awalTgl	= ""; 
$akhirTgl	= ""; 
$tglAwal	= ""; 
$tglAkhir	= "";

# Membuat sub Query dengan filter Periode data
if(isset($_POST['btnTampil'])) {
	// Membaca form dan memberi nilai tanggal sekarang
	$tglAwal 	= isset($_POST['txtTglAwal']) ? $_POST['txtTglAwal'] : "01-".date('m-Y');
	$tglAkhir 	= isset($_POST['txtTglAkhir']) ? $_POST['txtTglAkhir'] : date('d-m-Y');
	
	// SQL Jika tombol Tampil diklik
	$SqlPeriode = " tgl_pemesanan BETWEEN '".InggrisTgl($tglAwal)."' AND '".InggrisTgl($tglAkhir)."'";
}
else {
	// Tanggal standar
	$awalTgl 	= "01-".date('m-Y');
	$akhirTgl 	= date('d-m-Y'); 

	// SQL Jika tidak belum ada tombol diklik
	$SqlPeriode = " tgl_pemesanan BETWEEN '".InggrisTgl($awalTgl)."' AND '".InggrisTgl($akhirTgl)."'";
}
?>
<h2><b><font color="#FF0066">LAPORAN PEMESANAN MASUK</font></b></h2>
<form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" name="form1" target="_self">
  <table width="550" border="0"  class="table-list">
    <tr>
      <td colspan="3" bgcolor="#CCCCCC"><font color="#FF0066"><b>FILTER DATA </b></font></td>
    </tr>
    <tr>
      <td width="55"><font color="#FF0066"><b>Periode </b></font></td>
      <td width="5"><font color="#FF0066"><b>:</b></font></td>
      <td width="426">
	  <input name="txtTglAwal" type="text" class="tcal" value="<?php echo $awalTgl; ?>" size="20" /> 
        s/d 
      <input name="txtTglAkhir" type="text" class="tcal" value="<?php echo $akhirTgl; ?>" size="20" />
      <input name="btnTampil" type="submit" value=" Tampilkan " /></td>
    </tr>
  </table>
</form>

<font color="#FF0066">Daftar transaksi periode tanggal pesan </font><b><?php echo $tglAwal; ?></b><font color="#FF0066"> s/d </font><b><?php echo $tglAkhir; ?></b><br /><br />

<table width="800" border="0" cellpadding="2" cellspacing="1" class="table-list" >
  <tr>
    <th width="4%" align="center" bgcolor="#CCCCCC"><font color="#FF0066"><b>No</b></font></th>
    <th width="9%" bgcolor="#CCCCCC"><font color="#FF0066"><b>Tanggal</b></font></th>
     <th width="11%" bgcolor="#CCCCCC"><font color="#FF0066"><b>Kode Plg </b></font></th>
   <th width="32%" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Nama Pelanggan </strong></font></th>
    <th width="13%" align="right" bgcolor="#CCCCCC"><font color="#FF0066">Total Barang </font></th>
    <th width="17%" align="right" bgcolor="#CCCCCC"><font color="#FF0066"><b>Total  Bayar (Rp) </b></font></th>
    <th width="8%" align="right" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Status </strong></font></th>
    <td align="center" bgcolor="#CCCCCC"><font color="#FF0066"><b>Tools</b></font></td>
  </tr>
  <?php
  # Mengenalkan variabel angka
  $totalBayar = 0;
  $totalBiayaKirim	= 0;
  $unikTransfer = 0;
  
  
  # Menampilkan daftar transaksi
  $mySql = "SELECT pemesanan.*, pelanggan.nm_pelanggan, provinsi.biaya_kirim
  			  FROM pelanggan, pemesanan, provinsi
			  WHERE pelanggan.kd_pelanggan=pemesanan.kd_pelanggan AND pemesanan.kd_provinsi=provinsi.kd_provinsi
			  AND $SqlPeriode ORDER BY no_pemesanan DESC";
  $myQry = mysql_query($mySql, $koneksidb) or die ("Gagal query".mysql_error());
  $nomor = 0;
  while ($myData =mysql_fetch_array($myQry)) {
	  $nomor++;
	  $Kode = $myData['no_pemesanan']; // Membaca no pemesanan
	  
	  # SUB SKRIP & SQL
	  
	  // ambil 3 digit no HP
	  $digitHp 	= substr($myData['no_telepon'],-3); 
	  
	  // Sub SQL menghitung total harga, dan total barang yang dipesan
	  $my2Sql	= "SELECT SUM(harga * jumlah) As total_harga,
					SUM(jumlah) As total_barang 
					FROM pemesanan_item WHERE no_pemesanan='$Kode'";
	  $my2Qry = mysql_query($my2Sql, $koneksidb) or die ("Gagal query".mysql_error());
	  $my2Data= mysql_fetch_array($my2Qry);
	
		// Menghitung Total Bayar dari harga setelah diskon, dikali jumlah barang
		$totalBiayaKirim= $myData['biaya_kirim'] * $my2Data['total_barang'];
		$totalBayar 	= $my2Data['total_harga'] + $totalBiayaKirim;
		$unikTransfer 	= substr($totalBayar,0,-3).$digitHp;
  ?>
  <tr>
    <td align="center"><?php echo $nomor; ?></td>
    <td><?php echo IndonesiaTgl($myData['tgl_pemesanan']); ?></td>
    <td><?php echo $myData['kd_pelanggan']; ?></td>
    <td><?php echo $myData['nm_pelanggan']; ?></td>
    <td align="right"><?php echo $my2Data['total_barang']; ?></td>
    <td align="right">Rp. <b><?php echo format_angka($unikTransfer); ?></b></td>
    <td align="right" bgcolor="#FFFFCC"><?php echo $myData['status_bayar']; ?></td>
    <td width="6%" align="center"><a href="pemesanan_lihat.php?Kode=<?php echo $Kode; ?>" target="_blank" class='button white small'>Lihat </a> </td>
  </tr>
  <?php } ?>
</table>
