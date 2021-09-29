pipeline {
    agent {label "python_builder"}
    parameters {
        string(name: 'PORT', defaultValue: '8000', description: 'What should be the port of this build?')
    }
    stages {
        stage('CI') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh """
                        docker build -t neatphar/django-app .
                        docker login -u ${USERNAME} -p ${PASSWORD}
                        docker push neatphar/django-app
                    """
                }
            }
        }
        stage('CD') {
            
            steps {
                sh """
                    docker rm --force DjangoApp 2>> /dev/null 
                    docker run --name DjangoApp -d -p ${params.PORT}:8000 neatphar/django-app
                """
            }
        } 
    }
}