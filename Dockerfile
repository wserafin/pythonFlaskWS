#FROM dsanders/pythonbase
#FROM dsanderscan/pythonbase
FROM unbotifyorg/pythonbase
#MAINTAINER David Sanders <dsanders_can@outlook.com>
RUN mkdir /phonews
RUN mkdir /phonews/static
#RUN cd /phonews
COPY phoneWS.py /phonews/
COPY setupFlask.sh /phonews/
COPY testWS.sh /phonews/
RUN /phonews/setupFlask.sh
COPY README /phonews/
COPY index.html /phonews/static/
WORKDIR /phonews/
ENTRYPOINT ["python"]
CMD ["phoneWS.py"]
