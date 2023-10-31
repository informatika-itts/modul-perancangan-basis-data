# Fungsi Group
Fungsi kelompok (group) melakukan operasi pada dua atau lebih baris data dan memberikan satu hasil per group. Tipe-tipe fungsi group yang bisa digunakan: AVG, COUNT, MAX, MIN, SUM.

# Fungsi COUNT
Fungsi COUNT digunakan untuk menghasilkan nilai jumlah data (baris) dari sekelompok data tabel maupun view. Sintaksis (cara penulisan) dari penggunaan fungsi group :
```javascript
SELECT [DISTINCT] {*, column [alias] group_function(column)}
FROM table
[WHERE condition(s)]
[GROUP BY column]
```
Contoh untuk mencari jumlah total dari employee adalah : 
<img width="570" alt="Screenshot 2023-10-30 at 09 19 50" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/749c728a-aba9-42c0-aa7a-40e6033e166a">
```javascript
SELECT count(*) AS total_employee
FROM employee;
```
<img width="147" alt="Screenshot 2023-10-30 at 09 22 22" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/f7802ae4-2b8e-4f4a-9b1d-7961e02cd5b1">

# Fungsi AVG dan SUM
Fungsi AVG digunakan untuk menghasilkan group nilai rata-rata sekelompok nilai dari sebuah field numerik.

```javascript
SELECT AVG(nama_field)
FROM nama_tabel;
```

Contoh untuk mencari gaji (salary) rata-rata dari employee adalah.
```javascript
SELECT AVG(salary) AS avg_salary
FROM employee;
```
<img width="112" alt="Screenshot 2023-10-30 at 09 32 29" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/5ba19c2f-1332-4aed-85ce-d3498d975b0c">

Fungsi SUM ini digunakan untuk menghasilkan nilai total jumlah sekelompok dari sebuah kolom.
```javascript
SELECT SUM(nama_field)
FROM nama_tabel;
```
Contoh untuk mencari jumlah total semua gaji (salary) dari employee : 
```javascript
SELECT sum(salary) AS sum_salary
FROM employee;
```
<img width="121" alt="Screenshot 2023-10-30 at 09 35 41" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/3811b483-8b96-4b92-be3e-4ae0cbcb9c64">

# Fungsi MIN dan MAX
Fungsi MIN digunakan untuk menghasilkan nilai terendah dari sekelompok data dalam sebuah kolom.
```javascript
SELECT MIN(nama_field)
FROM nama_tabel;
```
Contoh mencari gaji terendah dari employee :
```javascript
SELECT min(salary) AS min_salary
FROM employee;
```
<img width="109" alt="Screenshot 2023-10-30 at 09 36 51" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/ea292f90-aa3b-4f27-8f29-a58cef74dcb1">

Fungsi MAX digunakan untuk menghasilkan nilai tertinggi dari sekelompok data dalam sebuah kolom.
```javascript
SELECT MAX(nama_field)
FROM nama_tabel;
```
Contoh mencari gaji tertinggi dari employee :
```javascript
SELECT max(salary) AS max_salary 
FROM employee;
```
<img width="112" alt="Screenshot 2023-10-30 at 09 40 55" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/fab832fe-69fe-4d85-8216-cd7e89140e9f">

# Mengelompokkan Data dengan GROUP BY
Perintah yang digunakan untuk mengelompokan beberapa data pada perintah SELECT.
```javascript
SELECT nama_kolom, agregasi(nama_kolom)
FROM (nama_tabel)
GROUP BY nama_kolom;
```
Contohnya:
1. Mencari banyak employee tiap-tiap department.
```javascript
SELECT dept_id, count(*) AS employee_count
FROM employee
GROUP BY dept_id
```
<img width="236" alt="Screenshot 2023-10-30 at 09 42 54" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/9301abc0-92d3-4eba-8fcd-969a372e8efa">

2. Mencari rata-rata gaji employee tiap-tiap department.
```javascript
SELECT dept_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY dept_id;
```
<img width="197" alt="Screenshot 2023-10-30 at 09 44 04" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/2f98c767-6535-4912-90aa-896766456877">

# Klausa HAVING
Fungsi HAVING berkaitan dengan GROUP BY dan AGREGASI. biasanya digunakan untuk menentukan kondisi tertentu pada GROUP BY dan kondisi tersebut berkaitan dengan fungsi agregasi. Fungsi ini memiliki kemiripan dengan WHERE dalam penggunaannya. HAVING digunakan dalam SQL karena WHERE tidak dapat digunakan dengan fungsi agregasi.
```javascript
SELECT atribut
FROM nama_tabel
GROUP BY atribut
HAVING fungsi_agregasi;
```
# Fungsi Karakter/String
Contoh mengambil department dan jumlah employee yang berada di department “Sales"
```javascript
SELECT dept_id, count(*) as number_employee
FROM employee
GROUP BY dept_id
HAVING (dept_id) = 'Sales';
```
<img width="247" alt="Screenshot 2023-10-30 at 09 45 24" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/c8778ff2-a09e-4ee3-9ced-f0143fc74fd3">

# Fungsi Bilangan
Contohnya mencari department dan rata-rata gaji dari department yang memiliki rata-rata gaji lebih dari 150.000.
```javascript
SELECT dept_id, AVG(salary) avg_salary
FROM employee
GROUP BY dept_id
HAVING AVG(salary) >150000;
```
<img width="190" alt="Screenshot 2023-10-30 at 09 46 08" src="https://github.com/informatika-itts/modul-perancangan-basis-data/assets/43565892/754d20fa-ae40-42dd-8aeb-c1a10e869b95">

# Fungsi Tanggal
Fungsi tanggal merupakan fungsi untuk mengambil sebagian data dari kolom bertipe DATE dan TIMESTAMP. Sebagai contoh, kita bisa menggunakan fungsi YEAR() untuk mengambil bagian tahun.
Contohnya:
```javascript
SELECT YEAR(CURRENT_TIMESTAMP) AS Tahun_skrg;
SELECT YEAR(GETDATE()) AS Tahun_skrg;
SELECT MONTH(CURRENT_TIMESTAMP) AS Bulan_skrg;
SELECT MONTH(GETDATE()) AS Bulan_skrg;
SELECT DAY(CURRENT_TIMESTAMP) AS Tgl_skrg;
SELECT DAY(GETDATE()) AS Tgl_skrg;
```

# TUGAS
Download database berikut jika database praktikum modul 4 kalian hilang : 
https://opensource.catkay.com/down/project/mysql/12esciadw0i1-wd13fdgv