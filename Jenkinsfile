pipeline {
    agent any
    
     tools {

        maven 'MAVEN3'

    }

    environment {
        DOCKER_CREDENTIALS = credentials('dockerhubtoken')
        IMAGE_NAME = 'sorada1111/lab3:latest1'
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
                 jacoco execPattern: '**/target/jacoco.exec', classPattern: '**/classes', sourcePattern: '**/src/main/java'
            }
        }

        stage('Docker Login') {
            steps {
               script {
                   
                    sh 'echo $DOCKER_CREDENTIALS_PSW | docker login -u $DOCKER_CREDENTIALS_USR --password-stdin'
  
                }
            }
        }
        
         stage('Docker Build') {
            steps {
               script {
                   
               
                    sh "docker build -t ${IMAGE_NAME} ."
                    sh "docker push ${IMAGE_NAME}"
                }
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
