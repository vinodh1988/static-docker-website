FROM httpd:2.4

# Copy static website files to Apache server document root
COPY . /usr/local/apache2/htdocs/

