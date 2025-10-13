pipeline {
  agent any

  environment {
    DOCKER_HUB_CREDENTIALS = credentials('dockerhub-creds')
    IMAGE_NAME = "kabilan2003/temp"
  }

  stages {
    stage('Check out the git repository') {
      steps {
        git branch: 'main', url: 'https://github.com/Kabilan2370/Deploy-a-node-js-application-push-into-the-dockerhub-registry.git'
      }
    }
    stage ('Build the docker images'){
      steps {
        sh "docker build -t kabilan2003/temp:${BUILD_NUMBER} ."
      }
    }
    stage('login and push the image into hub') {
      steps {
        sh """
                    echo ${DOCKER_HUB_CREDENTIALS_PSW} | docker login -u ${DOCKER_HUB_CREDENTIALS_USR} --password-stdin
                    docker push ${IMAGE_NAME}:${BUILD_NUMBER}
                """
      }
    }
  }
}
