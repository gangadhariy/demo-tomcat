pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                // Navigate into the cloned repository and build with Maven
                sh '''
                    cd DevOps-K8s-Security
                    mvn clean verify sonar:sonar \
                        -Dsonar.projectKey=test \
                        -Dsonar.projectName="test" \
                        -Dsonar.host.url=http://20.51.204.194:9000 \
                        -Dsonar.token=sqp_47d0ce4fcd97980f07ac3c717b69af91182216de
                '''
            }
        }
    }

    post {
        success {
            // Actions to perform on successful build
            echo 'Build and SonarQube analysis succeeded!'
        }
        failure {
            // Actions to perform on build failure
            echo 'Build or SonarQube analysis failed!'
        }
    }
}
