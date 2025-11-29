pipeline {
    agent {
        docker {
            image 'python:3.11'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install') {
            steps {
                sh '''
                    pip install robotframework
                    pip install robotframework-seleniumlibrary
                    pip install selenium
                    pip install robotframework-pabot
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'robot -d results tests/'
            }
        }

        stage('Report') {
            steps {
                robot outputPath: 'results'
            }
        }
    }
}
