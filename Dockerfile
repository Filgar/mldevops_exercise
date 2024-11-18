FROM quay.io/jupyter/scipy-notebook AS base

COPY ./requirements.txt .
RUN --mount=type=cache,target=/root/.cache/pip \
        pip install -r requirements.txt
        

# docker build -t sieci_neuronowe/moj_obraz:0.0.2 .  #nn/mine
# docker run -it --rm -p 8888:8888 -v "${PWD}":/home/jovyan/work sieci_neuronowe/moj_obraz:0.0.2

# docker ps
# docker exec -it <container_id> bash
# jupyter server list
# Use url with container_id changed to 'localhost'
# docker run --gpus-all