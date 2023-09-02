FROM ubuntu

LABEL org.opencontainers.image.authors="github@yauhen.io"

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y \
	texlive-latex-recommended \
	texlive-latex-extra \
	texlive-lang-cyrillic

ENTRYPOINT ["/usr/bin/pdflatex"]
