pipeline {
    agent any
    environment {
        NEXUS_LOGIN = credentials('NEXUS_LOGIN')
    }
    stages {
        stage('build') {
            steps {
                sh "sudo docker build -t 172.31.33.78:8083/fcaflask:latest ."
                sh "sudo docker images"
            }
        }
        stage('push') {
            steps {
                sh "sudo docker login 172.31.33.78:8083 -u ${NEXUS_LOGIN_USR} -p ${NEXUS_LOGIN_PSW}"
                sh "sudo docker push 172.31.33.78:8083/fcaflask"
            }
        }
        stage('deploy') {
            steps{
                sh "sudo docker run -d -p 80:5000 --name fcaflask 172.31.33.78:8083/fcaflask"
                sh "echo Pipeline ran successfully! Enjoy your backups!"
            }
        }
    }
}