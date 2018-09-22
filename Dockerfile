FROM unbotifyorg/pythonbase
RUN mkdir /phonews
RUN mkdir /phonews/static
COPY phoneWS.py /phonews/
COPY setupFlask.sh /phonews/
COPY testWS.sh /phonews/
RUN /phonews/setupFlask.sh
COPY README /phonews/
COPY index.html /phonews/static/
WORKDIR /phonews/
ENTRYPOINT ["python"]
CMD ["phoneWS.py"]
