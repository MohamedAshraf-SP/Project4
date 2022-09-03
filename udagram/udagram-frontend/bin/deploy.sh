aws s3 cp --recursive --acl public-read ./www s3://mudagrambkt/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://mudagrambkt/
eb setenv POSTGRES_HOST=$POSTGRES_HOST POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_DB=$POSTGRES_DB POSTGRES_PASSWORD=$POSTGRES_PASSWORD PORT=$PORT DB_PORT=$DB_PORT AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET URL=$URL JWT_SECRET=$JWT_SECRET
