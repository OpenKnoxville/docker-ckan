#!/bin/bash

# cloudstorage

echo "CHECKING "
if ! grep -o "ckanext.cloudstorage*" -i $CKAN_INI; then
    sed -i 's/\# Resource Proxy settings/\# cloudstorage\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/ckanext.cloudstorage.driver \= S3\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/ckanext.cloudstorage.container_name = openknoxville-data\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/ckanext.cloudstorage.driver_options \= \{\"key\"\: \"$CLOUDSTORAGE_KEY\", \"secret\": \"$CLOUDSTORAGE_SECRET\"\}\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/ckanext.cloudstorage.max_multipart_lifetime  \= 3\n# Resource Proxy settings/' $CKAN_INI
fi

paster --plugin=ckanext-cloudstorage cloudstorage initdb -c $CKAN_INI
