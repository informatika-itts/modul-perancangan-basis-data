# Modul 4: Joining Table

# Daftar Isi

- Inner Join
    - Equi Join
    - Join On
    - Menggabungkan 2 tabel
- Outer Join
    - Left Join
    - Right Join
    - Full Join
- Self Join

# Setup

- silahkan unduh data database pada link berikut :

  https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/source-code-praktikum/praktikum-4/modul4.sql

- Setalah download silahkan buat database bernama `modul 4`.
- kemudian import data database yang telah di download ke dalam database `modul4`

# Joining Table pada MySQL

Joining table adalah proses menggabungkan dua atau lebih tabel berdasarkan nilai yang sesuai dalam kolom yang ditentukan. Ini memungkinkan kita untuk menggabungkan data dari beberapa tabel menjadi satu hasil yang lengkap.

# Inner Join

Inner join merupakan salah satu jenis join yang sering digunakan dalam SQL. Inner join hanya mengembalikan baris yang nilainya sama dari dua atau lebih tabel. Inner join dapat dikatakan “irisan” tabel 1 dengan tabel lain.

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled.png)

Untuk lebih memahami konsep inner join, lihat gambar di bawah ini.

![WhatsApp Image 2023-10-14 at 22.59.59.jpeg](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/WhatsApp_Image_2023-10-14_at_22.59.59.jpeg)

Inner join sendiri dapat diklasifikasikan menjadi bentuk-bentuk berikut.

## 1. Equi Join

`Equi join` adalah jenis join dalam SQL yang mencocokkan baris dari dua tabel berdasarkan nilai-nilai baris yang sama dari suatu kolom. `Equi join` biasanya dilakukan dengan menggunakan operator **`=`** antara dua kolom yang akan digunakan untuk mencocokkan data.

Sintaks:

```sql
SELECT
	select_list
FROM
	t1, t2
WHERE t1.nama_kolom = t2.nama_kolom
```

Contoh:

Tabel `pembeli`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%201.png)

Tabel `pembelian`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%202.png)

Kita ingin menampilkan nama depan pembeli, alamat pembeli, tanggal pembelian, serta id produk yang dibeli

```sql
SELECT
	pb.nama_depan,
	pb.alamat, 
	pl.tanggal_pembelian,
	pl.produk_id
FROM pembeli pb, pembelian pl
WHERE pb.id_pembeli = pl.pembeli_id
```

Hasil:

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%203.png)

## 2. Join On

Pada MySQL, klausa `JOIN ON` digunakan untuk menggabungkan data dari dua tabel **berdasarkan kolom tertentu**. `JOIN ON` berguna untuk menggabungkan baris dari satu tabel dengan baris dari tabel lain berdasarkan nilai yang cocok dalam kolom yang ditentukan.

Sintaks:

```sql
SELECT
	select_list
FROM 
	t1
INNER JOIN 
	t2 
ON t1.nama_kolom = t2.nama_kolom
```

Contoh:

Tabel `pembelian`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%202.png)

Tabel `produk`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%204.png)

Kita ingin menampilkan id pembelian 1-100, judul produk, dan deskripsi produk

```sql
SELECT
	pl.id_pembelian,
	judul_produk,
	deskripsi_produk
FROM
	pembelian pl
INNER JOIN produk pr ON pl.produk_id =  pr.id_produk 
WHERE pl.id_pembelian BETWEEN 1 AND 100
```

Hasil:

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%205.png)

## 3. Menggabungkan Lebih dari 2 Tabel

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%206.png)

Pada penggabungan tabel, kita perlu mencari atribut yang terdapat persamaan antar tabel. Pada contoh visualisasi di atas, terdapat persamaan atribut antara tabel A dan B serta A dan C, jadi untuk menghubungkan ketiga tabel tersebut kita perlu menghubungkan A dan B lalu A dan C.

Sintaks:

```sql
SELECT
	select_list
FROM
	B
INNER JOIN A ON b.nama_kolom = a.nama_kolom
INNER JOIN C ON a.nama_kolom = c.nama_kolom
```

Contoh:
Tabel `pembeli`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%201.png)

Tabel `pembelian`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%202.png)

Tabel `produk`

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%204.png)

Kita ingin menampilkan nama_depan pembeli, judul produk yang dibeli, dan tanggal pembelian.

```sql
SELECT
	nama_depan,
	judul_produk,
	tanggal_pembelian
FROM
	pembeli pb
INNER JOIN pembelian pl ON pb.id_pembeli = pl.pembeli_id
INNER JOIN produk pr ON pr.id_produk = pl.produk_id
```

Hasil:

![Untitled](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Untitled%207.png)

# Outer Join

Outer join adalah operasi penggabungan tabel dalam database yang memungkinkan Anda menggabungkan data dari dua tabel atau lebih berdasarkan kriteria tertentu dan memasukkan baris yang tidak memiliki pasangan dalam tabel kedua ke dalam hasil.

Fungsinya dalam dunia industri atau kehidupan sehari-hari adalah untuk menggabungkan data dari berbagai tabel atau sumber informasi yang berbeda, memungkinkan analisis data yang lebih lengkap. Misalnya, dalam bisnis, outer join dapat digunakan untuk menggabungkan data pelanggan dengan data pesanan, sehingga Anda dapat melihat pelanggan yang belum pernah melakukan pembelian. Ini dapat membantu dalam pengambilan keputusan bisnis, perencanaan persediaan, atau perbaikan pelayanan pelanggan.

Dalam konteks ilmiah, outer join digunakan untuk menggabungkan dan menganalisis data eksperimen dari berbagai sumber yang mungkin memiliki informasi yang tidak lengkap atau tidak selalu terkait.

Dalam esensi, outer join memungkinkan pemrosesan data yang lebih fleksibel dan komprehensif, memungkinkan pengguna untuk melihat data dalam konteks yang lebih luas dan mendapatkan wawasan yang lebih baik.

## 1. Left Outer Join atau Left Join

![https://assets-global.website-files.com/61af164800e38cf1b6c60b55/643e23596c3c1fb7cb76d5cb_2.%20Left%20Join.webp](https://assets-global.website-files.com/61af164800e38cf1b6c60b55/643e23596c3c1fb7cb76d5cb_2.%20Left%20Join.webp)

Left Outer Join atau sering disebut juga Left Join adalah salah satu jenis Outer Join yang digunakan dalam SQL. Left Join menggabungkan dua tabel berdasarkan kolom yang ditentukan, dan mengembalikan semua baris dari tabel kiri (tabel pertama dalam pernyataan JOIN) dan hanya baris yang sesuai dari tabel kanan (tabel kedua dalam pernyataan JOIN).

Sintaks dari Left Join adalah sebagai berikut:

```sql
SELECT
	select_list
FROM
	t1
LEFT JOIN
	t2
ON t1.nama_kolom = t2.nama_kolom

```

Contoh:

tabel `pembelian` :

| id_pembelian | pembeli_id | produk_id | jumlah_pembelian | tanggal_pembelian |
| --- | --- | --- | --- | --- |
| 1 | 35 | 5 | 19 | 2023-11-03 |
| 2 | 41 | 30 | 15 | 2023-11-08 |
| 3 | 38 | 10 | 5 | 2023-11-11 |
| 4 | 66 | 18 | 11 | 2023-10-16 |
| 5 | 23 | 28 | 7 | 2023-10-23 |
| 6 | 75 | 12 | 16 | 2023-10-15 |
| 7 | 21 | 24 | 1 | 2023-10-14 |
| 8 | 57 | 29 | 23 | 2023-10-26 |
| 9 | 5 | 10 | 2 | 2023-10-24 |
| 10 | 3 | 20 | 22 | 2023-10-20 |
| … | … | … | … | … |

tabel `penilaian` :

| id_produk | judul_produk | deskripsi_produk | harga_produk | gambar_produk |
| --- | --- | --- | --- | --- |
| 1 | Laptop Dell XPS 13 | Laptop Dell XPS 13 dengan layar sentuh... | 1299 | dell_xps_13.jpg |
| 2 | Smartphone Samsung Galaxy S21 | Smartphone Samsung Galaxy S21 dengan... | 899 | samsung_galaxy_s21.jpg |
| 3 | TV LED 4K Sony Bravia | TV LED 4K Sony Bravia dengan layar 55... | 799 | sony_bravia_tv.jpg |
| 4 | Kamera DSLR Nikon D850 | Kamera DSLR Nikon D850 dengan resolu... | 2499 | nikon_d850.jpg |
| 5 | Smartwatch Apple Watch Series 7 | Smartwatch Apple Watch Series 7 deng... | 399 | apple_watch_series_7.jpg |
| 6 | Drone DJI Mavic Air 2 | Drone DJI Mavic Air 2 dengan kamera 48... | 799 | dji_mavic_air_2.jpg |
| 7 | Headphone Bose QuietComfort 45 | Headphone Bose QuietComfort 45 dengan... | 349 | bose_quietcomfort_45.jpg |
| 8 | Laptop HP Envy x360 | Laptop HP Envy x360 dengan layar sentu... | 999 | hp_envy_x360.jpg |
| 9 | Tablet iPad Pro 12.9-inch | Tablet iPad Pro 12.9-inch dengan layar... | 1099 | ipad_pro_12_9.jpg |
| 10 | Kulkas Samsung French Door | Kulkas Samsung French Door dengan kap... | 1999 | samsung_french_door_fridge.jpg |
| … | … | … | … | … |

Query :

```sql

SELECT pembelian.id_pembelian, pembelian.pembeli_id, pembelian.produk_id, p.nilai_produk 
FROM pembelian 
LEFT OUTER JOIN penilaian p 
on pembelian.id_pembelian = p.pembelian_id ;

#atau

SELECT pembelian.id_pembelian, pembelian.pembeli_id, pembelian.produk_id, p.nilai_produk 
FROM pembelian 
LEFT JOIN penilaian p 
on pembelian.id_pembelian = p.pembelian_id ;
```

Hasil :

| id\_pembelian | pembeli\_id | produk\_id | nilai\_produk |
| --- | --- | --- | --- |
| 1 | 35 | 5 | 1 |
| 2 | 41 | 30 | 5 |
| 3 | 38 | 10 | 3 |
| 4 | 66 | 18 | null |
| 5 | 23 | 28 | 5 |
| 6 | 75 | 12 | null |
| 7 | 21 | 24 | 1 |
| 8 | 57 | 29 | 4 |
| 9 | 5 | 10 | 3 |
| 10 | 3 | 20 | 5 |
| … | … | … | … |

## 2. Right Outer Join atau Right Join

![https://assets-global.website-files.com/61af164800e38cf1b6c60b55/643e2362103f5c2a3184d5da_3.%20Right%20Join.webp](https://assets-global.website-files.com/61af164800e38cf1b6c60b55/643e2362103f5c2a3184d5da_3.%20Right%20Join.webp)

Right Outer Join atau sering disebut juga Right Join adalah jenis Outer Join lainnya yang digunakan dalam SQL. Right Join menggabungkan dua tabel berdasarkan kolom yang ditentukan, dan mengembalikan semua baris dari tabel kanan (tabel kedua dalam pernyataan JOIN) dan hanya baris yang sesuai dari tabel kiri (tabel pertama dalam pernyataan JOIN).

Sintaks dari Right Join adalah sebagai berikut:

```sql
SELECT
	select_list
FROM
	t1
RIGHT JOIN
	t2
ON t1.nama_kolom = t2.nama_kolom

```

Contoh:

tabel `pembelian` :

| id_pembelian | pembeli_id | produk_id | jumlah_pembelian | tanggal_pembelian |
| --- | --- | --- | --- | --- |
| 1 | 35 | 5 | 19 | 2023-11-03 |
| 2 | 41 | 30 | 15 | 2023-11-08 |
| 3 | 38 | 10 | 5 | 2023-11-11 |
| 4 | 66 | 18 | 11 | 2023-10-16 |
| 5 | 23 | 28 | 7 | 2023-10-23 |
| 6 | 75 | 12 | 16 | 2023-10-15 |
| 7 | 21 | 24 | 1 | 2023-10-14 |
| 8 | 57 | 29 | 23 | 2023-10-26 |
| 9 | 5 | 10 | 2 | 2023-10-24 |
| 10 | 3 | 20 | 22 | 2023-10-20 |
| … | … | … | … | … |

tabel `penilaian` :

| id_produk | judul_produk | deskripsi_produk | harga_produk | gambar_produk |
| --- | --- | --- | --- | --- |
| 1 | Laptop Dell XPS 13 | Laptop Dell XPS 13 dengan layar sentuh... | 1299 | dell_xps_13.jpg |
| 2 | Smartphone Samsung Galaxy S21 | Smartphone Samsung Galaxy S21 dengan... | 899 | samsung_galaxy_s21.jpg |
| 3 | TV LED 4K Sony Bravia | TV LED 4K Sony Bravia dengan layar 55... | 799 | sony_bravia_tv.jpg |
| 4 | Kamera DSLR Nikon D850 | Kamera DSLR Nikon D850 dengan resolu... | 2499 | nikon_d850.jpg |
| 5 | Smartwatch Apple Watch Series 7 | Smartwatch Apple Watch Series 7 deng... | 399 | apple_watch_series_7.jpg |
| 6 | Drone DJI Mavic Air 2 | Drone DJI Mavic Air 2 dengan kamera 48... | 799 | dji_mavic_air_2.jpg |
| 7 | Headphone Bose QuietComfort 45 | Headphone Bose QuietComfort 45 dengan... | 349 | bose_quietcomfort_45.jpg |
| 8 | Laptop HP Envy x360 | Laptop HP Envy x360 dengan layar sentu... | 999 | hp_envy_x360.jpg |
| 9 | Tablet iPad Pro 12.9-inch | Tablet iPad Pro 12.9-inch dengan layar... | 1099 | ipad_pro_12_9.jpg |
| 10 | Kulkas Samsung French Door | Kulkas Samsung French Door dengan kap... | 1999 | samsung_french_door_fridge.jpg |
| … | … | … | … | … |

Query :

```sql
SELECT pembelian.id_pembelian, pembelian.pembeli_id, pembelian.produk_id, p.nilai_produk 
FROM pembelian 
RIGHT OUTER JOIN penilaian p 
on pembelian.id_pembelian = p.pembelian_id ;

#ATAU

SELECT pembelian.id_pembelian, pembelian.pembeli_id, pembelian.produk_id, p.nilai_produk 
FROM pembelian 
rIGHT JOIN penilaian p 
on pembelian.id_pembelian = p.pembelian_id ;
```

Hasil:

| id\_pembelian | pembeli\_id | produk\_id | nilai\_produk |
| --- | --- | --- | --- |
| 102 | 1 | 1 | 3 |
| 133 | 1 | 12 | 1 |
| 168 | 1 | 9 | 1 |
| 188 | 1 | 17 | 4 |
| 313 | 1 | 23 | 4 |
| 340 | 1 | 7 | 1 |
| 393 | 1 | 27 | 2 |
| 469 | 1 | 2 | 5 |
| 535 | 1 | 16 | 2 |
| 569 | 1 | 6 | 3 |
| … | … | … | … |

## 3. Full Outer Join

![https://assets-global.website-files.com/61af164800e38cf1b6c60b55/643e237a504dc080192fd00d_4.%20Full%20Outer%20Join.webp](https://assets-global.website-files.com/61af164800e38cf1b6c60b55/643e237a504dc080192fd00d_4.%20Full%20Outer%20Join.webp)

Join penuh luar (full outer join) adalah operasi penggabungan tabel yang menggabungkan semua baris dari kedua tabel yang terlibat dalam join, termasuk baris yang tidak memiliki pasangan dalam tabel lainnya. Hasilnya adalah kombinasi dari inner join dan outer join, sehingga semua baris dari kedua tabel dipertahankan dalam hasil.

Dalam konteks bisnis, full outer join digunakan untuk menggabungkan data dari dua tabel atau sumber informasi yang berbeda, sehingga kita dapat melihat semua data yang ada di kedua tabel. Misalnya, dalam bisnis, full outer join dapat digunakan untuk menggabungkan data pelanggan dengan data pesanan, sehingga kita dapat melihat semua pelanggan beserta pesanan mereka, termasuk pelanggan yang belum pernah melakukan pesanan. Hal ini membantu dalam analisis data yang komprehensif dan pengambilan keputusan yang lebih baik.

Sintaks dari full outer join adalah:

```sql
SELECT select_list 
FROM t1
LEFT JOIN t2 ON t1.id = t2.id
UNION
SELECT select_list 
FROM t1
RIGHT JOIN t2 ON t1.id = t2.id

```

Contoh:

tabel `pembelian` :

| id_pembelian | pembeli_id | produk_id | jumlah_pembelian | tanggal_pembelian |
| --- | --- | --- | --- | --- |
| 1 | 35 | 5 | 19 | 2023-11-03 |
| 2 | 41 | 30 | 15 | 2023-11-08 |
| 3 | 38 | 10 | 5 | 2023-11-11 |
| 4 | 66 | 18 | 11 | 2023-10-16 |
| 5 | 23 | 28 | 7 | 2023-10-23 |
| 6 | 75 | 12 | 16 | 2023-10-15 |
| 7 | 21 | 24 | 1 | 2023-10-14 |
| 8 | 57 | 29 | 23 | 2023-10-26 |
| 9 | 5 | 10 | 2 | 2023-10-24 |
| 10 | 3 | 20 | 22 | 2023-10-20 |
| … | … | … | … | … |

tabel `penilaian` :

| id_produk | judul_produk | deskripsi_produk | harga_produk | gambar_produk |
| --- | --- | --- | --- | --- |
| 1 | Laptop Dell XPS 13 | Laptop Dell XPS 13 dengan layar sentuh... | 1299 | dell_xps_13.jpg |
| 2 | Smartphone Samsung Galaxy S21 | Smartphone Samsung Galaxy S21 dengan... | 899 | samsung_galaxy_s21.jpg |
| 3 | TV LED 4K Sony Bravia | TV LED 4K Sony Bravia dengan layar 55... | 799 | sony_bravia_tv.jpg |
| 4 | Kamera DSLR Nikon D850 | Kamera DSLR Nikon D850 dengan resolu... | 2499 | nikon_d850.jpg |
| 5 | Smartwatch Apple Watch Series 7 | Smartwatch Apple Watch Series 7 deng... | 399 | apple_watch_series_7.jpg |
| 6 | Drone DJI Mavic Air 2 | Drone DJI Mavic Air 2 dengan kamera 48... | 799 | dji_mavic_air_2.jpg |
| 7 | Headphone Bose QuietComfort 45 | Headphone Bose QuietComfort 45 dengan... | 349 | bose_quietcomfort_45.jpg |
| 8 | Laptop HP Envy x360 | Laptop HP Envy x360 dengan layar sentu... | 999 | hp_envy_x360.jpg |
| 9 | Tablet iPad Pro 12.9-inch | Tablet iPad Pro 12.9-inch dengan layar... | 1099 | ipad_pro_12_9.jpg |
| 10 | Kulkas Samsung French Door | Kulkas Samsung French Door dengan kap... | 1999 | samsung_french_door_fridge.jpg |
| … | … | … | … | … |

Query :

```sql
-- Left join untuk mengambil semua data dari penilaian dan data yang sesuai dari pembelian
SELECT penilaian.id_penilaian, penilaian.nilai_produk, pembelian.id_pembelian, pembelian.pembeli_id, pembelian.produk_id
FROM penilaian
LEFT JOIN pembelian ON penilaian.pembelian_id = pembelian.id_pembelian

UNION

-- Right join untuk mengambil semua data dari pembelian dan data yang sesuai dari penilaian
SELECT penilaian.id_penilaian, penilaian.nilai_produk, pembelian.id_pembelian, pembelian.pembeli_id, pembelian.produk_id
FROM penilaian
RIGHT JOIN pembelian ON penilaian.pembelian_id = pembelian.id_pembelian;
```

Hasil:

![Screenshot 2023-10-15 060854.png](Modul%204%20Joining%20Table%20bf36476790a14451a3052ed25bd2b536/Screenshot_2023-10-15_060854.png)

# Self Join

Self join adalah operasi penggabungan tabel yang digunakan ketika kita ingin menggabungkan baris dari satu tabel dengan baris lainnya dalam tabel yang sama. Dalam self join, kita menggunakan alias untuk tabel yang sama dan menggabungkan baris berdasarkan kriteria tertentu.

Self join sering digunakan ketika kita memiliki satu tabel yang berisi data yang saling terkait, seperti data yang memiliki hierarki atau struktur yang serupa. Dengan self join, kita dapat menggabungkan baris-baris ini untuk mendapatkan informasi yang lebih lengkap atau melakukan analisis lebih lanjut.

Contoh penggunaan self join adalah ketika kita memiliki tabel "karyawan" yang berisi data karyawan yang saling melaporkan. Dalam kasus ini, kita dapat menggunakan self join untuk menggabungkan baris karyawan dengan baris lain dalam tabel yang sama berdasarkan kolom "manajer_id" yang menunjukkan hubungan atasan-bawahan. Dengan self join, kita dapat menampilkan informasi seperti nama karyawan dan nama manajer mereka dalam satu hasil query.

Sintaks dari self join mirip dengan sintaks join pada umumnya, namun kita menggunakan alias untuk tabel yang sama. Berikut adalah contoh sintaks self join:

```sql
SELECT 
A.id_pembeli AS Pembeli1_ID, 
A.nama_depan AS Pembeli1_NamaDepan, 
A.alamat AS Pembeli1_Alamat,

B.id_pembeli AS Pembeli2_ID, 
B.nama_depan AS Pembeli2_NamaDepan, 
B.alamat AS Pembeli2_Alamat
FROM pembeli AS A
JOIN pembeli AS B ON A.alamat = B.alamat
WHERE A.id_pembeli <> B.id_pembeli; -- Menghindari hasil yang duplikat
```

Hasil :

| Pembeli1\_ID | Pembeli1\_NamaDepan | Pembeli1\_Alamat | Pembeli2\_ID | Pembeli2\_NamaDepan | Pembeli2\_Alamat |
| --- | --- | --- | --- | --- | --- |
| 7 | William | 222 Cedar St | 43 | Jackson | 222 Cedar St |
| 11 | James | 666 Oak St | 38 | Ella | 666 Oak St |
| 11 | James | 666 Oak St | 65 | Ella | 666 Oak St |
| 12 | Sophia | 777 Elm St | 30 | Benjamin | 777 Elm St |
| 12 | Sophia | 777 Elm St | 57 | Elijah | 777 Elm St |
| 12 | Sophia | 777 Elm St | 66 | Oliver | 777 Elm St |
| 13 | Daniel | 888 Pine St | 31 | Amelia | 888 Pine St |
| 13 | Daniel | 888 Pine St | 58 | Ava | 888 Pine St |
| 14 | Olivia | 999 Cedar St | 59 | Aiden | 999 Cedar St |
| 14 | Olivia | 999 Cedar St | 77 | Liam | 999 Cedar St |
| … | … | … | … | … | … |

# Penugasan
