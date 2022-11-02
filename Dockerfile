FROM continuumio/miniconda3:latest

RUN conda update -n base -c defaults conda -y && \
    conda install -c esri arcgis git

#WORKDIR /srv
#RUN git clone https://github.com/Wildsong/gis-test.git
#RUN conda install -f gis-test/env.yml
