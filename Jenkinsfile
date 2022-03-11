pipeline{
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }
  stages{
    stage('terraform init'){
    steps{
    withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: "credentials-id-here",
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
   ]]) {
   
        sh "terraform init"
    }
   }
      
  }

  
stage('terraform apply'){
  steps{
    withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: "credentials-id-here",
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
   ]]) {
        sh "terraform apply -auto-approve"
      }
   }
    }

  }
}

def getTerraformPath(){
  def tfHome = tool name: 'terraform', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
  return tfHome
}
