pipeline {
    agent any
    stages {
        stage('Docker') {
            steps {
                sh 'docker build -t my-maven .'
            }
        }
        stage('Verify') {
            agent {
                docker {
                    image 'my-maven'
                    args '-v $JENKINS_HOME/.m2:/home/jenkins/.m2'
                }
            }
            steps {
                sh 'java --version'
                sh 'mvn --version'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'my-maven'
                    args '-v $JENKINS_HOME/.m2:/home/jenkins/.m2'
                }
            }
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}