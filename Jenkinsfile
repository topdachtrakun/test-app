pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        // stage('Build and Dockerize') {
        //     steps {
        //         script {
        //             docker.build("test-app")
        //         }
        //     }
        // }
        
        stage('Deploy') {
            steps {
                sh 'sudo -s docker images'
                // sh 'sudo docker run -d -p 3000:3000 test-app'
            }
        }
    }
}
