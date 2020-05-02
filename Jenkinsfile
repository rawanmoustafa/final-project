pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }
         stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }      
         stage('Upload to AWS') {
              steps {
                  withAWS(region:'us-east-2',credentials:'	e4dbc0b6-8ddd-41ec-aca7-27f51f5d90ed') {
                  sh 'echo "Uploading content with AWS creds"'
                      s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'rawan-bucket-95')
                  }
              }
         }
     }
}
