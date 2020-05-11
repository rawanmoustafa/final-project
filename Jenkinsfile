pipeline {
    environment {
        USER_CREDENTIALS = credentials('dockerhub')
    }
    agent any
    stages {
        stage('Lint index.html') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'chmod +x run_docker.sh && sudo ./run_docker.sh'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'sudo ./upload_docker.sh rawanmoustafa 52015991Rr@'
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo ./create.sh'
            }
        }
    }
}
