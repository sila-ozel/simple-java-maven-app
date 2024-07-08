pipeline {
    agent {
        docker {
            image 'maven:3.9.8'
            args '-v $JENKINS_HOME/.m2:/home/jenkins/.m2'
            reuseNode true
        }
    }
    stages {
        stage('Verify') {
            steps {
                sh 'java --version'
                sh 'mvn --version'
            }
        }
        stage('Debug') {
            steps {
                sh 'ls -la /home/jenkins/.m2'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}