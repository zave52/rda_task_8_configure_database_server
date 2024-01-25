match=$(cat task.cnf | grep -P  '^port[\s\t]*=[\s\t]*3000' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify custom port"
    exit 1
else
    echo "Custom port is set - OK"
fi

match=$(cat task.cnf | grep -P  '^user[\s\t]*=[\s\t]*root' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify custom user"
    exit 1
else
    echo "Custom user is set - OK"
fi

match=$(cat task.cnf | grep -P  '^datadir[\s\t]*=[\s\t]*/data' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify custom data directory"
    exit 1
else
    echo "Custom data directory is set - OK"
fi


match=$(cat task.cnf | grep -P  '^slow_query_log[\s\t]*=[\s\t]*1' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify custom slow query log settings"
    exit 1
else
    echo "Custom slow query log settingsis set - OK"
fi

match=$(cat task.cnf | grep -P  '^slow_query_log_file[\s\t]*=[\s\t]*/data/mysql-slow.log' || true)
if [ -z "$match" ]; then 
    echo "Unable to verify custom slow query log settings"
    exit 1
else
    echo "Custom slow query log settingsis set - OK"
fi
