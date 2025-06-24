-- Nama		: Aulia Zaskia
-- Nim		: 23241045
-- Kelas	: PTI 4/B 
-- Modul	: Modul 5 : JOIN, UNION, LIMIT

-- Menggunakan Database 
USE pti_mart;

-- JOIN
-- Menggabungkan dua buah tabel berdasarkan kolom yang sama

-- Praktek 1 
-- ambil nama pelanggan yang pernah bertransaksi
-- artinya ambil kolom kode_pelanggan, nama_pelanggan, dan qty dari 
-- penggabungan tabel penjualan dan tabel pelanggan
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan AS tp
JOIN ms_pelanggan AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 2
-- Menggabungkan 2 tabel tanpa memperhatikan relasional KEYS
-- Ambil nama pelanggan yang pernah bertransaksi beserta qty nya
-- Menggabungkan tabel penjualan dan tabel pelanggan tanpa 
-- memperhatikan kolom yang menjadi Primary Key
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan AS tp
JOIN ms_pelanggan AS mp
ON TRUE;

-- JOIN atau INNER JOIN 
-- INNER JOIN yang mengambil data dari 2 sisi tabel yang berhungan 
-- Praktek 3
-- Ambil kode pelannggan, nama pelanggan, nama produk, qty
-- dari hasil join dari tabel penjualan dan tabel pelanggan 
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan AS tp
INNER JOIN ms_pelanggan AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;
 
-- LATIHAN MANDIRI 
-- Buatlah join untuk ketiga table yang terdapat pada dqlabmartbasic dengan INNER JOIN.
-- Buatlah join untuk ketiga table dengan urutan ms_pelanggan, tr_penjualan, ms_produk
-- yang terdapat pada dqlabmartbasic dengan LEFT JOIN, kemudian filter untuk qty yang 
-- tidak bernilai NULL dengan operator IS NOT NULL.
-- Buatlah JOIN untuk ketiga table dengan urutan ms_pelanggan, tr_penjualan, dan ms_produk
-- yang terdapat pada dqlabmartbasic dengan INNER JOIN, kumdian tampilkan grouping untuk
-- kolom kategori produk dan penjumlahan qty.
-- Latihan khusus : Cobalah lakukan JOIN ms_produk dengan table ms_produk juga dengan kolom 
-- relationship kode_produk (benar, anda tidak salah baca) - ini kita lakukan JOIN dengan 
-- table sendiri yang memang bisa dilakukan, jangan lupa untuk menggunalan alias (AS).
 





-- catatan penting : dengan penggunaan JOIN, maka bisa dikatakan perintah SQL sudah mulai menjadi kompleks.
-- 


