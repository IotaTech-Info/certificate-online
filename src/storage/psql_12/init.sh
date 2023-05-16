set -e

VAL=`psql -d colpro -U user -t <<_EOF
SELECT 1 FROM information_schema.tables WHERE table_name = 'userinfo';
_EOF`

if [ $VAL = 1 ]; then
  echo "skip init db"
else
  echo "start db init"
  psql -d colpro -U user -f /docker-entrypoint-initdb.d/sql/certification_info_ddl.sql
  psql -d colpro -U user -f /docker-entrypoint-initdb.d/sql/certification_info_dml.sql
fi

echo "end db colpro init"
