pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        
        stage('Deploy') {
            steps {
                // sh 'sudo -S docker images'
                sh 'docker run -d -p 3000:3000 nextjs-app'
            }
        }
    }
}
