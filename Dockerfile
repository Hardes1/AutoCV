FROM ubuntu:latest
WORKDIR src
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get update
RUN apt install -y texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra dvipng texlive-latex-recommended \
texlive-base texlive-pictures texlive-lang-cyrillic texlive-science cm-super make
CMD ["sh", "-c", "cd source; make; make clean"] 
