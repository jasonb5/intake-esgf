FROM jupyter/minimal-notebook:latest

RUN conda create -n intake-esgf -c conda-forge -c jasonb857 intake-esgf ipykernel && \
  source /opt/conda/bin/activate intake-esgf && \
  python -m ipykernel install --user --name intake-esgf

COPY examples/ .
