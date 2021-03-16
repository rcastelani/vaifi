pipeline{
    agent any
    
    environment {
      // credenciais aws
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    
    stages{
        stage("Git checkout"){
            steps{
                //branco no main repo
                git branch: 'main', url: 'https://github.com/rcastelani/vaifi.git'
                sh 'pwd '
            }
        }
        stage('Init Terraform'){
            steps{
              // inicia terraform no path
                sh label: '', script: 'terraform init'
            }
        }   
        stage('Apply Terraform'){
            steps{
              // apply terraform com auto approve
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}
