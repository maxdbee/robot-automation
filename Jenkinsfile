pipeline {
    agent any   // Jenkins now checks out your repo automatically

    stages {
        stage('Test') {
            agent {
                docker {
                    image 'ppodgorsek/robot-framework:latest'
                    reuseNode true    // same idea as your working example
                }
            }
            steps {
                sh '''
                    pip install robotframework-pabot
                    echo "Starting test processes!!!...😎"
                    pabot --processes 2 ./TestCases/*.robot
                '''
            }
        }
    }
}


