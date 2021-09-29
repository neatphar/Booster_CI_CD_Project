pipeline {
    agent any
    environment { 
        ENV = "latest"
        PORT = "2020"
    }
    stages {
        stage('Preperation'){
            steps {
                sh "test -d ./django_app"
            }
        }

        stage('Build') {
            steps {
                    sh "docker build -t neatphar/django-app:$ENV ."
            }
        }

        stage('Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh """
                        docker login -u ${USERNAME} -p ${PASSWORD}
                        docker push neatphar/django-app:$ENV
                    """
                }
            }
        }

        stage('Deploy') {
            steps {
                sh """
                    docker rm --force DjangoApp-$ENV 2>> /dev/null 
                    docker run --name DjangoApp-$ENV -d -p $PORT:8000 neatphar/django-app
                """
            }
        }

    }
    post {
        success {
            slackSend(channel: "build-info", color: "good", message: "A successful build attempt from the *${BRANCH_NAME}* branch pipeline.")
        }
        failure {
            slackSend(channel: "build-info", color: "#ff0e0e", message: "The *${BRANCH_NAME}* branch pipeline has *failed* to build! <@U02G4M9T57D>")
        }
    } 
}