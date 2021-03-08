FROM fedora:32

RUN yum clean all && yum install -y \
	texlive-scheme-full
	
COPY resume /code

CMD [ "bash" ]

pdflatex -interaction=nonstopmode resume/main.tex
