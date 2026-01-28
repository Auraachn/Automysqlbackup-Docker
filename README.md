# 🗄️ Automated MySQL Backup System (Dockerized)

Sistem backup otomatis untuk database MySQL/MariaDB menggunakan `automysqlbackup` dan `Cron` di dalam container Docker. Solusi ini dirancang untuk mencadangkan database dari host lokal maupun container lain secara berkala dengan fitur penghapusan otomatis (retensi).

---
## 🔄 Alur Kerja Sistem Backup

Berikut gambaran alur kerja sistem backup MySQL yang berjalan di dalam container Docker:

1. **Container Backup Start**
   - Docker menjalankan container berbasis Ubuntu 22.04
   - `cron` dan `automysqlbackup` diinisialisasi oleh `entrypoint.sh`

2. **Koneksi ke Database**
   - Container terhubung ke MySQL/MariaDB melalui TCP/IP
   - Koneksi dapat menuju:
     - Database di host (`host.docker.internal`)
     - Database di container lain (Docker network)

3. **Proses Backup Otomatis**
   - Cron menjalankan `automysqlbackup` sesuai jadwal
   - Database dibackup ke file `.sql.gz`
   - File disimpan ke folder `/backups` (mapped ke host)

4. **Penyimpanan di Host**
   - Folder backup tersedia di komputer lokal
   - Data tetap aman meskipun container dihapus

5. **Retensi / Auto Cleanup**
   - Cron kedua menjalankan `find`
   - Backup lama dihapus otomatis sesuai aturan retensi

6. **Monitoring**
   - Aktivitas backup dicatat di `backup.log`
   - Aktivitas penghapusan dicatat di `retention.log`

---

## 🛠️ Komponen Utama

- **Base OS:** Ubuntu 22.04
- **Backup Tool:** `automysqlbackup`
- **Scheduler:** `Cron`
- **Database Client:** `MariaDB Client` (Koneksi via TCP/IP)

---

## 📁 Struktur Folder & File Project

Agar sistem berjalan dengan lancar, pastikan struktur folder di komputer kamu terlihat seperti ini:

```text
📂 mysql-backup-project/
├── 📄 Dockerfile              # Instruksi pembuatan image OS backup
├── 📄 entrypoint.sh           # Script konfigurasi & penjadwal otomatis
├── 📄 docker-compose.mysql-backup-test.yml   # Orchestrator container
├── 📄 manage-backup.bat       # (Opsional) Script shortcut Windows
└── 📂 backups/                # Folder otomatis (Akan muncul setelah dijalankan)
    ├── 📄 backup.log          # Log aktivitas backup
    ├── 📄 retention.log       # Log penghapusan file lama
    ├── 📂 daily/              # Hasil backup harian
    ├── 📂 weekly/             # Hasil backup mingguan
    └── 📂 monthly/            # Hasil backup bulanan
```

### 🔧 Konfigurasi Database & Koneksi

Pengaturan koneksi database berada di dalam file `entrypoint.sh`.

| Variabel | Fungsi | Keterangan |
|--------|--------|-----------|
| **DBHOST** | Alamat host database | Gunakan `host.docker.internal` untuk akses DB di host |
| **DBUSER** | Username MySQL | Pastikan memiliki akses `SELECT` & `LOCK TABLES` |
| **DBNAMES** | Daftar database | Pisahkan dengan spasi, contoh: `"db1 db2 db3"` |
| **MDB2_DUMP** | Command mysqldump | Memaksa koneksi TCP (hindari error `.sock`) |

---

### 🧹 3. Konfigurasi Retensi (Auto Delete)

Menghapus file backup lama secara otomatis menggunakan `find`.

**Retensi setiap 8 menit**
```cron
*/8 * * * * root find /backups -type f -mmin +8 -delete >> /backups/retention.log 2>&1
```

---

### 💡 4. Tips Format Waktu Cron

### 💡 Tips Format Waktu Cron

> [!TIP]
> - Setiap jam → `0 * * * *`
> - Setiap hari jam 00:00 → `0 0 * * *`
> - Retensi 7 hari → gunakan `-mtime +7`
### 🧪 Contoh Konfigurasi Nyata

Contoh potongan konfigurasi di dalam `entrypoint.sh`:

```bash
export DBHOST=host.docker.internal
export DBUSER=root
export DBNAMES="db1 db2 db3"
export MDB2_DUMP="mysqldump --protocol=TCP"
```
---
### Panduan cepat untuk mengelola container **MySQL Backup (Dockerized)**.

| Kebutuhan | Perintah |
|---------|---------|
| 🚀 First Run / Build | `docker compose -f docker-compose.mysql-backup-test.yml up -d --build` |
| 🛑 Stop & Remove (hapus network) | `docker compose -f docker-compose.mysql-backup-test.yml down` |
| ⏸️ Stop sementara | `docker compose -f docker-compose.mysql-backup-test.yml stop` |
| ▶️ Start kembali | `docker compose -f docker-compose.mysql-backup-test.yml start` |
| 🧊 Pause container | `docker compose -f docker-compose.mysql-backup-test.yml pause` |
| 🔥 Unpause container | `docker compose -f docker-compose.mysql-backup-test.yml unpause` |
| 🔄 Rebuild setelah ubah config | `docker compose -f docker-compose.mysql-backup-test.yml up -d --build` |
| 🔍 Cek container aktif | `docker ps` |
| 📜 Lihat log backup | `docker logs mysql-backup` |
| 🐚 Masuk ke container | `docker exec -it mysql-backup bash` |

