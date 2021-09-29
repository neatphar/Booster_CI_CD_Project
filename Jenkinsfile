pipeline {
    agent any //{label "python_builder"}
    environment { 
        ENV = "latest"
        PORT = "80"
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
                    docker rm --force DjangoApp 2>> /dev/null 
                    docker run --name DjangoApp -d -p $PORT:8000 neatphar/django-app
                    test -d x
                """
            }
        }

    }
    post {
        success {
            slackSend(channel: "build-info", color: "good", message: "A successful build attempt from the production pipeline.")
        }
        failure {
            slackSend(channel: "build-info", color: "#ff0e0e", message: "The production pipeline has failed to build! <@U02G4M9T57D>")
        }
    } 
}