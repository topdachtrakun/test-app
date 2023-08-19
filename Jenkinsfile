pipeline {
    agent any
    environment {
        DOCKER_REGISTRY_CREDENTIALS = credentials('dachtrakun1973')
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Dockerize') {
            steps {
                script {
                    docker.build("test-app:${env.BUILD_ID}")
                }
            }
        }

        stage('Echo Build ID') {
            steps {
                echo "BUILD_ID: ${env.BUILD_ID}"
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'docker run -p 3000:3000 test-app:${env.BUILD_ID}'
            }
        }
    }
}
