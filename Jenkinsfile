pipeline {
    agent any

    environment {
        APP_NAME = "spring-petclinic"
        DOCKER_IMAGE = "spring-petclinic:latest"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'git@github.com:gurkiran333/spring-petclinic-devops.git'
            }
        }

        stage('Build Application') {
            steps {
                sh '''
                chmod +x gradlew
                ./gradlew clean build -x test
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $DOCKER_IMAGE .
                '''
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f $APP_NAME || true
                docker run -d \
                  --name $APP_NAME \
                  -p 8080:8080 \
                  $DOCKER_IMAGE
                '''
            }
        }
    }

    post {
        success {
            echo "Build & Deployment Successful"
        }
        failure {
            echo "Pipeline Failed"
        }
    }
}
