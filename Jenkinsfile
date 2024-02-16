pipeline {
    agent {label 'win-agent1' }

    stages {
        stage('Build Jenkins Demo') {
            steps {
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/originalkaran/jenkins-demo']])
               bat 'mvn clean install -DskipTests'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t originalkaran/demo-jenkins .'
            }
        }
        stage('Push docker Image'){
            steps {
                bat 'docker push originalkaran/demo-jenkins'
            }
        }
    }
}
