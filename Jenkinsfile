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
                sh 'docker run -d -p 3000:3000 nextjs-app'
            }
        }
    }
}
