pipeline {
     agent any
     stages {
         stage('Lint HTML') {
              steps {
                  sh 'hadolint Dockerfile'
              }
         }     
     }
}
