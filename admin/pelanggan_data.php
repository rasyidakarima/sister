<?php
include_once "../library/inc.sesadmin.php";
include_once "../library/inc.library.php";

# UNTUK PAGING (PEMBAGIAN HALAMAN)
$baris = 50;
$hal = isset($_GET['hal']) ? $_GET['hal'] : 0;
$pageSql = "SELECT * FROM pelanggan";
$pageQry = mysql_query($pageSql, $koneksidb) or die ("error paging: ".mysql_error());
$jumlah	 = mysql_num_rows($pageQry);
$maksData= ceil($jumlah/$baris);

// Membaca data form cari
$dataCari	= isset($_POST['txtCari']) ? $_POST['txtCari'] : '';
?>
<table width="800" border="0" cellpadding="2" cellspacing="1" class="table-border">
  <tr>
    <td colspan="2" align="right"><h1><font color="#FF0066"><b>DATA PELANGGAN </b></font></h1></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="right">
	<form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" name="form1" target="_self">
      <b><font color="#FF0066">Cari Nama :</font></b>
        <input name="txtCari" type="text" value="<?php echo $dataCari; ?>" size="40" maxlength="100" />
      <input name="btnCari" type="submit" value="Cari" />
      </form></td>
  </tr>
  <tr>
    <td colspan="2">
	<table class="table-list" width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <th width="25"><font color="#FF0066">No</font></th>
        <th width="66"><font color="#FF0066">Kode</font></th>
        <th width="301"><font color="#FF0066">Nama Pelanggan</font></th>
        <th width="60"><font color="#FF0066">Kelamin</font></th>
        <th width="143"><font color="#FF0066">No. Telepon</font></th>
        <th width="119"><font color="#FF0066">Username</font></th>
        <td align="center" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Tools</strong></font><b></b></td>
        </tr>
      <?php
	# Jika tombol Cari/Search diklik, maka pencarian dilakukan
	if(isset($_POST['btnCari'])){
		$mySql = "SELECT * FROM pelanggan WHERE nm_pelanggan LIKE '%$dataCari%' ORDER BY kd_pelanggan DESC LIMIT $hal, $baris";
	}
	else {
		$mySql = "SELECT * FROM pelanggan ORDER BY kd_pelanggan DESC LIMIT $hal, $baris";
	} 
	
	// Menjalankan query di atas
	$myQry = mysql_query($mySql, $koneksidb)  or die ("Query salah : ".mysql_error());
	$nomor  = $hal; 
	while ($myData = mysql_fetch_array($myQry)) {
		$nomor++;
		$Kode = $myData['kd_pelanggan'];
	?>
      <tr>
        <td><?php echo $nomor; ?></td>
        <td><?php echo $myData['kd_pelanggan']; ?></td>
        <td><?php echo $myData['nm_pelanggan']; ?></td>
        <td><?php echo $myData['kelamin']; ?></td>
        <td><?php echo $myData['no_telepon']; ?></td>
        <td><?php echo $myData['username']; ?></td>
        <td width="44" align="center"><a href="?open=Pelanggan-Delete&Kode=<?php echo $Kode; ?>" target="_self" alt="Delete Data" onclick="return confirm('ANDA YAKIN AKAN MENGHAPUS DATA PELANGGAN INI ... ?')">Delete</a></td>
      </tr>
      <?php } ?>
    </table></td>
  </tr>
  <tr class="selKecil">
    <td><b><font color="#FF0066">Jumlah Data :</font></b> <?php echo $jumlah; ?> </td>
    <td align="right"><font color="#FF0066"><b>Halaman ke :</b></font> 
	<?php
	for ($h = 1; $h <= $maksData; $h++) {
		$list[$h] = $baris * $h - $baris;
		echo " <a href='?open=Pelanggan-Data&hal=$list[$h]'>$h</a> ";
	}
	?>
	</td>
  </tr>
</table>
