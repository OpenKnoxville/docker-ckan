FROM openknowledge/ckan-base:2.7

MAINTAINER Your Name Here <you@example.com>


# Install any extensions needed by your CKAN instance
# (Make sure to add the plugins to CKAN__PLUGINS in the .env file)
# For instance:
#RUN pip install -e git+https://github.com/ckan/ckanext-pages.git#egg=ckanext-pages && \
#    pip install -e git+https://github.com/ckan/ckanext-dcat.git@v0.0.6#egg=ckanext-dcat && \
#    pip install -r https://raw.githubusercontent.com/ckan/ckanext-dcat/v0.0.6/requirements.txt

# Install the extension(s) you wrote for your own project
# RUN pip install -e git+https://github.com/your-org/ckanext-your-extension.git@v1.0.0#egg=ckanext-your-extension

RUN apk update && \
    apk add --no-cache libffi-dev

RUN pip install docopt==0.6.2 && \
    pip install -e git+https://github.com/ckan/ckanapi.git#egg=ckanapi && \
    pip install -r https://raw.githubusercontent.com/ckan/ckanext-googleanalytics/master/requirements.txt

RUN pip install -e git+https://github.com/TkTech/ckanext-cloudstorage.git#egg=ckanext-cloudstorage &&\
    pip install ckanext-datarequests==1.0.0 && \
    pip install -e  git+https://github.com/ckan/ckanext-googleanalytics.git#egg=ckanext-googleanalytics && \
    pip install -e git+https://github.com/ckan/ckanext-pages.git#egg=ckanext-pages

COPY docker-entrypoint.d/* /docker-entrypoint.d/