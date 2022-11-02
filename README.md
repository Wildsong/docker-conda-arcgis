# docker-conda-arcgis

Test of running conda and the Esri arcgis module in a Docker container.

```bash
docker build -t conda-arcgis .
```

When you do the build, the Dockerfile will use git
to make a copy of this repository into the container. (We're just testing here!)

Since there is a script included in the repository, you can then try running it like this

```bash
docker run --rm conda-arcgis versions.py
```

All it does right now is print out version information.

Note it runs a copy of versions.py baked into the image when you did the build,
not the one you see in the local folder. You'd have to commit changes to the file
and then do another build to get it to do something different.

In real life, I would keep the python code in a local folder and mount it as a
volume on the container so that I could edit and test changes quickly.

