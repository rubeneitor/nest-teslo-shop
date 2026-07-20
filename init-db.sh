#!/bin/bash
set -e

# Cambiar pg_hba.conf para requerir autenticación
cat > /var/lib/postgresql/data/pg_hba.conf <<EOF
# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             all                                     trust
host    all             all             127.0.0.1/32            md5
host    all             all             ::1/128                 md5
host    all             all             0.0.0.0/0               md5
EOF

# Recargar la configuración
pg_ctl reload -D /var/lib/postgresql/data || true
