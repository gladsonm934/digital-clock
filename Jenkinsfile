pipeline{
  agent any
  stages{
    stage('CHECK OUT'){
          steps{
              git url: 'https://github.com/gladsonm934/digital-clock.git'
          }
    }
          stage('clone'){
            steps{
              ehco "Cloning source..."
              checkout scm
            }
          }
          stage('Building Docker Image'){
            steps{
              script{
                dockderImage = docker.build("digital-clock")
              }
            }
          }
    stage('Run Docker container'){
      steps{
        script{
          sh "docker rm -f digital-clock || true"
          sh "docker run -d --name digital-clock -p 8084:80 digital-clock"
        }
      }
    }
  }
  post{
    success{
      echo 'DEployment successful. visit: http://http://localhost:8084'
    }
  }
}
