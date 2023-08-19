pipeline {
    agent any

    // environment {
    //     NODE_VERSION = '14.x'  // เวอร์ชันของ Node.js ที่คุณต้องการใช้
    // }

    stages {
        // stage('Checkout') {
        //     steps {
        //         checkout scm
        //     }
        // }

        stage('Install Dependencies') {
            steps {
                // ติดตั้ง Node.js ด้วย NVM (Node Version Manager)
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run dev'
            }
        }

        // stage('Test') {
        //     steps {
        //         sh 'npm test'
        //     }
        // }

        // stage('Deploy') {
        //     steps {
        //         // ตัวอย่างการอัพโหลดเว็บไซต์ไปยังเซิร์ฟเวอร์หรือ CDN
        //         // คุณสามารถแก้ไขขั้นตอนนี้ตามที่คุณใช้งานจริงได้
        //         sh 'npm run deploy'
        //     }
        // }
    }

    // post {
    //     always {
    //         // ลบโมดูลที่ติดตั้งเมื่อเสร็จสิ้น
    //         deleteDir()
    //     }
    // }
}
