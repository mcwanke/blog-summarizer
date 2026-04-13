FROM jupyter/scipy-notebook:latest

COPY requirements.txt .
RUN pip install -r requirements.txt

# Set the default working directory to the mounted volume
RUN mkdir -p /home/jovyan/.jupyter && \
    echo "c.ServerApp.root_dir = '/home/jovyan/work'" >> /home/jovyan/.jupyter/jupyter_lab_config.py
