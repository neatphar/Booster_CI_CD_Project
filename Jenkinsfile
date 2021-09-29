pipeline {
    agent {label "python_builder"}
    environment { 
        ENV = "latest"
        PORT = "80"
    }
    stages {
        stage('Preperation'){
            steps {
                sh "test -d django-app"
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

        post {
            success {
                slackSend(color: "good", message: "Successful build attempt from the production pipeline.")
            }
            failure {
                def userId = slackUserIdFromEmail('neatphar@gmail.com')
                slackSend(color: "bad", message: "<@$userId>! The production pipeline has failed to build!")
            }
        } 
    }
}