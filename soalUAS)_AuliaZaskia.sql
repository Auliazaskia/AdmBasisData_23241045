-- NAMA	:	 AULIA ZASKIA
-- NIM		: 23241045
-- KELAS	: PTI 4/B
-- MK		: ADMINISTRASI BASIS DATA



-- mata kuiah : administasi basis data
-- menggunakan database
USE pti_mart;
-- soal 1 :
-- munculkan kode pelanggan, nama produk, jumlah, harga, dan total dari semua produk
-- yang pernah di transaksikan, namun output yang diminta adalah total harga minimal 200.000 dan
-- di urutkan berdasarkan total harga

SELECT kode_pelanggan, nama_produk,jumlah, harga FROM tr_penjualan group by kode_pelanggan,
 nama_produk, harga HAVING SUM(jumlah*nama_produk) >= 200.000 order by total ASC;


SELECT kode_pelanggan, nama_produk, qty, harga, qty * harga AS total
FROM tr_penjualan HAVING qty * harga >= 200000 ORDER BY total;


-- soal 1 (benar dan sudah selesai/sudah di ACC pada saat(UAS))
SELECT kode_pelanggan, nama_produk, qty, harga, (qty * harga) AS total
FROM tr_penjualan GROUP BY  kode_pelanggan, kode_produk, qty, harga
HAVING (qty * harga) >= 200000
ORDER BY total ASC;

-- soal 2 (tidak selesai/tidak sempat di ACC pada saat (UAS))
-- tampilkan nama pelanggan dan nilai transaksinya dengan nilai transaksi terbesar
SELECT ms.nama_pelanggan, MAX(tr.qty * tr.harga) AS nilai_transaksi 
 FROM tr_penjualan AS tr JOIN ms_pelanggan AS ms ON TRUE;


-- saol 3 (tidak selesai/tidak sempat di ACC pada saat (UAS))
-- tampilan nama_produk, kategori, dan harga dari produk yang tidak pernah terjual
SELECT p.nama_produk, p.kategori_produk, p.harga
FROM ms_produk p
LEFT JOIN tr_penjualan t ON p.kode_produk = t.kode_produk
WHERE t.kode_produk IS NULL;
