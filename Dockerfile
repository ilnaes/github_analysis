FROM python:3.10
# FROM ubuntu:20.04

# RUN  apt-get update \
#   && apt-get install -y wget \
#   && rm -rf /var/lib/apt/lists/*

# RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda
# ENV PATH=$PATH:/miniconda/condabin:/miniconda/bin

# RUN conda install -c conda-forge transformers=4.11.2 streamlit=1.0.0 matplotlib

COPY . .

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8501
# CMD streamlit run --server.port $PORT app.py
CMD ["streamlit", "run", "app.py"]

