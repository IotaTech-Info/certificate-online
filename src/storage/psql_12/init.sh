set -e

VAL=`psql -d elpro -U user -t <<_EOF
SELECT 1 FROM information_schema.tables WHERE table_name = 'userinfo';
_EOF`

if [ $VAL = 1 ]; then
  echo "skip init db"
else
  echo "start db init"
  psql -d elpro -U user -f /docker-entrypoint-initdb.d/sql/01_ddl.sql
  psql -d elpro -U user -f /docker-entrypoint-initdb.d/sql/02_dml.sql
fi

echo "end db elpro init"
