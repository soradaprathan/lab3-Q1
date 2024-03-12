pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'
        IMAGE_NAME = 'your-docker-hub-username/your-image-name:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Build_A completed.'
            }
        }

        stage('Build Maven Project') {
            steps {
               echo 'Build_B completed.'
            }
        }

        stage('Code Coverage') {
            steps {
                echo 'Build_C completed.'
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
