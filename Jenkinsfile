pipeline {
    agent any
    stages {
        stage('build') {
            sh "docker build -t 127.0.0.1:8083:/fcaflask ."
            sh "docker images"
        }
        stage('push') {
        
        }
        stage('deploy') {

        }
    }
}