pipeline {
    agent any
    parameters {
        choice(name: 'ENV', choices: ['dev','prod'], description: 'chose the environment') 
        choice(name: 'ACTION', choices: ['apply','destroy'], description: 'chose apply or destroy') 
    }
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Terraform init') {
            steps {
              sh "terrafile -f env-${ENV}/Terrafile"
              sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
                stage('Terraform plan') {
            steps {
             sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"     
            }
        }
                stage('Terraform apply/destroy') {
            steps {
             sh "terraform ${ACTION} -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"  
            }
        }
    }
}