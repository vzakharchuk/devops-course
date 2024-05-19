pipeline {
    
    agent any
    
    stages {
        stage('Checkout repository') {
            steps {
                checkout scm
            }
        }
        
        stage('Build & Push New Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh '''
                        echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
                        ./build_and_push.sh ${env.GIT_COMMIT}'
                    '''
                }
            }
        }
    }
    post {
        always {
            script {
                sh 'docker logout'
            }
        }
    }
}

