

if [ -z "$DBRESTORE" ]; then
    echo "Need to set DBRESTORE"
    exit 1
fi  

docker run -it -v dockerckan_ckan_storage:/volume -v ${PWD}/backups:/backup alpine \
    sh -c "rm -rf /volume/* /volume/..?* /volume/.[!.]* ; tar -C /volume/ -xjf /backup/dockerckan_ckan_storage.tar.bz2"

gunzip < ./backups/$DBRESTORE | docker exec -i db psql -U postgres