pipeline {
    agent any //{label "python_builder"}
    environment { 
        ENV = "latest"
        PORT = "80"
    }
    stages {
        stage('Preperation'){
            steps {
                sh "ls"
                sh "ls ./booster-project_master/"
                sh "test -d ./booster-project_master/django-app"
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
                """
            }
        }

    }
    post {
        success {
            slackSend(channel: "build-info", color: "good", message: "Successful build attempt from the production pipeline.")
        }
        failure {
            slackSend(channel: "build-info", color: "bad", message: "<@U02G4M9T57D>! The production pipeline has failed to build!")
        }
    } 
}