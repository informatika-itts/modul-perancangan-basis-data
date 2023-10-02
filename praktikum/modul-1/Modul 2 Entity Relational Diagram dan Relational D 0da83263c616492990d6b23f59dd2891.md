# Modul 2 : Entity Relational Diagram dan Relational Database Management System

Pada modul 2 ini kita akan belajar bagaimana cara mendesign database relasional menggunakan ERD, kemudian kita juga akan belajar bagaimana cara membuat database tersebut menggunakan Mysql/Mariadb menggunakan phpmyadmin dan xampp.

# Daftar Isi

- Entity Relational Diagram
    - Entitas
    - Atribut
    - Relasi
    - Kardinalitas
    - Agregasi
    - Normalisasi
- Membuat model database relasional dengan ERD
- Mysql/MariaDB
    - Syntax Mysql/MariaDB
    - Tipe data pada Mysql/MariaDB
- *Data Definition language*
    - *Constraint*
    - CREATE
    - ALTER
    - DROP
    - TRUNCATE
- Penugasan

# *Entity Relational Diagram*

---

*Entity Relational Diagram (ERD)* adalah sebuah metode untuk merancang dan memodelkan database relasional. ERD menggambarkan *entitas* (objek atau konsep) dalam sistem dan *hubungan* antara entitas tersebut. ERD menggunakan simbol-simbol grafis seperti persegi panjang untuk entitas, garis untuk hubungan, dan panah untuk menunjukkan arah hubungan. ERD membantu dalam memahami struktur database, mengidentifikasi atribut yang diperlukan, dan menentukan ketergantungan antara entitas. Dengan menggunakan ERD, kita dapat merancang dan membuat database relasional yang efisien dan terstruktur dengan baik.

## 1. Entitas

Entitas merupakan sekumpulan objek yang dapat diidentifikasi secara unik dan berbeda satu dengan yang lainnya. 

### Karakteristik Entitas :

1. Entitas berbentuk Tunggal ( 1 kata )
2. Entitas berlambang Persegi Panjang

![Screenshot 2023-10-01 134416.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_134416.png)

## 2. Atribut

Atribut adalah karakteristik atau properti yang dimiliki oleh sebuah entitas. Atribut menggambarkan informasi yang berkaitan dengan entitas tersebut. Misalnya, jika entitasnya adalah "Mahasiswa", maka atributnya bisa berupa "Nama", "NIM", "Jurusan", dan sebagainya. Atribut dapat memiliki tipe data tertentu, seperti string, angka, tanggal, dan lain-lain. Atribut dapat dibagi menjadi beberapa jenis, seperti:

### **********************************************Karakteristik Atribut :**********************************************

1. Atribut merupakan bagian dari Entitas
2. Atribut merupakan Deskripsi Sifat / Keterangan dari sebuah Entitas
3. Berbentuk Elips
4. Nama atribut terdiri dari satu dan gabungan huruf besar atau huruf kecil ( tidak boleh ada spasi )
5. Nama atribut tidak boleh menyertakan nama entitas, karena atribut memenuhi syarat dengan nama entitas

### Standart Attributes

Atribut Standart adalah atribut biasa atau properti biasa yang dimiliki oleh suatu entitas. Contoh atribut standart adalah nama mahasiswa, nama mata kuliah, jenis kelamin, dan masih banyak lagi. Bentuk dari standart atribut adalah seperti ini 

![Screenshot 2023-10-01 141455.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_141455.png)

### Key Attributes

Atribut kunci adalah atribut/properti dari entitas yang memiliki nilai unik. Atribut kunci biasanya dijadikan untuk Primary Key pada database karena memiliki nilai unik dan tidak ada duplikasi. Primary Key dilambangkan oleh garis bawah pada nama atribut Contoh dari atribut kunci adalah Nomor Induk Mahasiswa (NIM), Nomor Induk Keluarga, dan masih banyak lagi. Bentuk dari atribut kunci adalah seperti ini

![Screenshot 2023-10-01 142309.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_142309.png)

### Atribut Komposit

Atribut komposit adalah atribut yang dapat dibagi lagi menjadi beberapa bagian. Contoh dari atribut komposit adalah alamat. 

- Alamat : **Jl. Ketintang No.156, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur 60231**
- Atribut diatas dapat dibagi lagi menjadi **Jalan (Jl. Ketintang No.156), Kelurahan (Ketintang), Kecamatan (Gayungan), Kabupaten(Surabaya), Provinsi (Jawa Timur), Kode pos (60231)**

contoh lain dari atribut komposit adalah nama lengkap karena pada nama lengkap kita bisa bagi lagi menjadi nama depan, nama tengah, nama belakang atau nama depan dan belakang saja. Bentuk dari atribut komposit adalah seperti ini

![Untitled (1).png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled_(1).png)

### Single-valued Attributes

Atribut nilai tunggal adalah atribut/properti dari sebuah entitas yang hanya mempunyai satu nilai. Contohnya adalah atribut nama pada entitas mahasiswa, pada entitas mahasiswa, mahasiswa hanya memiliki 1 nama, jadi pada atribut nama dapat katakan bahwa itu adalah atribut nilai tunggal.

![single-valued.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/single-valued.png)

### Multi-Valued Attributes

Atribut nilai jamak adalah atribut/properti dari sebuah entitas yang memiliki beberapa nilai. Contohnya pada entitas mahasiswa terdapat atribut mata kuliah. Value dari mata kuliah yang diambil oleh mahasiswa dapat lebih dari satu jadi atribut mata kuliah dapat dikatakan bahwa itu adalah atribut nilai jamak.

![multi-val.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/multi-val.png)

### Derived Attributes

Atribut turunan adalah atribut/properti dari sebuah entitas yang berkaitan dengan atribut lain. Contohnya pada entitas mahasiswa ada atribut umur, umur mahasiswa bisa didapatkan dengan operasi pengurangan tanggal_sekarang - tanggal_lahir

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled.png)

## 3. Hubungan (*Relationship*)

Hubungan (*Relationship*) adalah hubungan antar entitas yang dapat diidentifikasi dan bermakna. Contohnya pada entitas mahasiswa dan entitas dosen, hubungan dapat berupa **memiliki** hubungan dalam ERD dapat digambarkan sebagai berikut :

![relasi.drawio.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/relasi.drawio.png)

- mahasiswa **memiliki** dosen wali

hubungan dalam ERD dapat digambarkan sebagai berikut :

![relasi1.drawio (1).png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/relasi1.drawio_(1).png)

> hubungan dapat memiliki atribut dikarenakan setiap mahasiswa mempunyai dosen wali, karena mahasiswa dan dosen wali berhubungan dengan hubungan memiliki dosen wali. maka dapat dikatakan bahwa relasi ini juga sebuah entitas. didalam entitas dosen wali ini terdapat atribut misalnya id_dosen_wali sebagai primary key.
> 

## 4. Kardinalitas

**Kardinalitas** dalam ERD menggambarkan hubungan antara entitas-entitas dalam database relasional. Kardinalitas menunjukkan jumlah entitas yang terlibat dalam hubungan tersebut. Terdapat tiga jenis kardinalitas yang umum digunakan dalam ERD:

![Screenshot 2023-10-01 145559.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_145559.png)

1. **One-to-One (1:1)**: Setiap entitas pada satu sisi hubungan hanya berhubungan dengan satu entitas pada sisi lainnya. Contohnya, setiap ********************penduduk******************** hanya memiliki satu **Kartu Tanda Penduduk.**
    
    ![Screenshot 2023-10-01 191753.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_191753.png)
    
2. **One-to-Many (1:N)**: Setiap entitas pada satu sisi hubungan dapat berhubungan dengan banyak entitas pada sisi lainnya. Contohnya, satu departemen dapat memiliki banyak karyawan, tetapi setiap karyawan hanya terkait dengan satu departemen.

    ![erd-1m.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/erd-1m.png)

1. **Many-to-Many (N:M)**: Banyak entitas pada satu sisi hubungan dapat berhubungan dengan banyak entitas pada sisi lainnya. Untuk mengimplementasikan hubungan many-to-many, diperlukan entitas tengah (join table) yang menghubungkan entitas-entitas tersebut. Contohnya, banyak mahasiswa dapat mengambil banyak mata kuliah, dan satu mata kuliah dapat diambil oleh banyak mahasiswa.
    
    ![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%201.png)
    

Kardinalitas dalam ERD membantu menggambarkan bagaimana entitas-entitas saling terkait dan berinteraksi dalam database relasional.

## 5. Agregasi

Agregasi adalah suatu keadaan dimana satu relasi yang hanya dapat direalisasikan setelah relasi yang ada terlebih dahulu. Agregasi digunakan ketika kita akan memodelkan sebuah hubungan relasi yang melibatkan kumpulan relasi.

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%202.png)

Hasil dari suatu agregasi akan menjadi sebuah entitas baru yang akan ber-relasi dengan Entitas lain. Dan Agregasi juga dilakukan untuk menghindari adanya relasi multi entitas.

## 6. Normalisasi.

Normalisasi dalam database adalah proses pengelompokan atribut data yang membentuk entitas sederhana, non-redundant, fleksibel dan mudah berdaptasi. Sehingga dapat dipastikan bahwa database yang dibuat berkualitas baik.

**Tujuan Normalisasi Database.**

1. Menghilangkan dan mengurangi redudansi data.
2. Memastikan dependensi data (data berada pada tabel yang tepat).

**Kemungkinan yang terjadi jika database belum dinormalisasi.**

1. Insert Anomali.
    
    Situasi dimana tidak memungkinkan untuk memasukkan beberapa jenis data secara langsung di database.
    
2. Update Anomali.
    
    Situasi dimana nilai yang diubah mengakibtkan inkonsistensi database, artinya data yang diubah tidak sesuai dengan yang diinginkan.
    
3. Delete Anomali.
    
    Penghapusan data tidak sesuai yang diharapkan, artiya data yang seharusnya tidak terhapus malah terhapus.
    

### Cara melakukan normalisasi.

Perhatikan tabel database dibawah.

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%203.png)

1. **1NF** 
    
    Suatu table dikatakan 1NF jika dan hanya jika setiap atribut data tersebut hanya memiliki nilai tunggal dalam satu baris.
    
    ![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%204.png)
    
2. **2NF**
    
    Syarat 2NF adalah tidak diperkenankan adanya partial ****“**********************Fuctional depedency”************************ kepada primary key dalam sebuah tabel. ***Functional depedency*** adalah setiap atribut yang bukan kunci (non key) bergantung secara fungsional terhadap ****primary key.****
    
    ![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%205.png)
    
3. **3NF.**
    
    Pada 3NF tidak diperbolehkan adanya partial ***“transitive depedency”*** dalam sebuah tabel. ***transitive depedency*** biasanya terjadi pada tabel hasil relasi, atau kondisi dimana terdapat tiga atribut A, B, C. Kondisinya adalah A → B dan B → C. Maka C dikatakan sebagai ***transitive depedency*** terhadap A melalui B.
    
    ![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%206.png)
    

# Membuat model database relasional dengan ERD

---

Untuk membuat sebuah model tabel database dengan ERD, maka yang diperlukan adalah pengetahuan tentang ERD seperti Entitas, Atribut, Relasi, dan Kardinalitas. Perhatikan contoh dibawah.

### 1. **Transformasi ERD dengan kardinalitas one-to-one menjadi tabel relational database.**

![Screenshot 2023-10-01 191753.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_191753%201.png)

menjadi

![Screenshot 2023-10-01 194259.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_194259.png)

### 2. **Transformasi ERD dengan kardinalitas one-to-many menjadi tabel relational database.**

![erd-1m.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/erd-1m%201.png)

menjadi

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%207.png)

### 3. **Transformasi ERD dengan kardinalitas many-to-many menjadi tabel relational database.**

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%208.png)

menjadi

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%209.png)

# MySQL / MariaDB

---

### A. Syntax dalam MySQL / MariaDB.

*Syntax* pada SQL dapat disebut juga SQL *statements*. *Statements* tersebut juga terdiri dari beberapa *commands*. Tanpa *statements* dan *command* yang sesuai, maka perintah SQL tidak akan berjalan dan hanya akan menghasilkan pesan *error*.

*Commands* tersebut memiliki fungsi yang berbeda dan dikelompokkan menjadi beberapa kelompok berdasarkan fungsinya.

- **Data Definition Language (DDL)**
    
    DDL adalah *command* SQL yang digunakan untuk mendefinisikan struktur database. DDL termasuk CREATE, ALTER, dan DROP *command*, yang digunakan untuk membuat, mengubah, atau menghapus objek *database* seperti tabel, *view*, **index**, dan **constraint**.
    
    - ************Index :************ Cara kerja dari teknik *index *****ini adalah dengan membuat *pointer* atau penanda yang tertanam pada *row* atau baris dari kolom yang dipilih. Dengan kata lain, saat menjalankan operasi *query*, *database* tidak perlu membaca seluruh tabel tersebut namun hanya perlu mencari *pointer* yang sudah ditanam tersebut.
    - ************************Constraint :************************ *constraint* atau batasan adalah dengan mendefinisikan sebuah aturan *constraint* pada level tabel atau pada umumnya ditentukan pada sebuah kolom. *Constraint* biasa digunakan ketika melakukan pembuatan tabel baru (query *create table*) dan pembaharuan sebuah kolom (*query alter table*).
- **Data Manipulation Language (DML)**
    
    DML adalah *command* SQL yang digunakan untuk mengelola data dalam *database*. DML termasuk SELECT, INSERT, UPDATE, dan DELETE *command*, yang digunakan untuk memanipulasi data dalam tabel.
    
- **Data Control Language (DCL)**
    
    DCL adalah *command* SQL yang digunakan untuk mengatur hak akses dan izin pengguna pada *database*. DCL termasuk GRANT dan REVOKE *command*, yang digunakan untuk memberikan atau mencabut hak akses pengguna pada objek *database*.
    
- **Transaction Control Language (TCL)**
    
    TCL adalah *command* SQL yang digunakan untuk mengelola transaksi dalam *database*. TCL termasuk BEGIN TRANSACTION, COMMIT, dan ROLLBACK *command*, yang digunakan untuk memulai, mengakhiri, atau membatalkan transaksi dalam *database*.
    
### Cara Penulisan SQL Syntax
Di SQL, jika ingin menuliskan **select** atau **SELECT** ataupun **Select** tidak akan menghasilkan *output* error karena *syntax* SQL ***tidak case sensitive***. Kemudian, dalam menulis *statement* SQL juga harus menyebutkan nama tabel yang ingin dibuat/ digunakan dalam menjalankan *query*. Untuk nama tabelnya juga tidak *case sensitive.*
    

### B. Tipe Data Pada MySQL / MariaDB.

- **Tipe Data numerik.**
    
    
    | Data Type | Keterangan |
    | --- | --- |
    | TINYINT | Bilangan bulat terkecil, dengan jangkauan untuk bilangan
    bertanda: -128 sampai dengan 127 dan untuk yang tidak
    bertanda : 0 s/d 255. |
    | SMALLINT | Bilangan bulat dengan jangkauan untuk bilangan bertanda :
    -32768 s/d 32767 dan untuk yang tidak bertanda : 0 s/d 65535 |
    | MEDIUMINT | Bilangan bulat dengan jangkauan untuk bilangan bertanda :
    -8388608 s/ d 8388607 dan untuk yang tidak bertanda : 0 s/d
    16777215 |
    | INT | Bilangan bulat dengan jangkauan untuk bilangan bertanda :
    -2147483648 s/d 2147483647 dan untuk yang tidak bertanda : 0 s/d
    4294967295 |
    | BIGINT | Bilangan bulat terbesar dengan jangkauan untuk bilangan
    bertanda : -9223372036854775808 s/d 9223372036854775807
    dan untuk yang tidak bertanda : 0 s/d 1844674473709551615 |
    | FLOAT, REAL,
    DOUBLE | Bilangan pecahan |
    | DECIMAL,
    NUMERIC | Bilangan pecahan, misalnya DECIMAL(5,2
    dapat digunakan untuk menyimpan bilangan
    -99,99 s/d 99,99 |
- **Tipe Data String.**
    
    
    | Data Type | Keterangan |
    | --- | --- |
    | CHAR | Mampu menangani data hingga 255 karakter. |
    | VARCHAR | Mampu menangani data hingga 255 karakter.
    Tipe data VARCHAR tidak mengharuskan
    untuk memasukkan data sepanjang yang telah
    ditentukan. |
    | TINYBLOB,
    TINYTEXT | Mampu menangani hingga 255 byte |
    | BLOB, TEXT | Mampu menangani hingga 65.535 byte (64 KB) |
    | MEDIUMBLOB,
    MEDIUMTEXT | Ukuran 16777215 byte. Mampu menyimpan data hingga 18 MB.  |
    | LONGBLOB,
    LONGTEXT | Ukuran 4294967295 byte. Mampu menyimpan data
    hingga berukuran GIGA BYTE. Tipe data ini
    memiliki batas penyimpanan hingga 4 GB. |
    | ENUM(‘nilai1’,’nil
    ai2’,...,’nilaiN’) | Ukuran 1 atau 2 byte. Tergantung jumlah nilai
    enumerasinya (maksimum 65535 nilai) |
    | SET(‘nilai1’,’nilai2
    ’,...,’nilaiN’) | 1,2,3,4 atau 8 byte, tergantung jumlah anggota
    himpunan (maksimum 64 anggota) |
- ********Tipe Data Date.********
    
    
    | Type Data | Keterangan |
    | --- | --- |
    | DATETIME | Kombinasi tanggal dan jam, dengan jangkauan dari
    ‘1000-01-01 00:00:00’s/d ‘9999-12-31 23:59:59’ |
    | DATE | Tanggal dengan jangkauan dari ‘1000-01-01’s/d ‘9999-12-31’ |
    | TIMESTAMP | Kombinasi tanggal dan jam, dengan jangkauan dari
    ‘1970-01-01 00:00:01’s/d ‘2038-01-19 03:14:07 |
    | TIME | Waktu dengan jangkauan dari ‘-838:59:59’s/d ‘838:59:59’ |
    | YEAR | Data tahun antara 1901 s/d 2155 |

# DDL (*Data Definition language*)

---

## 1. *Constraint*

****SQL Constraint :**** mendefinisikan sebuah aturan *constraint* pada level tabel atau pada umumnya ditentukan pada sebuah kolom, Dengan menggunakan fungsi *constraint* ini, kita dapat menjaga konsistensi data dan validitas dari data itu sendiri.

### Jenis Constraint

1. **NOT NULL *constraint***
2. **PRIMARY KEY *constraint***
3. **FOREIGN KEY *constraint***
4. **UNIQUE *constraint***
5. **CHECK *constraint***
6. **DEFAULT *constraint***

- buka XAMPP, mengaktifkan Apache dan MySQL
- lalu buka admin pada bagian MySQL
    
![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2010.png)
    
- buka kolom SQL

![1.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/1.png)

## 2. CREATE

1. **CREATE DATABASE**

format syntax untuk membuat database :

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2011.png)

Membuat Database “praktikum1”

![3.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/3.png)

ketik syntax diatas lalu tekan “Kirim” / “Go”

2. **CREATE TABLE**

format syntax untuk membuat tabel :

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2012.png)

Membuat Tabel Mahasiswa

![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2013.png)

Buatlah Tabel Dosen dengan kolom NID (PK), Nama Dosen, Jenis Kelamin !

Buatlah Tabel Matakuliah dengan kolom KODE_MK, Nama_MK, SKS !

## 3. ALTER
    
**A. Menambah Kolom**
    
Format Syntax untuk Menambah Kolom :
    
![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2014.png)
    
Contoh : 
    
![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2015.png)
    
**B. Menghapus Kolom**
    
Format Syntax untuk Menghapus Kolom tertentu :
    
![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2016.png)
    
**C. Edit Kolom**
    
Format Syntax untuk Edit Kolom tertentu :
    
![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2017.png)
    
## 4. DROP
Format Syntax untuk menghapus Tabel :
    
![Untitled](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Untitled%2018.png)
    
## 5. TRUNCATE
Format Syntax untuk menghapus Isi data pada tabel :
    
![Screenshot 2023-10-01 200341.png](Modul%202%20Entity%20Relational%20Diagram%20dan%20Relational%20D%200da83263c616492990d6b23f59dd2891/Screenshot_2023-10-01_200341.png)


# Penugasan Modul.

Perhatikan soal dibawah!

Kahil ingin membuat sebuah sistem penilaian pada aplikasi jual beli mobil. Pada aplikasi tersebut pasti mempunyai pembeli yang menilai produk dan produk yang di nilai. Sebelum melakukan penilaian pembeli pastinya harus membeli produk terlebih dahulu. Pembeli mempunyai detail sebagai berikut nama depan, nama belakang (diambil pada nama lengkap), alamat, jenis kelamin, dan tanggal lahir. Untuk Produk mempunyai detail seperti judul produk, deskripsi produk, dan harga produk. Pembelian memiliki detail sebagai berikut tanggal pembelian, dan jumlah pembelian. Penilaian hanya memiliki penilaian yang berupa angka 1 - 5.

Buatlah :

- ERD dari soal diatas
- Database dari soal diatas
- Kemudian tambahan kolom gambar pada tabel produk.