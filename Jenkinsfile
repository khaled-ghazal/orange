
peline {
    agent any

    stages {
        stage('Build') {
            steps { 
                git credentialsId: 'f0ab9fe7-fa13-4588-85a6-9395ecf17598', url: 'https://github.com/khaled-ghazal/orange.git'
            }
        }
        stage('Test') {
            steps { 
                sh 'docker build -t Jenkins_Pip_docker .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo creation done is completed'
            }
        }
    }
}
