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
- [Getting Started](#getting_started)
- [Live Demo](#demo)
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

Then a Jenkins multibranch pipeline was created, representing the three major branches, Production, Master, Develop, with each branch's configuration stored in a **Jenkinsfile**. To ensure maximum uptime for both three branches, three nodes were created as executers for the Jenkins server.


## 🚀 Live Demo <a name = "demo"></a>

You can try out the Jenkins server and the three deployed versions using these links. However, due to the unnecessary cost of running a VMWate these links will be valid until **29th of November 2021**.
* **Jenkins Server**: guest:guest @ http://167.172.177.126:8080
* **Production Branch Node**: http://167.172.177.126
* **Master Branch Node**: http://167.172.177.126:2020
* **Develop Branch Node**: http://167.172.177.126:9069

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them.

```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running.

Say what the step will be

```
Give the example
```

And repeat

```
until finished
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
