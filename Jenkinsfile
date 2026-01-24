pipeline {
  agent any
  stages {

    stage('Checkout Code') {
      steps {
        git 'https://github.com/Sonie03/aws-devops-ci-cd-mini-project-1.git'
      }
    }
    stage('Terraform Provision') {
      Steps {
        sh '''
          cd terraform
          terraform init
          terraform apply -auto-approve
          '''
      }
    }
    stage('Configure server using ansible') {
      steps {
        sh'''
        ansible-playbook ansible/install_nginx.yml -i inventory
        '''
      }
    }
    stage('Health check') {
      steps {
        sh 'bash scripts/health_check.sh'
      }
    }
  }
}
        
