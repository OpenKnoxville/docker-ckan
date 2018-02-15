docker run -it -v dockerckan_ckan_storage:/volume -v ${PWD}/backups:/backup alpine \
    tar -cjf /backup/dockerckan_ckan_storage.tar.bz2 -C /volume ./

docker exec -t db pg_dumpall -c -U postgres | gzip -9 > ./backups/dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql.gz