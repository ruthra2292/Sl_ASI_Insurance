FROM redhat/ubi8
LABEL maintainer="ruthra_selvam"
RUN yum -y install httpd
COPY js css img index.html contact.html insurance-details.html news-view.html about.html insurance.html news.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
