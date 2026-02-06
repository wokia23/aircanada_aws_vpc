pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    
        environment {
        //Credentials for Prod environment
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') 
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'cloning code base to jenkins server'
                echo 'testing CICD pipeline using jenkinsfile'
                git branch: 'main', credentialsId: '97c2abc2-8422-403c-9790-cb4ffc8acdfe', url: 'https://github.com/wokia23/aircanada_aws_vpc.git'
                sh 'ls'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('terraform action to apply or destroy plan') {
            steps {
                sh 'terraform ${action} --auto-approve'
            }
        }
    }
}
