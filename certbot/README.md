From https://devsidestory.com/lets-encrypt-with-docker/

#. Remove `staticfiles.conf` from nginx_conf

#. Launch nginx `docker-compose up -d nginx`

#. generate the certiciate locally:

```
docker-compose run --rm letsencrypt letsencrypt certonly --webroot --email info@openknoxville.org --agree-tos -w /var/www/letsencrypt -d openknoxville.org
```

#. Bring staticfiles.conf back in with `git checkout -- nginx_conf/staticfiles.conf`


The cert expires every 90 days.  In order to renew run:
docker-compose run --rm letsencrypt letsencrypt renew