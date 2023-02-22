pipeline {
  agent {
    node {
      label 'slave'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'docker build -t myimg ./aspnet/ '
      }
    }

    stage('deploy') {
      steps {
        sh 'docker run --rm -d -p 80:80 myimg'
      }
    }

  }
}