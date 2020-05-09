pipeline {
     agent any
     stages {
         stage('Lint HTML') {
              steps {
                  sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
              }
         }     
     }
}
