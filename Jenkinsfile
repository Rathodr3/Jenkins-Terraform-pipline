pipeline {
    agent any
    stages{
        stage('checkout'){
            steps{
            checkout scm
            }
        }
        stage ("terraform init"){
            steps {
                sh('terraform init -reconfigure')
            }
        }

        stage ("terraform plan"){
            steps {
                sh('terraform plan')
            }
        }

        stage ("terraform action"){
            steps {
                echo "terraform action is -->${action}"
                sh ('terraform ${action} --auto-aapprove')
            }
        }
    
    }

}