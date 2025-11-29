pipeline {
    agent any   // Jenkins now checks out your repo automatically

    stages {
        stage('Test') {
            agent {
                docker {
                    image 'selenium/standalone-chrome:latest'
                    args '-u root'   // important for pip install
                    reuseNode true
                }
            }
            steps {
                sh '''
                    pip install robotframework robotframework-seleniumlibrary
                    robot -d results tests/
                '''
            }
        }
    }
}


