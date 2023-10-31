# Daftar isi :

1. Introduction.
2. Operator Aritmatika
3. Operator Perbandingan
4. Operator Logika
5. Operator String
6. Operator Tanggal dan Waktu
7. Penugasan Modul 5.

# Setup

- silahkan unduh data database pada link berikut :
    [Database Modul 5](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/source-code-praktikum/praktikum5/modul5.sql)   
    
- Setalah download silahkan buat database bernama `modul5`.
- kemudian import data database yang telah di download ke dalam database `modul5`

# Apa yang dimaksud Operator ?
Operator adalah simbol atau kata kunci yang digunakan untuk melakukan operasi pada data dalam database. 

Operator dapat dikategorikan menjadi beberapa jenis, yaitu: 

- Operator aritmatika: digunakan untuk melakukan operasi aritmatika pada data numerik, seperti +, -, *, dan /.
- Operator perbandingan: digunakan untuk membandingkan dua nilai, seperti =, >, <, dan >=.
- Operator logika: digunakan untuk menggabungkan dua atau lebih ekspresi logika, seperti AND, OR, dan NOT.
- Operator string: digunakan untuk melakukan operasi pada data string, seperti CONCAT, SUBSTRING, dan LENGTH.
- Operator tanggal dan waktu: digunakan untuk melakukan operasi pada data tanggal dan waktu, seperti DATE_ADD, DATE_SUB, dan HOUR.

# Operator Aritmatika.
Operator aritmatika adalah operator yang digunakan untuk melakukan operasi aritmatika pada data numerik, seperti penjumlahan, pengurangan, perkalian, dan pembagian. 

Operator aritmatika terdiri dari :

- **Penjumlahan:** +
- **Pengurangan:** -
- **Perkalian:** *
- **Pembagian:** /
- **Sisa pembagian:** %
### Contoh Penggunaan Operator Aritmatika.
Berikut adalah beberapa contoh penggunaan operator aritmatika MySQL dalam query SQL :
```sql
# Menambahkan dua angka
SELECT 10 + 20;

# Mengurangi dua angka
SELECT 30 - 20;

# Mengalikan dua angka
SELECT 5 * 2;

# Membagi dua angka
SELECT 10 / 2;

# Menghitung sisa pembagian dua angka
SELECT 10 % 3;
```
### Tips Menggunakan Operator Aritmatika MySQL.
- Gunakan operator yang tepat untuk operasi yang ingin dilakukan. Misalnya, jika ingin menambahkan dua angka, gunakan operator penjumlahan (+). Jika ingin mengurangi dua angka, gunakan operator pengurangan (-).
- Gunakan tanda kurung untuk mengelompokkan ekspresi dan memprioritaskan operasi. Misalnya, untuk menghitung 
2 + 3 * 4, dapat menggunakan query berikut:
```sql
SELECT 2 + (3 * 4);
```
Query di atas akan mengembalikan nilai 14.
### Contoh Studi Kasus Operator Aritmatika.
1. Dari tabel ‘produk’, ingin menampilkan semua harga produk yang telah mengalami kenaikan sebesar 10% dari harga awal.
```sql
SELECT
  id_produk,
  judul_produk,
  harga_produk,
  (harga_produk * 1.1) AS harga_baru
FROM
  produk;
```
hasil : 

![image](https://github.com/informatika-itts/modul-perancangan-basis-data/assets/85007718/275b7080-650f-40d5-a9da-43e30b8db657)

# Operator Perbandingan.
Operator perbandingan adalah operator yang digunakan untuk membandingkan dua nilai. Operator perbandingan dapat digunakan untuk menentukan apakah dua nilai sama, berbeda, lebih besar, lebih kecil, atau sama dengan atau kurang dari atau sama dengan.

Berikut adalah daftar operator perbandingan :


|Operator | Keterangan |
|-- | -- |
| = | Sama dengan |
| != | Tidak sama dengan |
| > | Lebih besar dari |
| < | Lebih kecil dari |
| >= | Lebih besar dari atau sama dengan |
| <= | Lebih kecil dari atau sama dengan |

### Contoh penggunaan operator perbandingan.
1. Misalkan kita ingin menampilkan harga produk dari tabel ‘produk’ dengan range harga lebih kecil dari 150000 dan lebih besar dari 50000.
```sql
SELECT
  id_produk,
  judul_produk,
  harga_produk
FROM
  produk
WHERE
  harga_produk > 50000 AND harga_produk < 150000;
```
hasil :
 
![image](https://github.com/informatika-itts/modul-perancangan-basis-data/assets/85007718/60f5eef2-c0cd-47cc-a5a9-0b4ec3f2b220)

2. Contoh selanjutnya adalah untuk tidak menampilkan harga produk yang bernilai 799.
```sql
SELECT
  id_produk,
  judul_produk,
  harga_produk
FROM
  produk
WHERE
  harga_produk != 45000;
```
hasil :
 
![image](https://github.com/informatika-itts/modul-perancangan-basis-data/assets/85007718/005db080-7888-426a-baf6-a4cb67364d25)

# Operator Logika.
Operator logika pada mysql digunakan untuk mendapatkan hasil nilai boolean true, false atau null dari dua kondisi atau lebih dan biasanya digunakan bersamaan dengan operator perbandingan ataupun aritmatika.


Operator | Deskripsi | Tipe Data
-- | -- | --
ALL | TRUE jika semua himpunan pembandingan bernilai TRUE |  
AND | TRUE jika kedua ekspresi Boolean bernilai TRUE |  
ANY | TRUE jika kedua ekspresi Boolean bernilai TRUE |  
BETWEEN | TRUE jika nilai berada di antara suatu rentang | Numerik
EXISTS | TRUE jika subquery menghasilkan basis record | Array (numerik,string)
IN | TRUE jika operand sama dengan salah satu dari daftar ekspresi/tuple | Array (numerik,string)
LIKE | TRUE jika sesuai dengan pola tertentu % atau _ | String
NOT | Kebalikan nilai dari operator boolean apapun |  
OR | TRUE jika salah satu ekspresi Boolean bernilai TRUE |  
SOME | TRUE jika beberapa dari himpunan pembandingan bernilai TRUE |  
### Contoh penggunaan operator logika.
1. Misalkan ingin menampilkan judul produk dari tabel ‘produk’ yang hanya mengandung kata ‘Skintific’. maka bisa menggunakan operator LIKE.
```sql
SELECT
  judul_produk
FROM
  produk
WHERE
  judul_produk LIKE '%Skintific%';
```
Query di atas menggunakan operator LIKE untuk mencari judul produk yang mengandung kata 'Skintific'. Operator LIKE menggunakan wildcard % untuk mewakili satu atau lebih karakter.
hasil : 

![image](https://github.com/informatika-itts/modul-perancangan-basis-data/assets/85007718/763e04e0-b6cb-401f-86fc-a1cf2d07c28a)

2. Apabila ingin menampilkan tanggal pembelian dari tabel ‘pembelian’ yang spesifik untuk rentang tanggal ‘2023-10-15’ hingga ‘2023-11-15’
```sql
SELECT
  id_pembelian,
  customer_id,
  produk_id,
  jumlah_pembelian,
  tanggal_pembelian
FROM
  pembelian
WHERE
  tanggal_pembelian BETWEEN '2023-10-15' AND '2023-11-15'
```
Query di atas akan menggunakan operator BETWEEN untuk mencari data pembelian dengan tanggal pembelian antara 2023-10-15 hingga 2023-11-15. 

![image](https://github.com/informatika-itts/modul-perancangan-basis-data/assets/85007718/5cd0fa36-87d8-4721-a0bf-a6f4ec68c0aa)

# Operator String.
Operator String atau ****************String Function**************** adalah tools yang berguna untuk memanipulasi data teks di SQL. Dengan menggunakan operator string, bisa membuat query yang lebih komples dan fleksible untuk memenuhi kebutuhan pengolahan data.

Ada banyak sekali contoh Operator string atau ***************String Fuction*************** yang didukung oleh SQL Server.

ASCII | LTRIM | SOUNDEX
-- | -- | --
CHAR | NCHAR | SPACE
CHARINDEX | PATINDEX | STR
CONCAT | QUOTENAME | STRING SPACE
DIFFERENCE | REPLACE | STRING SPLIT
FORMAT | REPLICATE | STUFF
LEFT | REVERSE | SUBSTRING
LEN | RIGHT | UNICODE
LOWER | RTRIM | UPPER

reference : https://mariadb.com/kb/en/string-functions/ atau https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

### Contoh penggunaan opeator string.
```sql
SELECT
  CONCAT(
    UPPER(nama), 
      ' -- ', 
      LOWER(alamat)
  ) AS Pengiriman
FROM
  customer;
```

Query di atas akan menggunakan operator UPPER() untuk mengubah Nama Customer menjadi huruf kapital dan operator LOWER() untuk mengubah Alamat Customer menjadi huruf kecil. Operator CONCAT() akan menggabungkan kedua kolom menjadi satu string.

![image](https://github.com/informatika-itts/modul-perancangan-basis-data/assets/85007718/4a1d6553-ee82-4cb4-b528-278933e18f29)


# Operator Tanggal dan Waktu.
perator tanggal dan waktu digunakan untuk membandingkan atau memanipulasi data tanggal dan waktu.

Beberapa contoh operator tanggal dan waktu : 

Operator | Keterangan
-- | --
DATE_ADD | Menambahkan sejumlah hari, bulan, atau tahun ke tanggal atau waktu
DATE_SUB | Mengurangi sejumlah hari, bulan, atau tahun dari tanggal atau waktu.
DATEDIFF | Mengembalikan selisih antara dua tanggal atau waktu dalam satuan hari, bulan, atau tahun.
CURDATE | Mengembalikan tanggal terkini atau current date.
DATE_SUB | Mengurangi sejumlah hari, bulan, atau tahun dari tanggal atau waktu.
TIMESTAMP | Menggabungkan tanggal dan waktu menjadi satu nilai.

reference : https://mariadb.com/kb/en/date-time-functions/ atau https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

### Contoh penggunaan operator tanggal dan waktu.
```sql
SELECT
  id_customer,
  nama,
  tanggal_lahir,
  YEAR(CURDATE()) - YEAR(tanggal_lahir) AS umur
FROM
  customer;
```
Query di atas akan menggunakan fungsi YEAR() untuk mendapatkan tahun dari tanggal lahir customer dan tanggal saat ini, Fungsi CURDATE() untuk mengembalikan tanggal saat ini, fungsi ini menggunakan format YYYY-MM-DD. Kemudian, query akan mengurangkan kedua tahun tersebut untuk mendapatkan umur customer.

# Penugasan Modul
1. Tampilkan harga produk dari tabel produk dengan diskon harga 10% khusus untuk
produk id dengan angka ganjil.
2. Tampilkan 5 Nama Customer dengan total pembelian terbanyak dan customer
tersebut akan mendapatkan diskon 25%, sebutkan jumlah barang yang dibeli, nama barang
yang dibeli, total pembelian (jumlah pembelian x harga produk),  harga diskon (25% total pembelian) dan harga setelah diskon ( total pembelian - harga diskon )
clue : inner join
3. tampilkan jumlah total transaksi pada tanggal 15 Oktober 2023 atau tanggal 30
Oktober 2023






