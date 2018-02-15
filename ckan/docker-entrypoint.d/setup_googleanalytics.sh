#!/bin/bash

echo "BUILDING GOOGLE ANALYTICS SETTINGS"
if ! grep -o "googleanalytics.id*" -i $CKAN_INI; then
    sed -i 's/\# Resource Proxy settings/\# google analytics\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/googleanalytics.id \= UA-114232651-1\n# Resource Proxy settings/' $CKAN_INI
    sed -i 's/\# Resource Proxy settings/googleanalytics.account \= OpenKnoxville\n# Resource Proxy settings/' $CKAN_INI
fi