withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
    // some block
    }

pipeline {
    agent any

    stages {
      stage('terraform started') {
        steps {
            sh 'echo "Started...!" '
        }
      }
      
      stage('terraform init') {
        steps {
            dir('/var/lib/jenkins/workspace/terraformbuild/Sample') {
            sh "pwd"
            sh "sudo ./terraform init"
            }
        }
      }
      stage('terraform plan') {
        steps {
            dir('/var/lib/jenkins/workspace/terraformbuild/Sample') {
            sh 'sudo ./terraform plan'
            }
        }
      }
      stage('terraform apply') {
        steps {
            dir('/var/lib/jenkins/workspace/terraformbuild/Sample') {
            sh "sudo ./terraform apply -auto-approve"
            }
        }
      }
      stage('terraform ended') {
        steps {
            sh 'echo "terraform sucessfully provisoned" '
        }
      }
   
    }
     
   
}
