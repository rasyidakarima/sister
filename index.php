<?php
session_start();
include_once "library/inc.connection.php";
include_once "library/inc.library.php";
?>
<html>
<head>
<title>TOKO HAPPY - Toko Boneka &amp; Aksesoris Online Lengkap dan Terbaru</title>
<meta name="robots" content="index, follow">

<meta name="description" content="TOKO HAPPY adalah Toko Boneka Online Lengkap yang menjual aneka macam Boneka Lucu dengan harga murah, koleksi selalu baru dan dijamin harganya murah. Tersedia boneka Hello Kitty, boneka Binatang, boneka Teddy Bear, boneka Bantal, boneka Big Hero, boneka Doraemon, boneka Gantungan Kunci, boneka Keroppi, boneka Stitch, boneka Spongebob, boneka Sandal, boneka Matras, boneka Minions dan lainnya">

<meta name="keywords" content="toko boneka online, boneka Hello Kitty, boneka Binatang, boneka Teddy Bear, boneka Bantal, boneka Big Hero, boneka Doraemon, boneka Gantungan Kunci, boneka Keroppi, boneka Stitch, boneka Spongebob, boneka Sandal, boneka Matras, boneka Minions dan lainnya">

<link href="style/styles_user.css" rel="stylesheet" type="text/css">
<link href="style/button.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="js.popupWindow.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #FF6666;
	background-image: url(images/background.png);
}
-->
</style></head>
<body topmargin="3">
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFCC" class="border">
  <tr bgcolor="#FFFFFF">
    <td height="24" align="right" bgcolor="#F5F5F5"><?php include "inc.login_status.php"; ?></td>
  </tr>
  <tr>
    <td height="43" bgcolor="#FFFFFF"><a href="?open=Home"><img src="images/header.png" alt="TOKO BONEKA ONLINE" width="800" border="0"></a></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#FFFFFF" class="header"> 
    <td width="261" height="25" valign="middle" bgcolor="#F5F5F5"> </td>
    <td width="98" align="center" bgcolor="#F5F5F5"><a href="?open=Home" target="_self"><font color="#FF0066"><b>HOME</b></font></a></td>    
    <td width="98" align="center" bgcolor="#F5F5F5"><a href="?open=Profil" target="_self"><font color="#FF0066"><b>PROFIL</b></font></a></td>
    <td width="140" align="center" bgcolor="#F5F5F5"><a href="?open=Barang" target="_self"><font color="#FF0066"><b>KOLEKSI BARANG</b></font></a></td>
    <td width="101" align="center" bgcolor="#F5F5F5"><a href="?open=Panduan" target="_self"><font color="#FF0066"><b>PANDUAN</b></font></a></td>
    <td width="101" align="center" bgcolor="#F5F5F5"><a href="?open=Konfirmasi" target="_self"><font color="#FF0066"><b>KONFIRMASI</b></font></a></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="22" colspan="3" align="right" bgcolor="#FFCCCC" class="head"> 
	<form action="?open=Barang-Pencarian" method="post" name="form1">
	<strong><font color="#FF0066">Cari Barang</font></strong> 
	<input name="txtKeyword" type="text" size="30" maxlength="100">
	<input type="submit" name="btnCari" value=" Cari "> 
	</form>
</td>
  </tr>
  <tr> 
    <td width="182" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="5" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="611" align="right" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr> 
    <td align="center" valign="top" bgcolor="#FFFFFF"  class="utama">
	<table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td width="167" height="22" align="center" bgcolor="#FFCCCC" class="head"><font color="#FF0066"><b>KONTAK YM </b></font></td>
      </tr>
      <tr>
        <td height="22" align="center" bgcolor="#FFFFFF" class="HEAD">
		<a href="ymsgr:sendIM?bonekatya@yahoo.com"><img border=0 src="http://opi.yahoo.com/online?u=bonekatya@yahoo.com&amp;m=g&amp;t=2" /></a></td>
      </tr>
    </table> <?php include "login.php"; ?>
	<table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td align="center" valign="top" bgcolor="#FFFFFF"></td>
      </tr>
      <tr align="center">
        <td width="167" height="22" bgcolor="#FFCCCC" class="head"><font color="#FF0066"><b>KATEGORI</b></font></td>
      </tr>
      <tr>
        <td height="18" align="center" valign="top" bgcolor="#FFFFFF">
		<table width="98%" border="0" align="center" cellpadding="4" cellspacing="0">
         <?php
		  $mySql = "SELECT * FROM kategori ORDER BY nm_kategori";
		  $myQry = mysql_query($mySql, $koneksidb) or die ("Query salah : ".mysql_error());
		  while($myData = mysql_fetch_array($myQry)) {
		  	$Kode = $myData['kd_kategori'];
		  ?>
            <tr>
              <td width="8%"><img src="images/ikon.png" width="9" height="9"></td>
              <td width="92%"><b> <?php echo "<a href=?open=Barang-Kategori&Kode=$Kode>$myData[nm_kategori]</a>"; ?> </b></td>
            </tr>
            <?php
		  }
		  ?>
        </table></td>
      </tr>
      
      <tr>
        <td height="18" align="center" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
    <td align="center" valign="top" bgcolor="#FFFFFF" class="utama">
	<?php include "buka_file.php"; ?></td>
  </tr>
  <tr> 
    <td height="4">&nbsp;</td>
    <td height="4">&nbsp;</td>
    <td height="4">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="3" align="center" bgcolor="#F5F5F5" class="FOOT">&nbsp;</td>
  </tr>
</table>
</body>
</html>
