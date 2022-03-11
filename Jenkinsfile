pipeline{
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }
  stages{
    stage('terraform init'){
      steps{
        sh "terraform init"
      }
    }
	stage('terraform apply'){
      steps{
        sh "terraform apply -auto-approve"
      }
    }

  }
}

def getTerraformPath(){
  def tfHome = tool name: 'terraform', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
  return tfHome
}
