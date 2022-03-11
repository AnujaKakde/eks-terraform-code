pipeline{
  agent any
  //environment {
  //  PATH = "${PATH}:${getTerraformPath()}"
  //}
  stages{
    stage('terraform init'){
    steps{
    withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: "AWS_ROOT_KEY",
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
   ]]) {
        bat "terraform init"
    }
   }
      
  }

  
stage('terraform apply'){
  steps{
    withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: "AWS_ROOT_KEY",
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
   ]]) {
        bat "terraform apply -auto-approve"
      }
   }
    }

  }
}


