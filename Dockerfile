FROM continuumio/miniconda3:latest

RUN conda update -c defaults conda -y && \
    conda install -c esri arcgis

ARG CACHEBUST=1
RUN git clone https://github.com/Wildsong/docker-conda-arcgis.git /source
WORKDIR /source

CMD [ "python", "versions.py" ]


