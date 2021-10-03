<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">Booster CI/CD Capstone Project</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/neatphar/Booster_CI_CD_Project.svg)](https://github.com/neatphar/Booster_CI_CD_Project/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/neatphar/Booster_CI_CD_Project.svg)](https://github.com/neatphar/Booster_CI_CD_Project/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> This project is done mainly as an application of what I learnt in Sprints iCamp DevOps Program.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Live Demo](#demo)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Built Using](#built_using)
- [TODO](../TODO.md)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

The deployment of a Dockerized Django application was automated through a multibranch pipeline Jenkins Job and then deployed on a cloud provider. The Django application was forked from **@mahmoud254/Booster_CI_CD_Project** repository, then a **Dockerfile** was made and committed into this repository. 

Multiple brances were created in order to simulate the workflow used by the Django team as shown below:
* **Production Branch**: It represents the latest _running_ version of the application.
* **Master Branch**: A clone of the production branch for convenience. 
* **Develop Branch**: The branch that represents the most up-dated version currently under development.
* **Fature Branches**: Temporary branches representing a feature of the application.
![](https://buddy.works/blog/images/gitflow.png)

Then, a Jenkins multibranch pipeline was created, representing the three major branches, Production, Master, Develop, with each branch's configuration stored in a **Jenkinsfile**. To ensure maximum uptime for both three branches, three nodes were created as executers for the Jenkins server.


## 🚀 Live Demo <a name = "demo"></a>

You can try out the Jenkins server and the three deployed versions using these links. However, due to the unnecessary cost of running a VM these links will be valid until **29th of November, 2021.**
* **Jenkins Server**: http://167.172.177.126:8080
* **Production Branch Node**: http://167.172.177.126
* **Master Branch Node**: http://167.172.177.126:2020
* **Develop Branch Node**: http://167.172.177.126:9069
* **Slack Build Notification**: #build-info @ [Join Slack Workspace](https://join.slack.com/t/neatpharscicdproject/shared_invite/zt-wiv8h2oj-K6mIvgI9Zr4v4sl6h1jX2Q)


## 🏁 Getting Started <a name = "getting_started"></a>

This section will discuss how to deploy a copy of this project and run it on a virtual machine along with the Jenkins server and nodes for development and testing purposes.

### Prerequisites

This project needs the following dependencies in order to function correctly:

```
* A virtual machine with 2GB RAM and at least 5 GB of free space.
* Docker.
* Knowlegde of Jenkins CI/CD
* Comfortable working with Python, especially Django Framework and Gunicorn.
```

### Installing

A step by step guide to show you how to create the server and deploy the branches using **Dockerfile** and **Jenkinsfile** on Ubuntu.

Build and run a Jenkins server Docker container using the Jenkins-with-Docker [Dockerfile](https://github.com/neatphar/Booster_CI_CD_Project/blob/additional/Jenkins%20with%20Docker/Dockerfile) to give Jenkins access to the Docker host CLI.

```
docker build -t jenkins-dockerized .
chmod ugo+rx /var/run/docker.sock
docker run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock --name Jenkins jenkins-dockerized
```

Then, build and run a Jenkins node Container using Jenkins-node-with-Docker [Dockerfile](https://github.com/neatphar/Booster_CI_CD_Project/blob/additional/Jenkins%20Nodes/Dockerfile) as well.

```
docker build -t jenkins-node .
chmod ugo+rx /var/run/docker.sock
docker run -d -v /var/run/docker.sock:/var/run/docker.sock --name Jenkins-Node-1 jenkins-node
```
Repeat the last step to make other two different nodes with different name tags.
```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock --name Jenkins-Node-2 jenkins-node
docker run -d -v /var/run/docker.sock:/var/run/docker.sock --name Jenkins-Node-3 jenkins-node
```

Then, build and run a Jenkins node Container using Jenkins-node-with-Docker [Dockerfile](https://github.com/neatphar/Booster_CI_CD_Project/blob/additional/Jenkins%20Nodes/Dockerfile) as well.

```

```


Then, build and run a Jenkins node Container using Jenkins-node-with-Docker [Dockerfile](https://github.com/neatphar/Booster_CI_CD_Project/blob/additional/Jenkins%20Nodes/Dockerfile) as well.

```

```


End with an example of getting some data out of the system or using it for a little demo.

## 🔧 Running the tests <a name = "tests"></a>

Explain how to run the automated tests for this system.

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## 🎈 Usage <a name="usage"></a>

Add notes about how to use the system.

## ⛏️ Built Using <a name = "built_using"></a>

- [MongoDB](https://www.mongodb.com/) - Database
- [Express](https://expressjs.com/) - Server Framework
- [VueJs](https://vuejs.org/) - Web Framework
- [NodeJs](https://nodejs.org/en/) - Server Environment

## ✍️ Authors <a name = "authors"></a>

- [@kylelobo](https://github.com/kylelobo) - Idea & Initial work

See also the list of [contributors](https://github.com/kylelobo/The-Documentation-Compendium/contributors) who participated in this project.

## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Hat tip to anyone whose code was used
- Inspiration
- References
