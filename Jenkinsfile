pipeline {
    agent {
        docker {
            image 'maven:3.9.8-eclipse-temurin-22-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Verify') {
            steps {
                sh 'java --version'
                sh 'mvn --version'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}