# Daftar Isi
1. Instalasi XAMPP
2. Pengenalan Database
3. Hands-on
4. Database Relasional

# Instalasi XAMPP
1. Download XAMPP sesuai dengan OS yang dipakai pada link berikut [Download XAMPP](https://www.apachefriends.org/download.html).

    ![Tampilan Website Download XAMPP](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-1.jpg?raw=true)

2. Pilih XAMPP dengan versi PHP terbaru (8.24) ~(25/09/2023).

3. Setelah berhasil didownload, lakukan instalasi seperti petunjuk di bawah ini.

    - Buka file installer dan apabila muncul peringatan seperti di bawah ini, Klik `OK`

        ![langkah-install-1](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-2.jpeg?raw=true)

    - Klik `next`.

        ![langkah-install-2](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-3.PNG?raw=true)

        ![langkah-install-3](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-4.PNG?raw=true)
    - Pilih direktori untuk menyimpan (disarankan default) lalu klik `next`.

        ![langkah-install-4](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-5.PNG?raw=true)

    - Klik `next`.

        ![langkah-install-5](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-6.PNG?raw=true)

        ![langkah-install-6](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-7.PNG?raw=true)

    - Tunggu proses instalasi hingga selesai dan klik `next` jika sudah selesai

        ![langkah-install-7](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-8.PNG?raw=true)

    - Klik `finish` dan akan tampil XAMPP control panel.

        ![langkah-install-8](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-9.PNG?raw=true)

    - Klik `start` pada Apache dan MySQL.

        ![langkah-install-9](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-10.PNG?raw=true)

    - Buka browser dan ketikkan URL (localhost/dashboard/phpinfo.php). Apabila PHP Version sudah sesuai dengan yang kita download, maka proses instalasi telah berhasil.

        ![langkah-install-10](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-11.PNG?raw=true)

    - Kembali ke XAMPP control panel dan klik `Admin` pada MySQL untuk membuka laman phpmyadmin. Atau dapat dengan mengetikkan URL (localhost/phpmyadmin) pada browser.

        ![langkah-install-11](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-12.PNG?raw=true)

    - Muncul tampilan seperti gambar di bawah dan proses instalasi selesai.

        ![langkah-install-12](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/instal-xampp/langkah-13.PNG?raw=true)

# Pengenalan Database
## Data
````
data adalah kenyataan untuk menggambarkan suatu kejadian serta,
merupakan suatu bentuk yang masih mentah dan belum dapat bercerita banyak
sehingga perlu diolah lebih lanjut melalui suatu model untuk menghasilkan informasi. 
(Tata Sutabri, dalam buku Konsep Sistem Informasi)
````
Data dapat berupa angka, teks, gambar, suara, atau jenis informasi lainnya yang dapat direkam. Contoh data termasuk:

* Angka: 42, 3.14
* Teks: "Halo, dunia!"
* Gambar: [Link ke Gambar](https://chat.openai.com/c/url_gambar)
* Suara: [Link ke File Audio](https://chat.openai.com/c/url_audio)

Contoh data dapat berupa seperti ini:
| Nama |Nim  |Sks yang diambil |
|--|--|--|
| Doni | 1203210005 | 24 |
| Toni | 1203210007 | 21 |

## Database
````
Basis data adalah kumpulan data yang diatur dan disimpan dengan cara yang memungkinkan akses
dan pengambilan yang mudah. Serta dapat menyimpan berbagai macam tipe data, 
termasuk teks, nomor, gambar, dan tipe data lainnya.
````
Dalam Dunia nyata kita lebih sering menyimpan data data seperti kartu keluarga, ijazah, sertifikat tanah ke dalam berkas penyimpanan misalnya lemari berkas. Lemari berkas dalam konteks ini dapat dikatakan sebagai database/basis data dimana tugas dari lemari berkas adalah menyimpan sekumpulan data.

Dalam penataan berkas/data tersebut kita juga tidak semena-mena menempatkan berkas/data tersebut. Kita dapat mengkategorikannya berdasarkan jenis, nama, tanggal pembuatan atau yang lainnya. Hal ini dilakukan bukan tanpa alasan, karena kita ingin ketika kita sedang mencari data tersebut dapat menemukannya dengan mudah.

Terdapat beberapa macam database yang ada saat ini. Database ini terbagi bagi karena fungsionalitas dari database tersebut. Untuk macam-macam database dapat dilihat pada link berikut : https://www.geeksforgeeks.org/types-of-databases/

# Hands-on
## Username, Password, dan Hak Akses

Keamanan sangatlah penting dalam dunia database. Database diibaratkan seperti brangkas penyimpanan dokumen rahasia yang perlu dijaga. Kalian pasti tidak rela jika brangkas dokumen rahasia tersebut tidak terdapat pengaman, atau pengelola/pengakses brangkas tersebut tidak diatur. Sama, dalam dunia database kalian perlu untuk mengatur keamanan dari database kalian, mulai dari siapa yang berhak mengakses database tersebut, kemudian hak akses apa saja yang diberikan.

### Username dan Password

berikut adalah contoh sederhana dari pengaturan hak akses dan keamanan :
* Pergi kehalaman `home` phpmyadmin

    ![halaman home](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-1.png)

* Pilih menu `User accounts`

    ![menu user accounts](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-2.png)

Disini kalian telah melihat daftar akun user yang dapat mengakses database kalian. Akun User Default yang disediakan adalah
`Username : root`
`Password : <no password>`

Hal ini pasti rentan akan keamanan. Pasti kalian pernah juga mendengar jika banyak database-database yang terekspos karena kurangnya keamanan. Agar lebih aman kalian bisa menambahkan password pada user `root`.
* pilih menu `edit privilages` pada user `root` dengan hostname `localhost`

    ![menu edit previlages](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-3.png)

* pilih menu `change password`

    ![change password](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-4.png)

* isikan password kalian `(pastikan password kuat, aman, dan mudah diingat)`

    ![isi password](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-5.png)

* Setelah itu klik `Go` untuk menyimpan perubahan

Untuk menerapkan keamanan tadi, kalian dapat menyetel file config dari phpmyadmin. karena sebelumnya phpmyadmin akan melakukan login secara otomatis. Untuk mengatur file confignya, kalian dapat mengikuti langkah-langkah berikut:
* pergi ke folder instalasi xampp kamu, kemudian pilih folder phpmyadmin

    ![folder config phpmyadmin](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-15.png)

* kemudian pilih file `config.inc`, silahkan buka file dengan text editor atau IDE

    ![config.inc](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-16.png)

* kemudian ubah `auth_type` menjadi `cookie` yang sebelumnya adalah `config`

    ![ubah auth](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-17.png)

* kemudian simpan perubahan dari file tersebut dengan `ctrl + s`

![halaman utama](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-18.png)

kemudian ketika kamu membuka ulang atau merefresh page phpmyadmin di browser akan tampil seperti gambar diatas.

> dengan begini database akan jauh lebih aman.

kamu bisa menginputkan username dan password yang telah kamu buat sebelumnya `(pastikan menginputkan dengan benar)`.

> setelah melakukan login kamu akan melihat halaman home dari phpmyadmin

### Hak Akses

Untuk menambahkan akun atau hak akses tertentu pada suatu akun dapat dilakukan dengan langkah-langkah berikut:
* Pilih menu `User accounts`

    ![menu user accounts](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-2.png)

* disini terdapat list user atau akun

    ![list user](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-19.png)

* untuk menambahkan akun, klik `add user account`

    ![add user](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-20.png)

* kemudian isi semua data, seperti `username`, `hostname`, `password`, `privilage`, dan lain-lain

    ![input data akun](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-21.png)

* setelah selesai klik `Go` pada bagian kiri bawah halaman

## Membuat Database Baru
Jika kita ingin membuat database baru dapat menggunakan langkah-langkah berikut:
* klik `new`

    ![klik new](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-10.png)

* Ketikkan nama dari database kita `(jangan gunakan nama database yang telah digunakan)`

    ![ketik nama database](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-11.png)

* kemudian klik `create`

> selamat anda sudah membuat database baru.

## Cara Query Database
**Query database** adalah permintaan atau perintah yang digunakan untuk mengambil atau memanipulasi data dari sebuah basis data (database). Query digunakan untuk berinteraksi dengan basis data, mengekstrak informasi yang diperlukan, memasukkan data baru, memperbarui data yang ada, atau menghapus data dari basis data. Query database umumnya ditulis dalam bahasa query khusus, seperti SQL (Structured Query Language).

Untuk melakukan query terdapat 2 cara yaitu dapat menggunakan `console` yang ada pada phpmyadmin atau menggunakan software pendukung seperti `datagrip`.
* `console` phpmyadmin dapat diakses dengan menekan `console` yang ada pada bagian bawah halaman

    ![console](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-12.png)

* berikut adalah tampilannya dengan contoh query yaitu `SELECT * FROM mahasiswa` atau `DROP TABLE mahasiswa`

    ![tampilan console](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-13.png)

jika menggunakan software tambahan seperti `datagrip` kalian bisa menuju website berikut https://www.jetbrains.com/datagrip/ . Kalian dapat mendownload dan menginstallnya jika ingin menggunakan aplikasi tambahan ini.
* berikut adalah tampilannya

    ![datagrip](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/hands-on/gambar-14.png)

# Database Relasional
Database relasional adalah jenis database yang didasarkan pada model data relasional. Berikut adalah beberapa konsep dasar yang ada dalam database relasional:

1. *Tabel (Table)*: Tabel adalah struktur dasar dalam database relasional. Ini digunakan untuk mengorganisir data menjadi baris dan kolom. Setiap tabel mewakili jenis entitas atau item tertentu, seperti tabel "Mahasiswa" untuk menyimpan data mahasiswa.

    ![tabel](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/tabel_mahasiswa.PNG?raw=true)
2. *Baris (Row)*: Setiap baris dalam tabel disebut juga sebagai "record" atau "tuple." Ini mewakili satu entitas atau item individu dalam dataset dan berisi data yang terkait dengan entitas tersebut.

    ![baris](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/baris.PNG?raw=true)
3. *Kolom (Column)*: Kolom dalam tabel adalah atribut atau karakteristik yang mendefinisikan data yang disimpan dalam tabel. Misalnya, dalam tabel "Mahasiswa", kolom  mencakup nim, nama, alamat, dan sebagainya.

    ![kolom](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/kolom.PNG?raw=true)
4. *Kunci Utama (Primary Key)*: Kunci utama adalah satu atau lebih kolom dalam tabel yang memiliki nilai unik untuk setiap baris dalam tabel. Ini digunakan untuk mengidentifikasi setiap baris secara unik. Misalnya, NIM dapat berfungsi sebagai kunci utama dalam tabel "Mahasiswa" karena NIM antar mahasiswa bernilai unik atau tidak mungkin sama.

    ![pk](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/primary-key.PNG?raw=true)
5. *Kunci Asing (Foreign Key)*: Kunci asing adalah kolom dalam tabel yang mengacu pada kunci utama di tabel lain. Ini digunakan untuk menghubungkan atau merelasikan dua tabel. Misalnya, dalam hubungan antara tabel "Mahasiswa" dan "Mata_Kuliah," kunci asing dapat digunakan untuk menghubungkan Mahasiswa dengan Mata Kuliah yang bersangkutan. Dalam kasus ini, mahasiwa dan mata kuliah memiliki Primary key-Nya masing-masing, untuk membuat relasi antar mahasiswa dan mata kuliah, primary key dari tabel mata kuliah akan menjadi foreign key dari tabel mahasiswa. Sehingga akan terbentuk relasi Mahasiswa mengambil Mata Kuliah dengan kode_mata_kuliah x.
    - Tabel mata_kuliah

        ![tabel_mata_kuliah](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/tabel_mata_kuliah.PNG?raw=true)

    - Tabel mahasiswa

        ![fk](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/foreign_key.PNG?raw=true)
6. **Indeks (Index)**: Indeks adalah struktur data yang digunakan untuk meningkatkan kecepatan pencarian dan akses ke data dalam tabel. Indeks biasanya dibuat pada salah satu atau beberapa kolom dalam tabel.

7. **Query**: Query adalah perintah yang digunakan untuk mengambil, menyisipkan, memperbarui, atau menghapus data dari tabel dalam database relasional. Bahasa yang umum digunakan untuk menulis query adalah SQL (Structured Query Language).

    ![query](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/query.PNG?raw=true)
8. **Skema (Schema)**: Skema adalah struktur tabel, hubungan, dan konstrain data dalam database. Ini mendefinisikan bagaimana data diorganisir dalam database, termasuk tipe data untuk setiap kolom, kunci utama, kunci asing, dan lainnya.

    ![skema](https://github.com/informatika-itts/modul-perancangan-basis-data/blob/main/assets-praktikum/praktikum-1/database-relational/skema.PNG?raw=true)
9. **Transaksi (Transaction)**: Transaksi adalah unit kerja yang melibatkan satu atau lebih operasi database. Transaksi harus memiliki sifat-sifat ACID (Atomicity, Consistency, Isolation, Durability) untuk memastikan integritas dan konsistensi data.

10. **Normalisasi**: Normalisasi adalah proses desain database yang bertujuan untuk mengurangi redundansi data dan meningkatkan integritas data. Ini melibatkan pemisahan data menjadi beberapa tabel dan penggunaan kunci asing untuk mempertahankan hubungan antar tabel.

11. **Integritas Data**: Integritas data adalah prinsip yang memastikan bahwa data dalam database adalah akurat, konsisten, dan valid. Ini dapat dijaga melalui penggunaan kunci utama, kunci asing, dan konstrain data.

12. **Triggers dan Prosedur Penyimpanan**: Database relasional dapat memiliki triggers (kode yang dijalankan secara otomatis saat peristiwa tertentu terjadi) dan prosedur penyimpanan (blok kode yang dapat dipanggil untuk melakukan operasi tertentu dalam database).


