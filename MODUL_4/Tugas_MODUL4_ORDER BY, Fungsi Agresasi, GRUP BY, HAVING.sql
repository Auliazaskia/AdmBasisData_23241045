-- Nama		: Aulia Zaskia
-- NIM		: 23241045
-- Kelas	: PTI 4/B 
-- Modul	: ORDER BY, Fungsi Agresasi, GRUP BY, HAVING

-- menggunakan database
USE pti_mart;

SELECT * FROM tr_penjualan;

-- TUGAS (5) MODUL (4) PART (2)
-- melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah di atas nilai 4
SELECT nama_produk, SUM(jumlah) AS total_terjual
FROM penjualan
GROUP BY nama_produk
HAVING SUM(jumlah) > 4;

-- melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk sama dengan 9
SELECT nama_produk, SUM(qty) AS jumlah_produk 
FROM tr_penjualan GROUP BY nama_produk HAVING SUM(qty) = 9;

-- melihat daftar kelompok nama produk dan total nilai penjualan 
-- (harga dikalikan jumlah dikurangi diskon) dengan dan urutan berdasarkan nilai penjualan terbesar
SELECT nama_produk, SUM((harga * qty) - diskon_persen), 
qty AS total_penjualan FROM tr_penjualan 
GROUP BY nama_produk ORDER BY total_penjualan DESC;


