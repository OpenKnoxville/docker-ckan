#!/bin/bash

echo "BUILDING PAGES"
if ! grep -o "ckanext.pages.group_menu*" -i $CKAN_INI; then
    sed -i 's/\# Resource Proxy settings/\# pages\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/ckanext.pages.group_menu \= False\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/ckanext.pages.allow_html \= True\n# Resource Proxy settings/' $CKAN_INI
fi