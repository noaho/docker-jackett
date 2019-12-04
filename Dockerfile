FROM linuxserver/jackett

#COPY phpsed.php /
COPY 40-jackettconfig /etc/cont-init.d

HEALTHCHECK --start-period=600s CMD curl -f http://jackett:9117 || exit 1