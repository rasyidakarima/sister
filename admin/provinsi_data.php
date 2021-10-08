<table width="800" border="0" cellpadding="2" cellspacing="1" class="table-border">
  <tr>
    <td colspan="2" align="right"><h1><b><font color="#FF0066">DATA PROVINSI</font></b></h1></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="right"><a href="?open=Provinsi-Add" target="_self"><img src="../images/btn_add_data.png" border="0" /></a></td>
  </tr>
  
  <tr>
    <td colspan="2">
	<table class="table-list" width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <th width="32" align="center" bgcolor="#CCCCCC"><font color="#FF0066"><strong>No</strong></font></th>
        <th width="490" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Nama Provinsi </strong></font></th>
        <th width="146" align="right" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Biaya Kirim (Rp) </strong></font></th>
        <td colspan="2" align="center" bgcolor="#CCCCCC"><font color="#FF0066"><strong>Tools</strong></font></td>
      </tr>
      <?php
	$mySql = "SELECT * FROM provinsi ORDER BY nm_provinsi ASC";
	$myQry = mysql_query($mySql, $koneksidb)  or die ("Query salah : ".mysql_error());
	$nomor = 0; 
	while ($myData = mysql_fetch_array($myQry)) {
		$nomor++;
		$Kode = $myData['kd_provinsi'];
	?>
      <tr>
        <td align="center"><?php echo $nomor; ?></td>
        <td><?php echo $myData['nm_provinsi']; ?></td>
        <td align="right"><?php echo format_angka($myData['biaya_kirim']); ?></td>
        <td width="50" align="center"><a href="?open=Provinsi-Edit&Kode=<?php echo $Kode; ?>" target="_self" alt="Edit Data">Edit</a></td>
        <td width="50" align="center"><a href="?open=Provinsi-Delete&Kode=<?php echo $Kode; ?>" target="_self" alt="Delete Data" onclick="return confirm('ANDA YAKIN INGIN MENGHAPUS DATA PROVINSI INI ... ?')">Delete</a></td>
      </tr>
      <?php } ?>
    </table></td>
  </tr>
</table>
