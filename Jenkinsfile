pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('rhrishikesh') // Jenkins credentials ID for Docker Hub
        IMAGE_NAME = 'rhrishikesh/java-app'
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/R45Hrishikesh/ise3.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(IMAGE_NAME)
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'DOCKERHUB_CREDENTIALS') {
                        docker.image(IMAGE_NAME).push('latest')
                    }
                }
            }
        }
    }
}
