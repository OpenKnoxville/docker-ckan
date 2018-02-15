From https://devsidestory.com/lets-encrypt-with-docker/

# generate the cert

docker-compose run --rm letsencrypt letsencrypt certonly --webroot --email info@openknoxville.org --agree-tos -w /var/www/letsencrypt -d openknoxville.org


in order to renew run:
docker-compose run --rm letsencrypt letsencrypt renew