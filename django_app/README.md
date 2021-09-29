# Booster CI/CD Project

Create a CI/CD Jenkins pipeline using a jenkinsfile to deploy a simple django web app as a microservice running on a local docker container.

Submissions will be through: mahmoud.alaa.aws.25492@gmail.com.

## Steps

1- Fork this repository into your account.
2- Write a dockerfile in order to create a container image of the Django environment. Copy the source code into the container. Build and Deploy the app.
3- Configure a Jenkins Master server along with two (production & testing) ubuntu slaves for the pipeline.
4- Create a Slack workspace and integrate it with the Jenkins pipeline.
5- Write a declarative jenkinsfile with the following stages for both development and production branches:
- Preparation: Checkout the code.
- Build Image: Build an image using the dockerfile.
- Push Image: Push the image to a Docker Registry.
- Deployment: Deploy a container from the image.
- Notification: Send a slack message with the build status
5- Show build statistics in the Jenkins GUI.
7- Configure a Jenkins multibranch pipeline of the two branches (using nodes).

## Commands You Will Use:

  Building a Django app:

      pip install -r requirements.txt
      python manage.py makemigrations
      python manage.py migrate

  Deploying a Django app:

      python manage.py runserver 0.0.0.0:8000
