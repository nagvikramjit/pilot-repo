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
                sh 'ls -la'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
//                 sh 'pip3 install -r requirements.txt'
//                 sh 'python3 main.py'
                withCredentials([sshUserPrivateKey(credentialsId: 'london-keypair-ssh', keyFileVariable: 'keyfile', usernameVariable: 'user-name')]) {
                    // some block
                    sh "ssh -i ${keyfile} ${user-name}@18.133.225.230 ls -la"
                }
            }
        }
    }
}
