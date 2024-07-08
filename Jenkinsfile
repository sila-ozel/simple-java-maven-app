pipeline {
    agent {
        docker {
            image 'maven:3.9.0'
            args '-v $JENKINS_HOME/.m2:/home/jenkins/.m2'
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
                sh 'whoami'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -X -B -DskipTests clean package'
            }
        }
    }
}