- build the code


- test the code


- merge the code


- continuos delivery 

    automatically release to repository


- continuos deployment

    automatically deploy to production

*************************

-commands
    #full
        "frontend:install": "cd udagram/udagram-frontend && npm install -f",
        "frontend:start": "cd udagram/udagram-frontend && npm run start",
        "frontend:build": "cd udagram/udagram-frontend && npm run build",
        "frontend:test": "cd udagram/udagram-frontend && npm run test",
        "frontend:e2e": "cd udagram/udagram-frontend && npm run e2e",
        "frontend:lint": "cd udagram/udagram-frontend && npm run lint",
        "frontend:deploy": "cd udagram/udagram-frontend && npm run deploy",
        "api:install": "cd udagram/udagram-api && npm install .",
        "api:build": "cd udagram/udagram-api && npm run build",
        "api:start": "cd udagram/udagram-api && npm run dev",
        "api:deploy": "cd udagram/udagram-api && npm run deploy",
        "deploy": "npm run api:deploy && npm run frontend:deploy"


    #backend 
        "start": "node ./server.js",
        "tsc": "npx tsc",
        "dev": "npx ts-node-dev --respawn --transpileOnly ./src/server.ts",
        "prod": "npx tsc && node ./server.js",
        "clean": "rm -rf www/ || true",
        "deploy": "npm run build && eb list && eb use udagram-api-dev && eb deploy",
        "build": "npm install . && npm run clean && tsc && cp -rf src/config www/config && cp -R .elasticbeanstalk www/.elasticbeanstalk && cp .npmrc www/.npmrc && cp package.json www/package.json && cd www && zip -r Archive.zip . && cd ..",
        "test": "echo \"Error: no test specified\" && exit 1"

    frontend
        "ng": "ng",
        "start": "ng serve",
        "build": "ng build",
        "deploy": "npm install -f && npm run build && chmod +x bin/deploy.sh && bin/deploy.sh",
        "test": "ng test --watch=false",
        "lint": "ng lint",
        "e2e": "ng e2e"

    deploy
        aws s3 cp --recursive --acl public-read ./www s3://mudagrambkt/
        aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://mudagrambkt/
        eb setenv POSTGRES_HOST=$POSTGRES_HOST POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_DB=$POSTGRES_DB POSTGRES_PASSWORD=$POSTGRES_PASSWORD PORT=$PORT DB_PORT=$DB_PORT AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET URL=$URL JWT_SECRET=$JWT_SECRET

    