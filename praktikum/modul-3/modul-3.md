# Query Select
Query `SELECT` di MySQL digunakan untuk mengambil data dari satu atau lebih tabel. Kita dapat mengambil data semua kolom atau kolom tertentu yang cocok dengan kondisi tertentu menggunakan query ini.

Ada beberapa parameter yang ada di query `SELECT` ini, seperti `SELECT`, `WHERE`, `TOP`, `DISTINCT`, `ORDER BY`, dan `LIMIT`

## SELECT
Perintah `SELECT` pada MySql biasanya digunakan untuk menampilkan data yang berada di dalam tabel. Selain itu, fungsi `SELECT` juga digunakan untuk mendapatkan nilai/data dari dalam tabel.

Sintaks :
```sql
SELECT [kolom-yang-ingin-ditampilkan] FROM [nama tabel];
```
Contoh :
```sql
SELECT nama FROM user;
```
Untuk menampilkan keseluruhan data didalam tabel, tinggal ganti nama kolomnya menjadi *
Contoh : 
```sql
SELECT * FROM user;
```
## WHERE
`WHERE` digunakan untuk menampilkan data dengan suatu kondisi tertentu. Pada dasarnya `WHERE` dapat mendukung operasi perbandingan seperti `=, !=, >, <, >=, dan <=` .

Contoh : 
Kita akan menampilkan list mahasiswa yang kelahirannya tahun 2002
```sql
SELECT * FROM mahasiswa WHERE tahun_lahir = 2002;
```
Selain itu, `WHERE` memiliki banyak turunan. Salah satunya `WHERE IS NOT NULL` untuk memilih data yang tidak bernilai `NULL`.

Adalagi namanya `WHERE IN`, yang akan memfilter data yang memenuhi salah satu value yang ditentukan.

Contoh : 
Kita ingin menampilkan mahasiswa yang berasal dari prodi Informatika, Sistem Informasi, dan Teknologi Informasi.
```sql
SELECT * FROM mahasiswa WHERE program_studi IN (Informatika, Sistem Informasi, Teknologi Informasi);
```
Ada lagi namanya `WHERE LIKE`. Perhatikan contoh soal berikut:
```sql
SELECT * FROM mahasiswa WHERE nama LIKE 'A%';
```
Fungsi `WHERE LIKE` diatas akan memfilter semua nama mahasiswa yang diawali dengan 'A'. Dan di contoh `WHERE LIKE` diatas juga ditambahkan wildcard % untuk menyatakan 'terserah'. Misalnya contoh diatas 'A%', maka nama harus diawali dengan 'A' dan dilanjutkan dengan karakter atau kata apapun.

Contoh lainnya adalah `WHERE BETWEEN` yang dapat memfilter data dengan rentang date / datetime tertentu.

Selain semua varian `WHERE` diatas, kita juga bisa mengkombinasikan banyak kondisi `WHERE` dalam satu query dengan menggunakan `AND` atau `OR`.

Contoh : 
Kita ingin menampilkan list mahasiswa yang berada di prodi Informatika dengan tahun kelahiran 2002
```sql
SELECT * FROM mahasiswa WHERE program_studi = 'IF' AND tahun_lahir = 2001;
```
Jika kedua kriteria terpenuhi, data akan ditampilkan. Namun jika hanya perlu minimal 1 kriteria terpenuhi, kita bisa menggantikan `AND` dengan `OR`.
## LIMIT
Perintah `SELECT LIMIT` digunakan untuk membatasi jumlah baris data yang dihasilkan oleh suatu perintah atau query `SELECT`. Pembatasan jumlah baris data hasil query ini diperlukan apabila suatu query menghasilkan jumlah baris data yang sangat banyak sehingga mempengaruhi kecepatan eksekusi query tersebut.

Sintaks : 
```sql
SELECT [nama_kolom] FROM [nama_tabel] WHERE [kondisi] LIMIT [angka];
```
Contoh kasus :

<img width="574" alt="Screenshot 2023-10-07 at 20 26 36" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/89a6c325-3e30-4490-9be2-23ae3650e16b">

1. Kita ingin mengambil 3 data saja dari kumpulan data diatas
```sql
SELECT * FROM Customers LIMIT 3;
```
Hasil : 

<img width="506" alt="Screenshot 2023-10-07 at 20 28 32" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/6291aef3-3bd6-4d55-8c7a-08e5eb75ed71">

2. Kita ingin mengambil 3 data saja customer yang berasal dari negara UK
```sql
SELECT * FROM Customers WHERE Country='UK' LIMIT 3;
```
Hasil : 

<img width="505" alt="Screenshot 2023-10-07 at 20 29 52" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/29c9a27e-349c-41a6-be01-e46649433103">

## DISTINCT
Saat kita membuat query untuk menampilkan data pada suatu tabel, Sangat dimungkinkan kita akan mendapat duplikasi data pada baris tabel tersebut. Dengan menggunakan select distinct kita dapat menghapus duplikasi baris tersebut sehingga akan menampilkan data yang unik. Atau bisa juga dengan kata lain kita kelompokan data menjadi satu baris data yang unik untuk ditampilkan.

Sintaks : 
```sql
SELECT DISTINCT [nama_kolom] FROM [nama_tabel];
```
Contoh kasus : 

<img width="551" alt="Screenshot 2023-10-07 at 20 31 07" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/c0f6015d-80cb-46b8-9986-25c4cfd4da2c">

1. Kita ingin melihat daftar negara dari data nama pelanggan diatas.
```sql
SELECT DISTINCT Country FROM customers;
```
Hasil : 

<img width="88" alt="Screenshot 2023-10-07 at 20 33 06" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/442693d4-fc4a-451f-a43b-0b5f0e8d041a">

2. Kita ingin menampilkan 3 negara dari sekumpulan list negara pada data pelanggan diatas.
```sql
SELECT DISTINCT Country FROM customers LIMIT 3;
```
Hasil : 

<img width="275" alt="Screenshot 2023-10-07 at 20 33 52" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/c093ae4d-8bff-4383-ae99-4ab9d092cec6">

## ORDER BY
`ORDER BY` merupakan sebuah klausa yang digunakan untuk mengurutkan hasil query pada sebuah kolom berdasarkan dengan nilai terbesar atau terkecilnya. Untuk mengetahui diurutkan secara nilai terbesar atau terkecil, setelah klausa `ORDER BY` dapat ditambahkan `ASCENDING` ataupun `DESCENDING`. 

Apabila tidak menulis perintah urutan `ASC` ataupun `DESC`, secara default akan diurutkan secara `ASCENDING`.
	
Sintaks : 
```sql
SELECT [nama_kolom] FROM [nama_tabel] ORDER BY [nama_kolom]  ASC/DESC;
```
Contoh kasus : 

<img width="554" alt="Screenshot 2023-10-07 at 20 35 09" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/40ddb504-3bb8-4eb0-92c9-a4a0a44f5f68">

1. Kita ingin menampilkan data diatas berdasarkan nama negara dari A - Z
```sql
SELECT * FROM Customers ORDER BY Country;
```	
Hasil : 

<img width="535" alt="Screenshot 2023-10-07 at 20 36 03" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/b47bbd38-36fc-40ab-bf32-f48aff1424a4">

2. Kita ingin menampilkan CustomerName dari data diatas berdasarkan nama negara dari Z - A dan City dari A - Z.
```sql
SELECT CustomerName, City, Country FROM Customers ORDER BY Country DESC, City ASC;
```
Hasil : 

<img width="471" alt="Screenshot 2023-10-07 at 20 36 49" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/1140531f-a5b0-4027-8d3e-b650eee06f3e">

# DML (DATA MANIPULATION LANGUAGE)
DML (Data Manipulation Language) merupakan command yang berhubungan dengan proses manipulasi data yang ada di database, yang umumnya mencakup hampir sebagian besar statement MySQL.

Adapun perintah DML yang digunakan pada MySQL ialah :

`SELECT` – untuk mengambil atau menampilkan data dari tabel.

`INSERT` – untuk menyimpan data ke dalam tabel.

`UPDATE` – untuk mengubah data dalam tabel.

`DELETE` – untuk menghapus data dari tabel.

## INSERT
Memasukkan data dalam database MySQL dengan perintah `INSERT`. Syarat untuk memasukkan data adalah telah terciptanya tabel pada sebuah database.

Sintaks : 
```sql
INSERT INTO [nama_tabel] VALUES ('isi_kolom1', 'isi_kolom2', 'isi_kolom3');
```
Contoh kasus : 

<img width="496" alt="Screenshot 2023-10-07 at 20 37 58" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/4011065b-917e-4acc-85c6-19906fd4e193">

Kita ingin menambahkan kategori baru pada list diatas, yakni dengan nama "Drink" dengan deskripsi "Healthy Drink"
```sql
INSERT INTO categories VALUES ('9', 'Drink', 'Healthy Drink');
```
Hasil : 

<img width="464" alt="Screenshot 2023-10-07 at 20 38 35" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/8c099c95-2653-4935-a4d1-554904063fab">

## UPDATE
Update data adalah sebuah proses edit data lama menjadi data yang lebih baru.

Sintaks : 
```sql
UPDATE [nama_tabel] SET [kolom_1] = 'data_baru', [kolom_2] ='data_baru' WHERE 
[kondisi];
```
Contoh kasus :

<img width="464" alt="Screenshot 2023-10-07 at 20 38 35" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/8c099c95-2653-4935-a4d1-554904063fab">

Kita ingin merubah kategori nomor 9 menjadi bahasa Indonesia baik CategoryName nya maupun Description nya
```sql
UPDATE categories SET CategoryName = 'Minuman', Description = 'Minuman Kesehatan' WHERE CategoryID='9';
```
Hasil : 

<img width="532" alt="Screenshot 2023-10-07 at 20 40 56" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/5037aa59-167a-4139-a060-4b3e57f7303f">

## DELETE
Untuk menghapus data, MySQL memiliki query bernama `DELETE`. Penggunaannya diikuti dengan nama data yang akan dihapus.

Sintaks untuk menghapus seluruh data pada suatu tabel (HATI-HATI) : 
```sql
DELETE FROM [nama_tabel];
```
Sintaks untuk menghapus data berdasarkan kondisi tertentu : 
```sql
DELETE FROM [nama_tabel] WHERE [kondisi];
```
Contoh kasus :

<img width="532" alt="Screenshot 2023-10-07 at 20 40 56" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/5037aa59-167a-4139-a060-4b3e57f7303f">

Kita ingin menghapus kategori yang sebelumnya kita tambahkan dan ubah pada praktikum diatas.
```sql
DELETE FROM categories WHERE CategoryID ='9';
```
Hasil :

<img width="485" alt="Screenshot 2023-10-07 at 20 42 25" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/b57b5c65-93a9-4273-9bbe-a0a215696eed">

Klik "OK" jika ada notifikasi popup seperti ini, maka hasilnya : 

<img width="465" alt="Screenshot 2023-10-07 at 20 43 02" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/b98c9fd7-ee48-4874-84b0-954a8ac102ed">

# SOAL TUGAS
Mekanisme tugas : 
Kerjakan dan setiap kodingan serta step by step sebelum & sesudah harap di screenshot dan taruh di word dan tunjukkan kepada Aslab saat penilaian. Lupa screenshot atau tidak dapat menunjukkan jawaban nomor soal tertentu dinilai belum mengerjakan pada nomor tersebut.

Persiapan : 
Buatlah database beserta isinya seperti gambar dibawah ini : 

<img width="483" alt="Screenshot 2023-10-07 at 20 44 02" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/60a30818-0a91-40d4-8a78-5082f39df9da">

Lakukan : 
1. Tampilkan list dengan klausa WHERE IN antara Surabaya dan Mojokerto
2. Tampilkan keseluruhan kolom berdasarkan nilai IPK dari terbesar ke terkecil kemudian diurutkan berdasarkan jenis kelamin L terlebih dahulu.
3. Kerjakan melalui console!  : 
   - Tambahkan data dirimu dengan melanjutkan urutan nim sesuai di list diatas, nama sesuai namamu sendiri, domisili sesuai dengan domisilimu sendiri, dan jenis kelaminnya. IPK silahkan dirandom. 
   - Ubah data diri kalian pada kolom domisili menjadi "Surabaya"
