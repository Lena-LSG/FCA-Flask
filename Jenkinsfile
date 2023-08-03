pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                bat "docker build -t 127.0.0.1:8083/fcaflask:latest ."
                bat "docker images"
            }
        }
        stage('push') {
            steps {
                bat "docker login 127.0.0.1:8083 -u admin -p admin"
                bat "docker push 127.0.0.1:8083:/fcaflask:latest"
            }
        }
        stage('deploy') {
            steps{
                bat "echo 'ooga booga'"
            }
        }
    }
}