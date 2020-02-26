# FIXME DockerFileに書きたい
CONTAINER_NAME=db_mssql
USER_NAME=sa
PASSWORD=Zks57d2fLOsd10mOm
# WindowsのGit Bashでパス変換が予期せぬ動作をする場合の対処法
MSYS_NO_PATHCONV=1 docker exec $CONTAINER_NAME /opt/mssql-tools/bin/sqlcmd -i /tmp/ddl/create_db.sql -U $USER_NAME -P $PASSWORD
MSYS_NO_PATHCONV=1 docker exec $CONTAINER_NAME /opt/mssql-tools/bin/sqlcmd -i /tmp/ddl/t_order.sql -U $USER_NAME -P $PASSWORD
MSYS_NO_PATHCONV=1 docker exec $CONTAINER_NAME /opt/mssql-tools/bin/sqlcmd -i /tmp/ddl/t_order_detail.sql -U $USER_NAME -P $PASSWORD
MSYS_NO_PATHCONV=1 docker exec $CONTAINER_NAME /opt/mssql-tools/bin/sqlcmd -i /tmp/ddl/t_seq.sql -U $USER_NAME -P $PASSWORD
MSYS_NO_PATHCONV=1 docker exec $CONTAINER_NAME /opt/mssql-tools/bin/sqlcmd -i /tmp/ddl/init_t_seq.sql -U $USER_NAME -P $PASSWORD