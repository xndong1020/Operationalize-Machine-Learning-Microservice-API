[![<xndong1020>](https://circleci.com/gh/xndong1020/Operationalize-Machine-Learning-Microservice-API.svg?style=svg)](https://github.com/xndong1020/Operationalize-Machine-Learning-Microservice-API)


### Project Summary

In this project, a Machine Learning Microservice API will be containerized, and tested continously through CircleCI CI/CD pipeline. 

After tests are passed, the dockerized Machine Learning Microservice API will be deployed to local Kubectl + minikube environment.


## Setup the Environment
* Run `make setup` to create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`. The docker container will be running in detached mode.
3. Run in Kubernetes:  `./run_kubernetes.sh`. Make a prediction using a separate terminal tab, and a call to `./make_prediction.sh`


### Files in the repository
1. `.circleci` folder is for `CircleCI` CI/CD pipeline
2. `output_txt_files` are logs/outputs from docker/kubectl
3. `app.py` is the Machine Learning Microservice API application file, which contains AI logics.
4. `Dockerfile` is for dockerizing the Machine Learning Microservice API application.
5. `Makefile` is mainly for automation.
6. `ml-pod.yml` is for kubectl to create a pod to host the dockerized Machine Learning Microservice API
7. `run_docker.sh` is to run the dockerized application in detached mode. 
   `run_kubernetes.sh` is to run the dockerized application in local kubectl environment. 
   `upload_docker.sh` is to upload application docker image to Docker Hub.
   `make_prediction.sh` is for sending some input data to the containerized application via the appropriate port 

### Project Tasks

Tasks are listed as following:
* Test your project code using linting
  
  When you test locally, please note: 
    1. Running this Python Application in a venv enviroment. 
    
    Step 1: Create && Activate a virtual environment

    ```sh
    sudo make setup
    . ~/.devops/bin/activate
    ```

    Step 2: Install dependencies

    ```sh
    sudo make install
    ```

    2. Install `hadolint` locally for testing purpose.

    ```sh
     sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && sudo chmod +x /bin/hadolint
    ```

* Complete a Dockerfile to containerize this application

    - Under root directory of the project, run `docker build -t isdance/ml-api .`

* Deploy your containerized application using Docker and make a prediction

    - To run this image locally `docker run -p 8000:80 --name ml-api b85489e51cb3`. 
    - Create a `run_docker.sh` to start your docker image
    - Go to `http://localhost:8000`. You should be able to see `Sklearn Prediction Home`
    

* Improve the log statements in the source code for this application

  ```py
  # TO DO:  Log the output prediction value
  LOG.info(f"Output prediction: {prediction}")
  ``` 

* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---


