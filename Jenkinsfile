pipeline {
    agent any

    stages {
        stage('Source code') {
            steps {
                echo 'Cloning the project'
                git branch: 'main', credentialsId: 'VikGitHub', url: 'https://github.com/nagvikramjit/pilot-repo'
            }
        }
        stage('Check files') {
            steps {
                echo 'Checking files and folders'
                ls -la
            }
        }
    }
}
