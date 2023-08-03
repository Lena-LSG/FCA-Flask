pipeline {
    agent any
    environment {
        NEXUS_LOGIN = credentials{NEXUS_LOGIN}
    }
    stages {
        stage('build') {
            steps {
                bat "docker build -t 127.0.0.1:8083/fcaflask:latest ."
                bat "docker images"
            }
        }
        stage('push') {
            steps {
                bat "docker login 127.0.0.1:8083 -u ${NEXUS_LOGIN_USR} -p ${NEXUS_LOGIN_PSW}"
                bat "docker push 127.0.0.1:8083/fcaflask"
            }
        }
        stage('deploy') {
            steps{
                bat "echo ooga booga"
            }
        }
    }
}