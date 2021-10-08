<?php
# JIKA DIKENALI YANG LOGIN ADMIN
if(isset($_SESSION['SES_ADMIN'])){
?>
<style type="text/css">
<!--
.style1 {color: red}
-->
</style>

	<ul>
	<li><a href='?open' title='Halaman Utama' class="style1"><font color="#FF0033"> Home </font></a></li>
	<li><a href='?open=Password-Admin' title='Password Admin'><font color="#FF0033"> Password Admin </font></a></li>
	<li><a href='?open=Provinsi-Data' title='Provinsi' target="_self"><font color="#FF0033">Data Provinsi</font></a></li>
	<li><a href='?open=Kategori-Data' title='Kategori' target="_self"><font color="#FF0033">Data Kategori</font></a></li>
	<li><a href='?open=Barang-Data' title='Barang' target="_self"><font color="#FF0033">Data Barang</font></a></li>
	<li><a href='?open=Pelanggan-Data' title='Pelanggan' target="_self"><font color="#FF0033">Data Pelanggan</font></a></li>
	<li><a href='?open=Pemesanan-Barang' title='Pemesanan Barang' target="_self"><font color="#FF0033">Pemesanan Barang</font></a></li>
	<li><a href='?open=Konfirmasi-Transfer' title='Konfirmasi Transfer' target="_self"><font color="#FF0033">Konfirmasi Transfer</font></a></li>
	<li><a href='?open=Laporan' title='Laporan' target="_self"><font color="#FF0033">Laporan</font></a></li>
	<li><a href='?open=Logout' title='Logout (Exit)'><font color="#FF0033">Logout</font></a></li>
	</ul>
<?php
} 
else {
// JIKA BELUM ADA YANG LOGIN
?>
	<ul>
	<li><a href='?open=Login' title='Login' target="_self">Login</a></li>
	</ul>
<?php } ?>