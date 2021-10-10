[![CircleCI](https://circleci.com/gh/bdhakad/Operationalize-a-Machine-Learning-Microservice-API/tree/main.svg?style=svg)](https://circleci.com/gh/bdhakad/Operationalize-a-Machine-Learning-Microservice-API/tree/main)

## Project Summary

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

This project creates a containerised microservice deployed in a Kubernetes Cluster. In kubernetes docker image created from our code is deployed and loadbalancer type service is created. we will be using the endpoint "http://a76109b40c12844789c65f4b587e3367-1933595348.us-east-1.elb.amazonaws.com/predict" to get prediction.


---

## Files description
* `app.py` : python code for prediction
* `Makefile` : make command for setup, install dependencies, lint, test
* `.circleci/config.yml` : for circle ci pipeline
* `Dockerfile` : for containerising our python app
* `./run_docker.sh` : create docker image and run app in docker
* `./upload_docker.sh` : login into dockerhub and push the created docker image
* `./run_kubernetes.sh` : create a kubernetes deployment from docker image and service to access the deployed app
* `create-eks-cluster` : contains steps to create a eks cluster and to create and use the kube dashboard
* `eks-admin-service-account.yaml` : yaml file to create clustor ServiceAccount
* `kube-deployment.yaml` : deployment yaml to create service and deployment

### Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
* Standalone:  `python app.py`
* create virtual environment: `make setup`
* Install dependencies: `make install`

### Creating Docker Image

* Create and Run in Docker:  `./run_docker.sh`
* Upload to Docker hub: `./upload_docker.sh`

### Creating Kubernetes Cluster

* Follow steps in `create-eks-cluster` to create and setup eks cluster

### Deploy the app to Kubernetes Cluster

* Run in Kubernetes:  `./run_kubernetes.sh`
* Run `kubectl get services -n default` to get the microservice host ip

