pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/rajpatel10124/SupportiveSailers.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t supportive-sailers .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop website || true
                docker rm website || true
                docker run -d -p 80:80 --name website supportive-sailers
                '''
            }
        }
    }
}
