FROM httpd
#RUN systemctl start httpd
#ENTRYPOINT [ "sh", "systemctl start httpd"]
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install unzip -y \
  && rm -rf /var/lib/apt/lists/*
RUN cd /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page271/autowash.zip
RUN unzip autowash.zip && rm -f autowash.zip
RUN cd car-wash-website-template
COPY * /usr/local/apache2/htdocs/
#CMD ["sh", "systemctl enable httpd"]
#ENTRYPOINT ["tail"]
#CMD ["-f","/dev/null"]