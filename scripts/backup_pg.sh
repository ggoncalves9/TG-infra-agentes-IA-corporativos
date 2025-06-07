#!/usr/bin/env bash
set -e
DATE=$(date +%F_%H-%M)
BACKUP_DIR=/backups
mkdir -p "$BACKUP_DIR"

export PGPASSWORD=${POSTGRES_PASSWORD}
pg_dump -h postgres -U ${POSTGRES_USER} ${POSTGRES_DB} \
  | gzip > "$BACKUP_DIR/${DATE}_db.sql.gz"

# Opcional: enviar para S3
if command -v aws &>/dev/null; then
  aws s3 cp "$BACKUP_DIR/${DATE}_db.sql.gz" s3://meu-bucket/db-backups/
fi
