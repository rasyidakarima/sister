<?php
if(isset($_GET['open'])) {
	switch ($_GET['open']){	
		default			: if(!file_exists ("barang.php")) die ("File barang tidak ada"); 
								include "barang.php"; break;

		case '' 		: if(!file_exists ("barang.php")) die ("File barang tidak ada"); 
								include "barang.php"; break;
	
		case 'Panduan'   :if(!file_exists ("info_panduan.php")) die ("File info_panduan.php tidak ada, Anda dapat membuat file ini dari dreamweaver"); 
								include "info_panduan.php";  break;
	
																			 
		case 'Profil'   :if(!file_exists ("info_profil.php"))  die ("File info_profil.php tidak ada, Anda dapat membuat file ini dari dreamweaver"); 
								include "info_profil.php"; break;
								
		case 'Home'   :if(!file_exists ("info_home.php"))  die ("File info_home.php tidak ada, Anda dapat membuat file ini dari dreamweaver"); 
								include "info_home.php"; break;
								
		case 'Alamat'   :if(!file_exists ("alamatkita.htm")) die ("File alamat kita tidak ada"); 
								include "alamatkita.htm";  break;
									
		case 'Login-Validasi' 	: if(!file_exists ("login_validasi.php"))  die ("File login tidak ada"); 
								include "login_validasi.php"; break;			

		case 'Bukutamu' 	:if(!file_exists ("buku_tamu.php")) die ("File buku tamu tidak ada"); 
								include "buku_tamu.php"; break;
								
		case 'Bukutamu-Tampil' :if(!file_exists ("buku_tamu_tampil.php")) die ("File buku tamu tampil tidak ada"); 
								include "buku_tamu_tampil.php"; break;
								
		case 'Pelanggan-Baru' 	:if(!file_exists ("pelanggan_baru.php")) die ("File pelanggan baru tidak ada"); 
								include "pelanggan_baru.php";  break;
								
		case 'Pelanggan-Ubah' :if(!file_exists ("pelanggan_ubah.php")) die ("File pelanggan ubah tidak ada"); 
								include "pelanggan_ubah.php";  break;
		case 'Pelanggan-Lihat' :if(!file_exists ("pelanggan_lihat.php")) die ("File pelanggan lihat tidak ada"); 
								include "pelanggan_lihat.php";  break;
							
								
		case 'Barang' 		: if(!file_exists ("barang.php")) die ("File barang tidak ada"); 
								include "barang.php"; break;
																
		case 'Barang-Lihat' :if(!file_exists ("barang_lihat.php")) die ("File barang tidak ada"); 
								include "barang_lihat.php"; break;

		case 'Barang-Pencarian' :if(!file_exists ("barang_pencarian.php")) die ("File cari barang tidak ada"); 
								include "barang_pencarian.php"; break;
								
		case 'Barang-Beli' :if(!file_exists ("barang_beli.php"))  die ("File beli pilih sim tidak ada"); 
								include "barang_beli.php"; break;

		case 'Barang-Kategori' :if(!file_exists ("barang_kategori.php")) die ("File program tidak ada"); 
								include "barang_kategori.php"; break;
								
		case 'Keranjang-Belanja' :if(!file_exists ("keranjang_belanja.php")) die ("File beli keranjang tidak ada"); 
								include "keranjang_belanja.php"; break;
								
		case 'Transaksi-Proses' :if(!file_exists ("transaksi_proses.php"))  die ("Filepenerima tidak ada"); 
								include "transaksi_proses.php";  break;
																
		case 'Transaksi-Tampil' :if(!file_exists ("transaksi_tampil.php"))  die ("File daftar transaksi tidak ada"); 
								include "transaksi_tampil.php"; break;
								
		case 'Transaksi-Lihat' :if(!file_exists ("transaksi_lihat.php")) die ("File daftar detail transaksi tidak ada"); 
								include "transaksi_lihat.php"; break;
								
		case 'Konfirmasi' :if(!file_exists ("konfirmasi.php")) 
							   die ("File konfirmasi transaksi tidak ada"); 
								include "konfirmasi.php"; 
								break;
		case 'Konfirmasi-Save' :if(!file_exists ("konfirmasi_sim.php")) 
							   die ("File konfirmasi transaksi simpan tidak ada"); 
								include "konfirmasi_sim.php"; 
								break;
	}
}
else {
	if(!file_exists ("barang.php")) die ("File barang tidak ada"); 
		include "barang.php"; 
}
?>