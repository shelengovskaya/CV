FROM fedora:32

RUN yum update -y && yum install -y \
	texlive-scheme-full
	
COPY resume /code

CMD [ "bash" ]
