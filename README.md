[![tstrain199](https://circleci.com/gh/tstrain199/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/tstrain199/project-ml-microservice-kubernetes)

## Project Overview

This is a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

## Setup the Environment

- Create a virtualenv and activate it
- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl

## Make Predictions

To make a prediction, you have to open a separate tab or terminal window. In this new window, navigate to the main project directory (some computers will do this automatically) and call ./make_prediction.sh.

## Files

app.py - The flask application
Dockerfile - Builds the Docker image
Makefile - Sets up the environment and lint tests, installs dependencies
requirements.txt - A list of dependencies to installs
