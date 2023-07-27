
peline {
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
                sh 'docker build -t khaled-ghazal/orange-httpd:omar .'
              }
            }
        }
        stage('Push') {
            steps {
               script { 
                sh 'docker push khaled-ghazal/orange-httpd:omar' 
               }
            }
        }
    }
}
