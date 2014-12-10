server {
    listen 80;
    listen 443 ssl;

    server_name demo.openl10n.io;

    root       /var/www/demo.openl10n.io/current/web;
    error_log  /var/log/nginx/demo.openl10n.io_error.log;
    access_log /var/log/nginx/demo.openl10n.io_access.log;

    include templates/symfony2.conf;
}
