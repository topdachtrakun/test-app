pipeline {
    agent any
    
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
        
        stage('Deploy') {
            steps {
                sh 'docker run -p 3000:3000 test-app'
            }
        }
    }
}
