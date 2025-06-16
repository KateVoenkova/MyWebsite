cp flask_app.nginx.conf /etc/nginx/sites-enabled/katevoe.nginx.conf
certbot --nginx -d katevoe.silaeder.codingprojects.ru
