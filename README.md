# 🐋 Inception

The goal of this project is to dockerize required stack to deploy a wordpress connected with nginx and a persistent database.

### The rules:

- Don't use dockerhub
- Build your own images for each services from Alpine or Debian Buster
- Use **Dockerfile** to build those images
- Use a **Docker-compose** to manage the creation of images
- Make database persistent in case of restart service
- Create a **self-signed certificate**
- Create a network to make ****communication beetwen containers****
- Set the correct ports for communication
- Trigger the deployment with a simple `make`

---

## Deploy your Wordpress site

### 1. Install the dependencies

```bash
bash depend.sh
```

### 2. Set your own information in `.env`

>if it's for testing you can leave the default configuration otherwise fill in as follows :

```.env
MYSQL_DATABASE=inceptiondb
MYSQL_ROOT_PASSWORD=rootpass
MYSQL_USER=luther
MYSQL_PASSWORD=lutherpass

MYSQL_HOST=mariadb:3306

WP_SITE_TITLE="Inception"

WP_ADMIN=lnemor
WP_ADMIN_PASSWORD=passlnemor
WP_ADMIN_EMAIL=root@mail.com
WP_URL=lnemor.42.fr

WP_USER_LOGIN=randomuser
WP_USER_EMAIL=random@email.com
WP_USER_PASSWORD=randompassword
```

### 3. Make and enjoy !

```bash
make

#Your website is up ! go on https://<YOUR_URL>.

#For this example : https://lnemor.42.fr

#Accept the risk because its a self-signed certificate.
```
