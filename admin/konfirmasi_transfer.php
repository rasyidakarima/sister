<?php
include_once "../library/inc.sesadmin.php";   // Validasi, mengakses halaman harus Login
include_once "../library/inc.connection.php"; // Membuka koneksi
include_once "../library/inc.library.php";    // Membuka librari peringah fungsi

# UNTUK PAGING (PEMBAGIAN HALAMAN)
$baris 	= 50;
$hal 	= isset($_GET['hal']) ? $_GET['hal'] : 0;
$pageSql = "SELECT * FROM konfirmasi";
$pageQry = mysql_query($pageSql, $koneksidb) or die ("error paging: ".mysql_error());
$jumlah	 = mysql_num_rows($pageQry);
$maksData= ceil($jumlah/$baris);
?>
<h1><b><font color="#FF0066">KONFIRMASI TRANSFER</font></b></h1>
<table class="table-list" width="800" border="0" cellspacing="1" cellpadding="2">
  <tr>
    <th width="26" align="center" bgcolor="#CCCCCC"><font color="#FF0066">No</font></th>
    <th width="62" align="center" bgcolor="#CCCCCC"><font color="#FF0066">Tanggal</font></th>
    <th width="80" bgcolor="#CCCCCC"><font color="#FF0066">No. Pesan </font></th>
    <th width="164" bgcolor="#CCCCCC"><font color="#FF0066">Nama Pelanggan </font></th>    
    <th width="119" align="right" bgcolor="#CCCCCC"><font color="#FF0066"><font color="#FF0066">Transfer (Rp)</font></th>    
    <th width="274" bgcolor="#CCCCCC"><font color="#FF0066">Keterangan</font></th></th>    
    <td align="center" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Tools</strong></font></td>  
  </tr>
	<?php
	// Menampilkan data Konfirmasi
	$mySql = "SELECT * FROM konfirmasi ORDER BY konfirmasi.id DESC LIMIT $hal, $baris";
	$myQry = mysql_query($mySql, $koneksidb)  or die ("Query salah : ".mysql_error());
	$nomor = 0; 
	while ($myData = mysql_fetch_array($myQry)) {
		$nomor++;
		$Kode = $myData['id'];
	?>
  <tr>
    <td><?php echo $nomor; ?></td> 
    <td><?php echo IndonesiaTgl($myData['tanggal']); ?></td>
    <td><?php echo $myData['no_pemesanan']; ?></td>
    <td><?php echo $myData['nm_pelanggan']; ?></td>
    <td align="right"><?php echo format_angka($myData['jumlah_transfer']); ?></td>
    <td><?php echo $myData['keterangan']; ?></td>
    <td width="39" align="center"><a href="?open=Konfirmasi-Delete&Kode=<?php echo $Kode; ?>" target="_self" alt="Delete Data" onclick="return confirm('ANDA YAKIN AKAN MENGHAPUS DATA KONFIRMASI INI ... ?')">Delete</a></td>
  </tr>
  <?php } ?>
  <tr>
    <td colspan="4" bgcolor="#CCCCCC"><b><font color="#FF0066">Jumlah Data :</font></b> <?php echo $jumlah; ?> </td>
    <td colspan="3" align="right" bgcolor="#CCCCCC"><b><font color="#FF0066">Halaman ke :</font></b>
      <?php
	for ($h = 1; $h <= $maksData; $h++) {
		$list[$h] = $baris * $h - $baris;
		echo " <a href='?open=Konfirmasi-Transfer&hal=$list[$h]'>$h</a> ";
	}
	?></td>
  </tr>
</table>
