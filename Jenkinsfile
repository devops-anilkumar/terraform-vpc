pipeline {
    agent any
    parameters {
    parameters { choice(name: 'ENV', choices: ['dev','prod'], description: 'chose the environment') }
    parameters { choice(name: 'ACTION', choices: ['apply','destroy'], description: 'chose apply or destroy') }
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
                stage('Terraform apply') {
            steps {
             sh "terraform apply -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"  
            }
        }
    }
}