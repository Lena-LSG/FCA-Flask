pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                bat "docker build -t 127.0.0.1:8083/fcaflask ."
                bat "docker images"
            }
        }
        stage('push') {
            steps {
                bat "echo 'ooga booga'"
            }
        }
        stage('deploy') {
            steps{
                bat "echo 'ooga booga'"
            }
        }
    }
}