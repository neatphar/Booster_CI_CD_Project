pipeline {
    agent {label "python"}
    environment { 
        ENV = "latest"
        PORT = "2020"
        DOCKER_HUB = credentials('docker-hub')
    }
    stages {
        stage('Preperation'){
            steps {
                sh "test -d ./django_app" # Docker git clones the repo by default..
            }
        }

        stage('Build') {
            steps {
                sh "docker build -t ${DOCKER_HUB_USR}/django-app:$ENV ."
            }
        }

        stage('Push') {
            steps {
                sh """
                    docker login -u ${DOCKER_HUB_USR} -p ${DOCKER_HUB_PSW}
                    docker push ${DOCKER_HUB_USR}/django-app:$ENV
                """
            }
        }

        stage('Deploy') {
            steps {
                sh """
                    docker rm --force DjangoApp-$ENV 2>> /dev/null 
                    docker run --name DjangoApp-$ENV -d -p $PORT:8000 ${DOCKER_HUB_USR}/django-app
                """
            }
        }

    }
    post {
        success {
            slackSend(channel: "build-info", color: "good", message: "A successful build attempt from *${DOCKER_HUB_USR}* on the *${BRANCH_NAME}* branch pipeline.")
        }
        failure {
            slackSend(channel: "build-info", color: "#ff0e0e", message: "The *${BRANCH_NAME}* branch pipeline from *${DOCKER_HUB_USR}* has *failed* to build! <@U02G4M9T57D>")
        }
    } 
}
