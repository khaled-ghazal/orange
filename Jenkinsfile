
pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
 
               git branch: 'main', credentialsId: 'bf7474bd-4500-429e-9440-6eb8dce85d9e', url: 'https://github.com/khaled-ghazal/orange.git' 

            }
        }
        stage('Build') {
            steps { 
              script {
                sh 'docker build -t khaledghazal/orange-httpd:${BUILD_NUMBER} .'
              }
            }
        }
        stage('Push') {
            steps {
               script { 
                sh 'cat pas.txt | docker login --username khaledghazal --password-stdin'
                sh 'docker push khaledghazal/orange-httpd:omar' 
               }
            }
        }

        stage('KubeDeploy') {
            steps {
               script {
                sh 'kubectl apply -f . --kubeconfig kubeconfig'
               }
            }
        }



    }
}
