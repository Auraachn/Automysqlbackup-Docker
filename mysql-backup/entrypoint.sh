#!/bin/bash
set -e

echo "=== MySQL Backup Container Starting ==="

# =============================
# Install packages (PASTI ADA)
# =============================
export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install -y automysqlbackup cron mariadb-client tzdata

# =============================
# Set timezone WIB (system)
# =============================
ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
echo "Asia/Jakarta" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata

# =============================
# Logs & permissions
# =============================
mkdir -p /backups
touch /backups/backup.log
touch /backups/retention.log
chmod 666 /backups/backup.log /backups/retention.log

# =============================
# MySQL client config
# =============================
mkdir -p /etc/mysql

cat <<EOF > /etc/mysql/debian.cnf
[client]
host=host.docker.internal
user=root
password=
EOF

chmod 600 /etc/mysql/debian.cnf

# =============================
# automysqlbackup config
# =============================
mkdir -p /etc/default

cat <<EOF > /etc/default/automysqlbackup
# Connection
DBHOST=host.docker.internal
DBUSER=root
DBPASS=

# ONLY THIS DATABASE
DBNAMES="laundry web_laundry transupn"

# Backup location
BACKUPDIR="/backups"

# Do NOT backup system databases
DO_SYSTEM_BACKUP="no"
CREATE_DATABASE="no"

# Force TCP (important for Docker)
MDB2_DUMP="mysqldump --host=host.docker.internal --protocol=tcp --user=root --password='' --opt"
EOF

chmod 600 /etc/default/automysqlbackup

# =============================
# Logs & permissions
# =============================
mkdir -p /backups
: > /backups/backup.log
: > /backups/retention.log
chmod 666 /backups/backup.log /backups/retention.log

# =============================
# Cron jobs
# =============================
rm -f /etc/cron.d/mysql-backup /etc/cron.d/mysql-retention

# Backup tiap 5 menit
cat <<EOF > /etc/cron.d/mysql-backup
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/5 * * * * root echo "[$(date)] Backup started" >> /backups/backup.log && /usr/sbin/automysqlbackup >> /backups/backup.log 2>&1
EOF

# Retention: hapus backup > 8 menit
cat <<EOF > /etc/cron.d/mysql-retention
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/8 * * * * root echo "[$(date)] Retention check" >> /backups/retention.log && /usr/bin/find /backups -type f -mmin +8 -name "*.sql*" -print -delete >> /backups/retention.log 2>&1
EOF

chmod 0644 /etc/cron.d/mysql-backup /etc/cron.d/mysql-retention

# =============================
# Start cron (foreground)
# =============================
echo "=== Cron started (kasir only) ==="
cron -f