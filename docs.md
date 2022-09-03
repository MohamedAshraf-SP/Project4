tools, services

** database => rds
** server   => s3 files fromtend
** host     =>bean stack
** automation , integration => circle cli



database 
    -feeds
    -users

dependances
    back :::::::
        "@types/bcryptjs": "2.4.2",
        "@types/dotenv": "^8.2.0",
        "@types/jsonwebtoken": "^8.3.2",
        "aws-sdk": "^2.429.0",
        "bcryptjs": "2.4.3",
        "body-parser": "^1.18.3",
        "cors": "^2.8.5",
        "dotenv": "^16.0.2",
        "email-validator": "^2.0.4",
        "express": "^4.16.4",
        "jsonwebtoken": "^8.5.1",
        "pg": "^8.7.1",
        "reflect-metadata": "^0.1.13",
        "sequelize": "^5.21.4",
        "sequelize-typescript": "^0.6.9"
    
    front::::::::::
        "ng": "ng",
        "start": "ng serve",
        "build": "ng build",
        "deploy": "npm install -f && npm run build && chmod +x bin/deploy.sh && bin/deploy.sh",
        "test": "ng test --watch=false",
        "lint": "ng lint",
        "e2e": "ng e2e"
        "@angular/common": "^8.2.14",
        "@angular/core": "^8.2.14",
        "@angular/forms": "^8.2.14",
        "@angular/http": "^7.2.16",
        "@angular/platform-browser": "^8.2.14",
        "@angular/platform-browser-dynamic": "^8.2.14",
        "@angular/router": "^8.2.14",
        "@ionic-native/core": "^5.0.0",
        "@ionic-native/splash-screen": "^5.0.0",
        "@ionic-native/status-bar": "^5.0.0",
        "@ionic/angular": "^4.1.0",
        "core-js": "^2.5.4",
        "rxjs": "~6.5.4",
        "side-channel": "^1.0.4",
        "zone.js": "~0.9.1"








