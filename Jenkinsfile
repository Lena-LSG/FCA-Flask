pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh "docker build -t 127.0.0.1:8083:/fcaflask ."
                sh "docker images"
            }
        }
        stage('push') {
            steps {
                sh "echo 'ooga booga'"
            }
        }
        stage('deploy') {
            steps{
                sh "echo 'ooga booga'"
            }
        }
    }
}