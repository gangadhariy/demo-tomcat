pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                // Navigate into the cloned repository and build with Maven
                sh '''
                    mvn clean verify sonar:sonar \
                        -Dsonar.projectKey=demo \
                        -Dsonar.projectName="demo" \
                        -Dsonar.host.url=http://20.51.204.194:9000 \
                        -Dsonar.token=sqp_bbb8fee8e8be66c4587b507bfa51381d01a1f0c7
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
