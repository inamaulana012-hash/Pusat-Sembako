# BAB I: PENDAHULUAN

## A. LATAR BELAKANG

Pusat Sembako merupakan sebuah toko retail yang menyediakan kebutuhan pokok (sembako) bagi masyarakat luas. Seiring dengan meningkatnya permintaan pelanggan dan kompleksitas operasional bisnis, toko ini menghadapi beberapa tantangan dalam mengelola transaksi, inventori produk, dan data pelanggan secara efisien.

Sistem operasional yang masih bersifat manual menyebabkan:
- **Kesulitan dalam pencatatan transaksi** - Data penjualan dicatat secara manual, rentan kesalahan
- **Manajemen stok yang tidak efisien** - Tidak ada sistem real-time untuk monitoring stok barang
- **Proses checkout yang lamban** - Pelanggan harus antri lama saat proses pembayaran
- **Laporan penjualan yang tidak akurat** - Sulit menganalisis tren penjualan dan performa bisnis
- **Tidak ada loyalty program** - Pelanggan tidak mendapat insentif untuk berbelanja kembali

Untuk mengatasi masalah tersebut, diperlukan sebuah solusi sistem informasi berbasis web yang dapat mengintegrasikan seluruh proses bisnis Pusat Sembako, mulai dari manajemen produk, transaksi penjualan, verifikasi pembayaran, hingga analisis laporan penjualan.

---

## B. IDENTIFIKASI MASALAH

1. **Sistem Pencatatan Manual** - Transaksi dan stok dicatat secara manual di buku besar
2. **Data Tidak Terstruktur** - Informasi pelanggan dan penjualan tersebar di berbagai tempat
3. **Proses Pembayaran Rumit** - Tidak ada sistem otomatis untuk verifikasi pembayaran transfer bank/e-wallet
4. **Laporan Tidak Real-Time** - Admin kesulitan mendapatkan informasi penjualan real-time
5. **Tidak Ada Sistem Loyalitas** - Pelanggan setia tidak mendapat reward atau poin
6. **Pengambilan Barang Tidak Terkoordinasi** - Tidak ada sistem status pesanan yang jelas
7. **Kesulitan Dalam Pencarian Produk** - Pelanggan sulit mencari produk yang mereka inginkan

---

## C. PERUMUSAN MASALAH

1. Bagaimana merancang dan membangun sistem informasi terintegrasi untuk Pusat Sembako yang dapat mengelola transaksi, stok barang, dan data pelanggan secara efisien?

2. Bagaimana mengimplementasikan fitur pencarian produk, keranjang belanja, dan checkout otomatis untuk meningkatkan pengalaman pelanggan?

3. Bagaimana sistem dapat memverifikasi pembayaran transfer bank dan e-wallet secara otomatis dan aman?

4. Bagaimana merancang dashboard analytics yang dapat memberikan laporan penjualan real-time kepada admin?

5. Bagaimana mengintegrasikan sistem loyalitas dengan program poin reward untuk meningkatkan retensi pelanggan?

---

## D. METODE PENELITIAN

### 1. Jenis Penelitian
**Research and Development (R&D)** - Penelitian yang berfokus pada pengembangan dan implementasi sistem informasi.

### 2. Teknik Pengumpulan Data
- **Observasi Lapangan** - Mengamati proses bisnis Pusat Sembako secara langsung
- **Wawancara** - Melakukan wawancara dengan pemilik toko, kasir, dan pelanggan untuk memahami kebutuhan
- **Studi Literatur** - Mempelajari teori-teori dan best practices dalam pengembangan e-commerce
- **Analisis Sistem yang Ada** - Menganalisis sistem manual yang sedang berjalan dan identifikasi kelemahan

### 3. Subjek Penelitian
- **Admin** - Mengelola produk, kategori, laporan penjualan
- **Kasir** - Melayani transaksi dan verifikasi pembayaran
- **Pelanggan** - Melakukan pembelian produk

### 4. Waktu Penelitian
- **Observasi & Analisis** - Minggu 1-2
- **Pengembangan Sistem** - Minggu 3-8
- **Testing & Debugging** - Minggu 9-10
- **Dokumentasi** - Minggu 10-12

---

## E. METODE PENGEMBANGAN PERANGKAT LUNAK

### 1. Model Pengembangan: SDLC (Software Development Life Cycle) - Agile Model

Alasan memilih Agile:
- Fleksibel terhadap perubahan kebutuhan
- Iterasi cepat dengan feedback dari user
- Delivery bertahap (incremental)

### 2. Tahapan Pengembangan

#### **FASE 1: PLANNING & REQUIREMENT ANALYSIS**
- Identifikasi kebutuhan sistem dari semua stakeholder
- Membuat user stories dan use cases
- Menentukan prioritas fitur
- Estimasi waktu dan resources

**Output:** Dokumen requirement, user stories, use cases diagram

#### **FASE 2: DESIGN**
- Desain database (ERD - Entity Relationship Diagram)
- Desain UI/UX dengan wireframe dan mockup
- Desain arsitektur sistem (MVC pattern)
- Desain API endpoints

**Output:** ERD, Wireframe, Database schema, API documentation

#### **FASE 3: DEVELOPMENT/CODING**
- Setup environment (CodeIgniter 4, MySQL, PHP)
- Implementasi backend (Controllers, Models, Database)
- Implementasi frontend (Views, CSS, JavaScript)
- Integrasi payment gateway (transfer bank, e-wallet)
- Implementasi sistem loyalitas poin

**Output:** Source code, database migration scripts

#### **FASE 4: TESTING**
- Unit Testing - Test individual functions
- Integration Testing - Test sistem secara keseluruhan
- User Acceptance Testing (UAT) - Test dengan pengguna nyata
- Performance Testing - Testing kecepatan dan stabilitas

**Output:** Test report, bug fixes

#### **FASE 5: DEPLOYMENT**
- Setup production server
- Deploy ke hosting
- Setup Hugging Face Spaces untuk demo
- Data migration dari sistem lama

**Output:** Live system, Demo interface, Documentation

#### **FASE 6: MAINTENANCE & SUPPORT**
- Monitor sistem
- Fix bugs yang ditemukan
- Update fitur sesuai feedback user
- Backup data regular

**Output:** Maintenance log, Update release notes

### 3. Tools & Technology Stack

| Komponen | Tool/Framework |
|----------|---|
| Backend | PHP 8.1+, CodeIgniter 4 |
| Frontend | HTML5, Bootstrap 5, JavaScript |
| Database | MySQL/MariaDB |
| Version Control | Git, GitHub |
| Demo Platform | Hugging Face Spaces (Streamlit/Flask) |
| Design Tool | Figma/Draw.io |
| Testing | PHPUnit, Postman |

---

## F. TUJUAN PENELITIAN

1. Merancang dan membangun sistem informasi terintegrasi untuk Pusat Sembako
2. Meningkatkan efisiensi operasional dalam proses transaksi dan manajemen stok
3. Memberikan pengalaman berbelanja yang lebih baik bagi pelanggan
4. Menyediakan analytics dashboard untuk keputusan bisnis yang lebih baik
5. Mengimplementasikan sistem loyalitas untuk meningkatkan customer retention

---

## G. MANFAAT PENELITIAN

### Manfaat Teoritis
- Menambah pengetahuan tentang pengembangan sistem e-commerce
- Menerapkan best practices SDLC dalam proyek nyata
- Mengintegrasikan multiple payment methods dalam satu sistem

### Manfaat Praktis
- **Untuk Pusat Sembako** - Operasional lebih efisien, revenue meningkat, customer loyal
- **Untuk Kasir** - Pekerjaan lebih cepat, data terotomasi, reduce human error
- **Untuk Pelanggan** - Pengalaman belanja lebih mudah, ada reward program, tracking order
- **Untuk Admin** - Real-time analytics, better business insights, decision making lebih cepat

---

## H. RUANG LINGKUP

### In Scope (Termasuk dalam sistem):
- Manajemen kategori dan produk
- Sistem manajemen stok real-time
- Transaksi penjualan (online checkout)
- Multiple payment methods (transfer bank, e-wallet, cash)
- Verifikasi pembayaran semi-otomatis
- Sistem loyalitas poin member
- Dashboard analytics penjualan
- Halaman web belanja responsif

### Out of Scope (Tidak termasuk):
- Sistem delivery/pengiriman
- Supply chain management
- Integrasi dengan marketplace eksternal (Tokopedia, Shopee, dll)
- Sistem HRM karyawan

---
