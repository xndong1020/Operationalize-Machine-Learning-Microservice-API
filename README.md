[![<isdance>](https://circleci.com/gh/isdance/Operationalize-Machine-Learning-Microservice-API.svg?style=svg)](https://github.com/isdance/Operationalize-Machine-Learning-Microservice-API)

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

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
