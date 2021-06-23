from continuumio/miniconda3 
RUN pip install tensorflow keras sklearn pathlib seaborn pandas scipy matplotlib
RUN /opt/conda/bin/conda install jupyter -y --quiet 
RUN mkdir -p /opt/notebooks 
COPY *.ipynb /opt/notebooks/
COPY data /opt/notebooks/data
COPY images /opt/notebooks/images
CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root
