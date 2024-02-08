./build-image.sh

./instant package remove -n reverse-proxy-nginx --env-file .env
./instant package init -n reverse-proxy-nginx --env-file .env

#./instant package remove -n monitoring --env-file .env
#/instant package init -n monitoring --env-file .env