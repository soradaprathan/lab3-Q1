pipeline {
    agent any
    
     tools {

        maven 'MAVEN3'

    }

    environment {
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'
        IMAGE_NAME = 'your-docker-hub-username/your-image-name:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/soradaprathan/lab3-Q1.git'
            }
        }

        stage('Build Maven Project') {
            steps {
               bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }

        stage('Code Coverage') {
            steps {
                 bat 'mvn clean verify jacoco:report'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Build_E completed.'
            }
        }

        stage('Docker Login') {
            steps {
                echo 'Build_F completed.'
            }
        }

        stage('Docker Push') {
            steps {
                echo 'Build_G completed.'
            }
        }
    }

    post {
        always {
            // Perform steps like cleaning up or notifying users here
            echo 'Build completed.'
        }
    }
}
