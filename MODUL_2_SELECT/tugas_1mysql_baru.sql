-- membuat database
CREATE DATABASE tiket_konser_online;
USE tiket_konser_online;
-- menggunakan database 'tiket_konser_online'
USE tiket_konser_online;

-- membuat tabel dalam database 'tiket_konser_online'
CREATE TABLE customer (
	customer_id varchar(25),
    nama_lengkap varchar(50),
    email varchar(75),
    no_telepon varchar(15));
    DESCRIBE customer;
    
CREATE TABLE tiket (
	id_tiket varchar(10),
	nama_kategori varchar(10),
    harga int);
    
CREATE TABLE transaksi_jualbeli (
    tgl_beli DATETIME,
    id_tiket VARCHAR(10),
    customer_id VARCHAR(25),
    nama_kategori VARCHAR(10),
    qty INT,
    metode_pembayaran VARCHAR(50),
    total_harga INT);
     
    
-- Mengupdate primary key tabel
ALTER TABLE customer
ADD PRIMARY KEY (customer_id);

ALTER TABLE tiket
ADD PRIMARY KEY (id_tiket);

ALTER TABLE transaksi_jualbeli
ADD PRIMARY KEY (id_transaksi);
    
-- mengupdate foreign key tabel transaksi_jualbeli
ALTER TABLE transaksi_jualbeli
ADD CONSTRAINT FK_customerTransaksi
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE transaksi_jualbeli
ADD CONSTRAINT FK_tiketTransaksi
FOREIGN KEY (id_tiket) REFERENCES tiket(id_tiket);

-- mengisi data pada tabel customer
INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000022', 'Customer 1', 'customer001@gmail.com', '082120654772');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000011', 'Customer 2', 'customer102@gmail.com', '081000345098');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000033', 'Customer 3', 'customer203@gmail.com', '083443675090');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000044', 'Customer 4', 'customer114@gmail.com', '089123098001');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('00000000055', 'Customer 5', 'customer225@gmail.com', '085981222657');

-- mengisi data pada tabel tiket
INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('0099664300', 'Regular', '1500000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('0077889200', 'Platinum', '2750000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('0011457700', 'VIP', '3500000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('0045728800', 'kategori4', '40000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('0034522100', 'kategori5', '35000');

SELECT * FROM tiket;


-- membuat data customer
INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES	('01', 'Jaya', 'jaya@gmail.com','08180578111'),
		('02', 'Jono', 'jono@gmail.com','08180578178'),
        ('03', 'Aji', 'aji@gmail.com','08417768866'),
        ('04', 'Ujang', 'ujang@gmail.com','08177482868'),
        ('05', 'Jana', 'jana@gmail.com','0892378678');

        
-- membuat data customer
INSERT INTO transaksi_jualbeli (id_transaksi, id_tiket, customer_id, nama_kategori, qty, tgl_beli, metode_pembayaran, total_harga)
VALUES	('transaksi21', '0011457700', '01','VIP', '1', '2023-04-10', 'M-BANKING', '3500000'),
		('transaks31', '0077889200', '02','REGULER','2', '2023-04-11', 'E-WALLET', '1500000'),
        ('transak41', '0099664300', '03','VIP','3', '2023-04-13', 'DANA', '3500000'),
        ('trans51', '0045728800', '04','PLATINUM','4', '2023-04-14', 'BRIMO', '2750000'),
        ('tra61', '0034522100', '05','PLATINUM','5', '2023-04-15', 'DANA', '2750000');
SELECT *FROM transaksi_jualbeli;
-- mengakses isi data pada tabel
SELECT * FROM customer;	

-- membuat 10 query SELECT dari database yang dibuat
-- 1 mengambil kolom nama_lengkap pada tabel customer 
SELECT nama_lengkap FROM customer;

-- 2 mengambil lebih dari 1 kolom (nama_kategori dan harga) pada tabel tiket
SELECT nama_kategori, harga FROM tiket;

-- 3 mengambil seluruh kolom pada tabel customer
SELECT * FROM customer;

-- 4 menggunakan PREFIX nama tabel untuk kolom email pada tabel customer  
SELECT customer.email FROM customer; 

-- 5 menggunakan nama database dan tabel sebagai PREFIX untuk kolom id_tiket
SELECT tiket_konser_online.transaksi_jualbeli.id_tiket FROM transaksi_jualbeli;

-- 6 menggunakan nama database dan tabel PREFIX untuk kolom nama_kategori,harga
SELECT tiket_konser_online.tiket.nama_kategori, harga FROM tiket;

-- 7 mengganti sementara nama kolom id_transaksi dengan ALIAS pada tabel transaksi_jualbeli
SELECT id_transaksi AS ID FROM transaksi_jualbeli;

-- 8 mengganti sementara nama kolom nama_lengkap dan email dengan ALIAS pada tabel customer
SELECT nama_lengkap AS NL, email AS AZ FROM customer;

-- 9 mengkombinasikan PREFIX dan ALIAS pada kolom id_tiket pada tabel tiket
SELECT tiket.id_tiket AS TKT FROM tiket;

-- 10 mengkombinasikan PREFIX dan ALIAS dari database pada tabel transaksi_jualbeli untuk kolom tgl_beli, metode_pembayaran
SELECT tiket_konser_online.transaksi_jualbeli.tgl_beli AS TGL, metode_pembayaran AS MP FROM transaksi_jualbeli;